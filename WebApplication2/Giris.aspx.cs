using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Giris_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=MERKURER\\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=Health\r\n";
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                string uid = Mail.Text;
                string pass = Sifre.Text;
                con.Open();
                string qry = "select * from [Users] where mail='" + uid + "' and sifre='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Write("Login Sucess......!!");
                    Response.Redirect("Ana_Sayfa.aspx?Data=" + Server.UrlEncode("Geldiniz!"));
                }
                else
                {
                    Response.Write("UserId & Password Is not correct Try again..!!");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
