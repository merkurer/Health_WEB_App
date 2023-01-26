using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Kayit_Ol_Button_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=MERKURER\\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=Health\r\n";
            string sql = "INSERT INTO [Users] (isim, soyisim, yas, mail, sifre, boy, kilo, cinsiyet, hedefkilo, hareket_orani) VALUES (@value1, @value2, @value3, @value4, @value5, @value6, @value7, @value8, @value9, @value10)";
            string adlab = Request.QueryString["Data"];
            string[] words = adlab.Split(' ');
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@value1", words[0]);
                    command.Parameters.AddWithValue("@value2", words[1]);
                    command.Parameters.AddWithValue("@value3", words[2]);
                    command.Parameters.AddWithValue("@value4", words[3]);
                    command.Parameters.AddWithValue("@value5", words[4]);
                    command.Parameters.AddWithValue("@value6", boy.Text);
                    command.Parameters.AddWithValue("@value7", kilo.Text);
                    command.Parameters.AddWithValue("@value8", cinsiyet.Text);
                    command.Parameters.AddWithValue("@value9", hedef_kilo.Text);
                    command.Parameters.AddWithValue("@value10", DropDownList1.Text);
                    command.ExecuteNonQuery();
                }
            }
            Response.Redirect("Giris.aspx");
        }
    }
}