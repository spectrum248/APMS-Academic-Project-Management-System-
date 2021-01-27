using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace apms_app_.Account.Student
{
    public partial class Stud_group : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
        protected void Page_Load(object sender, EventArgs e)
        {
            using (con)
            {
                con.Open();

                string str = ("select assign_g_id from assignvalue  where no = 1");
                MySqlCommand cmd = new MySqlCommand(str, con);
                MySqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                int temp = sdr.GetInt32(0);
                sdr.Close();

                string username = Session["username"].ToString();
                
               // str = "select prn from student where username = '" + username + "'";
                //cmd = new MySqlCommand(str, con);
               // sdr = cmd.ExecuteReader();
                //sdr.Read();
               // int prn = sdr.GetInt32(0);
              //  sdr.Close();
                str = "update student set g_id='" + temp + "' where username = '" + username + "'";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();

                str = "select S_nm, PRN, g_id from student where g_id = "+temp+"";

                MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                GroupDetails.DataSource = dtb1;
                GroupDetails.DataBind();
            }
        }

        protected void GroupDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stud_home.aspx");
        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("~/Home.aspx");
        }
    }

 
    
}