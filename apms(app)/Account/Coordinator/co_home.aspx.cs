using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace apms_app_.Account.Coordinator
{
    public partial class co_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];
            //          string password= Request.QueryString["password"];
            string role = Request.QueryString["role"];

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("co_profile.aspx");

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("~/Home.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Guide_allocation.aspx");

        }
    }
}