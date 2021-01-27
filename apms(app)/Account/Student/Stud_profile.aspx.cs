using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace apms_app_.Account.Student
{
    public partial class Stud_profile : System.Web.UI.Page
    {
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Session["username"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stud_home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            MySqlCommand cmd = new MySqlCommand("insert into Student(S_nm,class,prn,S_mob,username) values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+username+"')", con);
            con.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                Response.Write("You are already registered");
            }
            finally
            {
                con.Close();
              
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}