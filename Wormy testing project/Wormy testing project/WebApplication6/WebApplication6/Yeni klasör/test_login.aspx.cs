using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6.Yeni_klasör
{
    public partial class test_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
                Response.Redirect("./frontend-rneklibrary-jssizkod/index2.aspx");
            else if (!IsPostBack)
                Label1.Enabled = false;
                Session["ID"] = null;
        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            String PassCheck = "Select * from Users where username = @username and pass = @password";
            SqlDataAdapter da = new SqlDataAdapter(PassCheck, con);
            da.SelectCommand.Parameters.AddWithValue("@username", txtUsername.Value);
            da.SelectCommand.Parameters.AddWithValue("@password", txtPassword.Value);
            DataSet ds = new DataSet();
            da.Fill(ds, "Users");
            if (ds.Tables[0].Rows.Count >= 1)
            {
                DataRow dr = ds.Tables["Users"].Rows[0];
                Session["ID"] = dr["ID"];
                Response.Redirect("../Yeni klasör/frontend-rneklibrary-jssizkod/index2.aspx"); //make it into aspx, also make sure he fixes the logout button
            }
            else
            {
                Label1.Enabled = true;
                Label1.Text = "Wrong Username or password.";
                Label1.ForeColor= System.Drawing.Color.Red;
            }
        }
    }
}