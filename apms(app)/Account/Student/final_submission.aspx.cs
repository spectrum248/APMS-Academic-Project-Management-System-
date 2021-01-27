using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace apms_app_
{
    public partial class final_submission : System.Web.UI.Page
    {
        static string fileName;
        static Boolean flag = false;
        static string str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != ""&&flag==true)
            {

                MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
                MySqlCommand cmd = new MySqlCommand("insert into history(G_id,Domain,Project_title,year,report_nm) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + str + "')", con);
                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch(Exception)
                {
                    Response.Write("Filename should be unique change file name");
                    Button2.Visible = true;
                }
                con.Close();
                Response.Write("Data uploaded sucessfully");

            }
            else
                Response.Write("Fill the all fields");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            // con.Open();
            // string str = "select Report_nm from history where Report_nm='" +FileUpload1.FileName + "'";
            //MySqlCommand cmd = new MySqlCommand(str, con);
            //  str = (String)cmd.ExecuteScalar(); 
            Boolean flag1 = true;
   //         final_submission.str = @"~/Records/" + FileUpload1.FileName;
            Response.Write(str);
            if(File.Exists(str))
            {
                flag1 = false;
                Response.Write("The file name should be uniqu plese add or delete some character into filename");
            }

            if (FileUpload1.HasFile && flag1==true)
            {
                
                final_submission.fileName = FileUpload1.FileName;
                FileUpload1.PostedFile
                    .SaveAs(Server.MapPath("~/Account/Coordinator/Records/") + fileName);
                final_submission.str = "Records/" + FileUpload1.FileName;

                final_submission.flag = true;
                Button2.Visible = false;
             //   Label5.Text = "File uploaded sucessfully";
                FileUpload1.Visible = false;
             
            }

            else
                Response.Write("Upload the file ");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            TextBox2.Text = TextBox2.Text.ToUpper();

        }
    }
}