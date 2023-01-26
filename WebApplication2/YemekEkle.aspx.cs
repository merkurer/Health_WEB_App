using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class YemekEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Geri_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Ana_Sayfa.aspx");
        }

        protected void Cikis_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Giris.aspx");
        }

        protected void YemekAra_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kac_Kalori.aspx");
        }

        protected void YemekEkle_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("YemekEkle.aspx");
        }

        protected void Kaydet_Button_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=MERKURER\\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=Health\r\n";
            string sql = "INSERT INTO [Foods] (yemek_adi, kalori, karbonhidrat, protein, yag) VALUES (@value1, @value2, @value3, @value4, @value5)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                float kalori = (float)Convert.ToDouble(kalorilab.Text);
                float karbonhidrat = (float)Convert.ToDouble(karbonhidratlab.Text);
                float protein = (float)Convert.ToDouble(proteinlab.Text);
                float yag = (float)Convert.ToDouble(yaglab.Text);

                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@value1", yemeklab.Text);
                    command.Parameters.AddWithValue("@value2", kalori);
                    command.Parameters.AddWithValue("@value3", karbonhidrat);
                    command.Parameters.AddWithValue("@value4", protein);
                    command.Parameters.AddWithValue("@value5", yag);
                    command.ExecuteNonQuery();
                }
            }
            Response.Redirect("YemekEkle.aspx");
        }
    }
}