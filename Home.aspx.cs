using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace sql_server_database_connection
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\dotnet\sql_server_database_connection\App_Data\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            disp_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into student values('" + fname.Text + "','" + lname.Text + "','" + city.Text + "')";
            cmd.ExecuteNonQuery();

            fname.Text = "";
            lname.Text = "";
            city.Text = "";

            disp_data();
        }

        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from student";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from student where firstname='" + fname.Text + "'";
            cmd.ExecuteNonQuery();

            fname.Text = "";
            disp_data();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update student set firstname='" + fname.Text + "',lastname='" + lname.Text + "',city='" + city.Text + "' where id=" + Convert.ToInt32(id.Text) + "";
            cmd.ExecuteNonQuery();

            fname.Text = "";
            lname.Text = "";
            city.Text = "";

            id.Text = "";

            disp_data();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            disp_data();
        }
    }
}