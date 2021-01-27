using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
namespace apms_app_
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root; pwd=shri@1234;persistsecurityinfo = True; database = auto");
            using (con)
            {
                con.Open();
                string domain = DropDownList2.SelectedValue;
                string year = TextBox1.Text;
                string str = ("select * from History where domain='" + domain + "'and year=" + year + "");
                MySqlDataAdapter sda = new MySqlDataAdapter(str, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                History_search.DataSource = dtb1;
                History_search.DataBind();
            }

        }
        
        protected void History_search_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}