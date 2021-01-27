using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;
using System.Data;

namespace apms_app_.Account.Guide
{
    public partial class Groups : System.Web.UI.Page
    {
        string username;
        string path;
        string g;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Session["username"].ToString();
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            using (con)
            {
                con.Open();
                string str = ("select G_id from Guidegroup,Guide where Guide.Guide_Emp_id=GuideGroup.Guide_Emp_id and Guide.username='" + username + "'");
                MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                GroupDetails.DataSource = dtb1;
                GroupDetails.DataBind();

            }
        }
       
        protected void Button2_Click1(object sender, EventArgs e)
        {
           g = TextBox1.Text;
             path = ("~/Data/" + g + "/");


            DataTable dt = new DataTable();
            dt.Columns.Add("File");
            dt.Columns.Add("Size");
            dt.Columns.Add("Type");

            username = Session["username"].ToString();

            foreach (string strfile in Directory.GetFiles(Server.MapPath(path)))
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            g = TextBox1.Text;
            path = ("~/Data/" + g + "/");
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "filename="
                + e.CommandArgument);
            Response.TransmitFile(Server.MapPath(path)
                + e.CommandArgument);
            Response.End();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            MySqlCommand cmd = new MySqlCommand("insert into Project(G_id,proj_comments,file_nm) values('" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
            con.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception) { }

        }
    }
}
     