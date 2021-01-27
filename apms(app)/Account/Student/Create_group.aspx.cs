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

    public partial class Create_group : System.Web.UI.Page
    {
        int temp;
        static string str;
        public static int flag = 0;
        MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
        // protected static void incre(){}
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            
            using (con)
            {
                con.Open();
                if (flag == 0)
                {
                    // MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");

                    str = "update assignvalue set assign_g_id=assign_g_id+1 where no=1";
                    MySqlCommand cmd = new MySqlCommand(str, con);
                    cmd.ExecuteNonQuery();

                    str = ("select assign_g_id from assignvalue  where no = 1");
                    cmd = new MySqlCommand(str, con);
                    MySqlDataReader sdr = cmd.ExecuteReader();
                    sdr.Read();
                    temp = sdr.GetInt32(0);
                    sdr.Close();

                    flag = 1;
                    str = "update student set g_id='" + temp + "'where username='" + username + "'";
                    cmd = new MySqlCommand(str, con);
                    cmd.ExecuteNonQuery();

                    str = "select S_nm, PRN, g_id from student where g_id = " + temp + "";
                    
                    MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                    DataTable dtb1 = new DataTable();
                    sda.Fill(dtb1);
                    GroupDetails.DataSource = dtb1;
                    GroupDetails.DataBind();
                    
                   // str = "select prn from student where username = '" + username + "'";
                  //  cmd = new MySqlCommand(str, con);
                  //  MySqlDataReader sdr1 = cmd.ExecuteReader();
                  //  sdr1.Read();
                   
                   // string prn = Convert.ToString(sdr1.GetInt32(0));
                  //  sdr1.Close();
                    str = "update student set g_id='" + temp + "'where username='" +username+ "'";
                    cmd = new MySqlCommand(str, con);
                    cmd.ExecuteNonQuery();

                }
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            
            str = ("select assign_g_id from assignvalue  where no = 1");
            MySqlCommand cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();

            temp = sdr.GetInt32(0);
            sdr.Close();
            Response.Write(temp);
            str = "select * from Student where prn='" + TextBox3.Text + "'";
            cmd = new MySqlCommand(str, con);
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                sdr.Close();
                str = "select g_id from Student where prn='" + TextBox3.Text + "'";
                cmd = new MySqlCommand(str, con);
                sdr = cmd.ExecuteReader();
                sdr.Read();
                try
                {
                    int st = sdr.GetInt32(0);
                    Response.Write("Student is already in another group");

                }
                catch (System.Data.SqlTypes.SqlNullValueException)
                { }
                finally
                {
                    sdr.Close();
                    str = ("select assign_g_id from assignvalue  where no = 1");
                    cmd = new MySqlCommand(str, con);
                    sdr = cmd.ExecuteReader();
                    sdr.Read();
                    temp = sdr.GetInt32(0);
                    sdr.Close();
                    string str1 = "update student set g_id=" + temp + " where prn='" + TextBox3.Text + "'";
                    cmd = new MySqlCommand(str1, con);
                    cmd.ExecuteNonQuery();

                    flag = 1;
                    str = "select S_nm, PRN, g_id from student where g_id = " + temp + "";

                    MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                    DataTable dtb1 = new DataTable();
                    sda.Fill(dtb1);
                    GroupDetails.DataSource = dtb1;
                    GroupDetails.DataBind();
                    sdr.Close();
                    con.Close();
                }
                
               
            }
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            str = "select g_id from Student where prn='" + TextBox3.Text + "'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            int st = sdr.GetInt32(0);
            sdr.Close();
            str = ("select assign_g_id from assignvalue  where no = 1");
            cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr1 = cmd.ExecuteReader();
            sdr1.Read();
            int st1 = sdr1.GetInt32(0);
            sdr1.Close();
            if (st1==st)
            {
                str = "update student set g_id=null where prn=" + TextBox3.Text + "";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write(""+TextBox3.Text+" is Removed from "+st1+"");
                str = ("select assign_g_id from assignvalue  where no = 1");
                cmd = new MySqlCommand(str, con);
                sdr = cmd.ExecuteReader();
                sdr.Read();
                temp = sdr.GetInt32(0);
                sdr.Close();

                flag = 1;
                str = "select S_nm, PRN, g_id from student where g_id = " + temp + "";

                MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                GroupDetails.DataSource = dtb1;
                GroupDetails.DataBind();

            }
            else
            {
                Response.Write("This Student Not part of the "+st1+" Group");
            }
        
        }

        protected void GroupDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GroupDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            str = ("select assign_g_id from assignvalue  where no = 1");
            MySqlCommand cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            temp = sdr.GetInt32(0);
            sdr.Close();

             cmd = new MySqlCommand("insert into S_group(G_id,project_nm,Group_domain) values(" + temp + ",'" + TextBox4.Text + "','" + TextBox2.Text+"')",con);
            cmd.ExecuteNonQuery();
            flag = 0;
        }
    }

}