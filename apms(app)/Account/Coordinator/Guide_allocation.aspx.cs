using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace apms_app_.Account.Coordinator
{
    public partial class Guide_allocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            using (con)
            {
                con.Open();

                string str = ("select * from s_group");
                MySqlCommand cmd = new MySqlCommand(str, con);

                MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                Groups.DataSource = dtb1;
                Groups.DataBind();
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GroupDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            using (con)
            {
                con.Open();

                string str = ("select * from Guide");
                MySqlCommand cmd = new MySqlCommand(str, con);

                MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                Guides.DataSource = dtb1;
                Guides.DataBind();
            }

        }

     /*   protected void Button3_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            con.Open();
            string str="select G_id  from S_group where Allo_guide=0";
            MySqlCommand cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr = cmd.ExecuteReader();

            sdr.Read();
            int grpid=new List<int> sdr.Read();
            foreach (int element in sdr.Read())
        
            

        }
        */

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            MySqlCommand cmd;
            try {
                con.Open();
                cmd = new MySqlCommand("insert into GuideGroup(Guide_Emp_id,G_id) values('" + TextBox2.Text + "','" + TextBox1.Text + "')", con);
                cmd.ExecuteNonQuery();
                cmd = new MySqlCommand("Update s_group set allo_Guide='" + TextBox2.Text + "' where G_id='" + TextBox1.Text + "'", con);
                cmd.ExecuteNonQuery();
                MySqlCommand cmd2 = new MySqlCommand("Update Guide set no_groups=no_groups+1  where Guide_Emp_id='" + TextBox2.Text + "'", con);
                cmd2.ExecuteNonQuery();
            }
            catch (Exception)
            {
                Response.Write("Guide or Group is already assigned ");
            }

            string str = ("select * from Guide");
             cmd = new MySqlCommand(str, con);

            MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
            DataTable dtb1 = new DataTable();
            sda.Fill(dtb1);
            Guides.DataSource = dtb1;
            Guides.DataBind();


            str = ("select * from s_group");
            cmd = new MySqlCommand(str, con);

             sda = new MySqlDataAdapter(str, con);
            dtb1 = new DataTable();
            sda.Fill(dtb1);
            Groups.DataSource = dtb1;
            Groups.DataBind();

            {

            }


            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
        }
    }
}