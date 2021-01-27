using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace apms_app_.Account.Coordinator
{
    public partial class co_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            MySqlCommand cmd = new MySqlCommand("insert into coordinator(Co_nm,Co_Emp_id,username) values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + username + "')", con);
            con.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                Response.Write("You are already registered");
            }
            con.Close();
            Response.Redirect("co_home.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("co_home.aspx");
        }
    }
}