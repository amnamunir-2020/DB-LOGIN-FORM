using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace LoginFormLNE
{
    public partial class LOGIN : System.Web.UI.Page
    {
       // String cs = ConfigurationManager.ConnectionStrings["dbms"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-GJF4KSU;Initial Catalog=INFORMATION;Integrated Security=True;");
            con.Open();
            string query = "select * from tbl_login where username=@user and password=@pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user",UserTextBox.Text);
            cmd.Parameters.AddWithValue("@pass",PasswordTextBox.Text );
            // kaheen par syntax error hai !!! 
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["user"] = UserTextBox.Text;
                // Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts","<script>alert('Login Successfully!')</script>");
                Response.Redirect("DASHBOARD.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed!')</script>");
            
        }
            con.Close();
;
        }
    }
}