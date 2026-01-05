using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6.Yeni_klasör.frontend_rneklibrary_jssizkod
{
    public partial class CartGV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
                Response.Redirect("../frontend-rneklibrary-jssizkod/index.aspx"); //fix to aspx instead of html
            else
            fillGV1();
           
        }
        private DataTable getData(string selectQuery)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter(selectQuery, con);
                da.SelectCommand.Parameters.AddWithValue("@userID", Session["ID"]);
                DataSet ds = new DataSet();
                da.Fill(ds, "Table");
                return ds.Tables["Table"];
            }
        }
        private void fillGV1()
        {
            string selectQuery = "select books.bookID, books.book_name, books.price from inCart, books where inCart.bookID = books.bookID and inCart.ID = @userID";
            DataSet ds1 = new DataSet();
            DataTable dt = getData(selectQuery).Copy();
            ds1.Tables.Add(dt);
            ds1.Tables[0].PrimaryKey = new DataColumn[] { ds1.Tables["Table"].Columns["bookID"], };
            if (dt.Rows.Count > 0)
            {
                GridView1.Visible = true;
                Session["dataset"] = ds1;
                GridView1.DataSource = ds1;
                GridView1.DataBind();
                txtStatus.Text = "";
            }
            else
            {
                txtStatus.Text = "Cart is empty";
                GridView1.Visible = false;
            }
        }
        protected void btnLogout_ServerClick(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Response.Redirect("../frontend-rneklibrary-jssizkod/index.aspx"); //fix to aspx instead of html
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (Session["dataset"] != null)
            {
                DataSet ds = (DataSet)Session["dataset"];
                DataRow dr = ds.Tables["Table"].Rows.Find(e.Keys["bookID"]);
                dr.Delete();
                Session["dataset"] = ds;
                //start of delete cmd
                string connectionString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                string selectQuery = "select books.bookID, books.book_name, books.price from inCart, books where inCart.bookID = books.bookID and inCart.ID = @userID";
                SqlDataAdapter dataAdapter = new SqlDataAdapter(selectQuery, connection);
                string strDeleteCommand = "Delete from inCart where bookID = @bookID";
                SqlCommand deleteCommand = new SqlCommand(strDeleteCommand, connection);
                deleteCommand.Parameters.Add("@bookID", SqlDbType.Int, 0, "bookID");
                dataAdapter.DeleteCommand = deleteCommand;
                dataAdapter.Update((DataSet)Session["dataset"], "Table");

                // end of delete cmd
                GridView1.EditIndex = -1;
                fillGV1();
                if (ds.Tables["Table"].Rows.Count == 0)
                    Session["dataset"] = null;
            }
        }
    }
}