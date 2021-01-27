using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace apms_app_
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && RadioButtonList1.SelectedValue != "")
            {

                MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
                MySqlCommand cmd = new MySqlCommand("insert into registration(username,email,password,role) values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButtonList1.SelectedValue + "')", con);
                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception) { }
                Session["username"] = TextBox2.Text;
                if (RadioButtonList1.SelectedValue == "Student")
                    Response.Redirect("/Account/Student/Stud_Profile.aspx");
                else if (RadioButtonList1.SelectedValue == "Guide")
                    Response.Redirect("/Account/Guide/Guide_profile.aspx");
                else if (RadioButtonList1.SelectedValue == "Coordinator")
                    Response.Redirect("/Account/Coordinator/co_profile.aspx");
                
            else
                Response.Write("Incorrect Username and password");
                con.Close();
            }
            else
                Response.Write("Fill the fields");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}