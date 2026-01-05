using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6.Yeni_klasör
{
    public partial class test_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["ID"] != null)
                Response.Redirect("./frontend-rneklibrary-jssizkod/index2.aspx");
        }

        protected void btnSignUp_ServerClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string InsertQuery = "insert into users values(@username,@firstname,@lastname,@email,@pass)";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(InsertQuery, con);
                    cmd.Parameters.AddWithValue("@username", txtUsername.Value);
                    cmd.Parameters.AddWithValue("@firstname", txtName.Value);
                    cmd.Parameters.AddWithValue("@lastname", txtSurname.Value);
                    cmd.Parameters.AddWithValue("@email", txtMail.Value);
                    cmd.Parameters.AddWithValue("@pass", txtPassword.Value);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("../Yeni klasör/test_login.aspx");
                }
            }
            else
            {
                LabelValid.Visible = true;
            }



        }

        protected void CustomValidatorUser_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "")
            {
                args.IsValid = false;
            }
            else
            {
                string usernamecheck = args.Value; // Assuming txtUsername is the textbox ID
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "SELECT COUNT(*) FROM users WHERE username = @username";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@username", usernamecheck);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    args.IsValid = (count == 0);
                }
            }

        }

        protected void CustomValidatorMail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "")
            {
                args.IsValid = false;
            }
            else
            {
                string usernamecheck = args.Value; // Assuming txtUsername is the textbox ID
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "SELECT COUNT(*) FROM users WHERE email = @email";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@email", usernamecheck);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    args.IsValid = (count == 0) && IsEmail(usernamecheck);
                }

            }
        }
        static bool IsEmail(string input)
        {
            string emailPattern = @"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$";
            Regex regex = new Regex(emailPattern);
            return regex.IsMatch(input);
        }
    }
}