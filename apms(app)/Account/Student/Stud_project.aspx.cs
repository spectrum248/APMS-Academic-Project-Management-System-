using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace apms_app_.Account.Student
{
    public partial class Stud_project : System.Web.UI.Page
    {
        static string path;
        string username;
        int p;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Session["username"].ToString();
        }
        
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Clear();
            // Response.ContentType = "application/octet-stream";
            // Response.AppendHeader("Content-Disposition", "filename="
            //     + e.CommandArgument);
            // Response.TransmitFile(Server.MapPath("~/Data/")
            //     + e.CommandArgument);
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "filename="
                + e.CommandArgument);
            Response.TransmitFile(Server.MapPath(Stud_project.path)
                + e.CommandArgument);

            Response.End();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
         
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            con.Open();
            string str = "select G_id from student where username='" + username + "'";
            using (MySqlCommand cmd = new MySqlCommand(str, con))
            {

                //MySqlDataReader sdr = cmd.ExecuteReader();
                //sdr.Read();
                p = Convert.ToInt32(cmd.ExecuteScalar());
                Response.Write(username);
            
            }   
            

            //String p = Convert.ToString(sdr.GetInt32(0));
            //sdr.Close();
            Stud_project.path =( "~/Data/" + p + "/");
            Response.Write(Stud_project.path);
            if (!System.IO.Directory.Exists(MapPath(Stud_project.path)))
            {
                System.IO.Directory.CreateDirectory((MapPath(Stud_project.path)));
                Response.Write("File created");
            }
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
               // FileUpload1.PostedFile
                //    .SaveAs(Server.MapPath("~/Data/") + fileName);
                FileUpload1.PostedFile
                   .SaveAs(Server.MapPath(Stud_project.path) + fileName);
            }

            DataTable dt = new DataTable();
            dt.Columns.Add("File");
            dt.Columns.Add("Size");
            dt.Columns.Add("Type");

            foreach (string strfile in Directory.GetFiles(Server.MapPath(Stud_project.path)))
            {
                FileInfo fi = new FileInfo(strfile);
                dt.Rows.Add(fi.Name, fi.Length.ToString(),
                    GetFileTypeByExtension(fi.Extension));
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        private string GetFileTypeByExtension(string fileExtension)
        {
            switch (fileExtension.ToLower())
            {
                case ".docx":
                case ".doc":
                    return "Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";
                case ".txt":
                    return "Text Document";
                case ".jpg":
                case ".png":
                    return "Image";
                default:
                    return "Unknown";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            using (con)
            {
                con.Open();
                string str = "select G_id from student where username='" + username + "'";
                using (MySqlCommand cmd = new MySqlCommand(str, con))
                {

                    //MySqlDataReader sdr = cmd.ExecuteReader();
                    //sdr.Read();
                    p = Convert.ToInt32(cmd.ExecuteScalar());
                    Response.Write(username);

                }
                string str1 = ("select file_nm,Proj_comments from Project where g_id="+p +"");
                MySqlDataAdapter sda = new MySqlDataAdapter(str1, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                comments.DataSource = dtb1;
                comments.DataBind();
            }

        }

        protected void comments_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    
}
