using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace apms_app_.Account.Student
{
    public partial class Stud_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = Session["username"];

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("Stud_group.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stud_profile.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stud_project.aspx");
        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("~/Home.aspx");
        }
    }
}