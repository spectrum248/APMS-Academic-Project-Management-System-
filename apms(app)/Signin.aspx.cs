using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace apms_app_
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        protected void Signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            con.Open();
            string str = "select * from registration where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'and role='" + RadioButtonList1.SelectedValue + "'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["username"] = TextBox1.Text;
                if (RadioButtonList1.SelectedValue == "Student")
                    Response.Redirect("/Account/Student/Stud_home.aspx?username=" + TextBox1.Text + "+role="+RadioButtonList1.SelectedValue);
                else if (RadioButtonList1.SelectedValue == "Guide")
                    Response.Redirect("/Account/Guide/Guide_home.aspx?username=" + TextBox1.Text + "role=" + RadioButtonList1.SelectedValue);
                else if (RadioButtonList1.SelectedValue == "Coordinator")
                    Response.Redirect("/Account/Coordinator/co_home.aspx?username=" + TextBox1.Text +"role=" + RadioButtonList1.SelectedValue);

            }
            else
                Response.Write("Incorrect Username and password");
            sdr.Close();
            con.Close();
            //   Response.Redirect(".aspx?value="+TextBox1.Text+"hhuu="+TextBox2.Text);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}