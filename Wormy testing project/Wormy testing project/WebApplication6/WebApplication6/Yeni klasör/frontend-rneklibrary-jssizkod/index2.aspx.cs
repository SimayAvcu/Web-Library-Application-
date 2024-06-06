using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6.Yeni_klasör.frontend_rneklibrary_jssizkod
{
    public partial class index2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ID"]==null)
               Response.Redirect("../frontend-rneklibrary-jssizkod/index.aspx"); //fix to aspx instead of html
        }

        protected void btnLogout_ServerClick(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Response.Redirect("../frontend-rneklibrary-jssizkod/index.aspx"); //fix to aspx instead of html
        }
    }
}