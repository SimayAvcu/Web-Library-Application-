using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6.Yeni_klasör
{
    public partial class brothers_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            Response.Redirect("../Yeni klasör/frontend-rneklibrary-jssizkod/index.aspx"); //fix to aspx instead of html
        }
        protected void btnLogout_ServerClick(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Response.Redirect("../Yeni klasör/frontend-rneklibrary-jssizkod/index.aspx"); //fix to aspx instead of html
        }

        protected void btnAddToCart_ServerClick(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string inCartCheck = "Select * from inCart where bookID=2 and ID=@ID";
            SqlDataAdapter da = new SqlDataAdapter(inCartCheck, con);
            da.SelectCommand.Parameters.AddWithValue("@ID", Session["ID"]);
            DataSet ds = new DataSet();
            da.Fill(ds, "Cart");
            if (ds.Tables[0].Rows.Count >= 1)
            {
                lblStatus.Text = "Book already in Cart";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                using (con)
                {
                    con.Open();
                    String insertQuery = "Insert into inCart values(@ID,2)";
                    SqlCommand cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("ID", Session["ID"]);
                    cmd.ExecuteNonQuery();
                    lblStatus.Text = "Book added to cart successfully!";
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
    }
}