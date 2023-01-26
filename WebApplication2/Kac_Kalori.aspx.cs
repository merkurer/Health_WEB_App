using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Common;

namespace WebApplication2
{
    public partial class WebForm4 : System.Web.UI.Page
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
        
        protected void Hesapla_Button_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=MERKURER\\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=Health\r\n";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string yemek = yemeklab.Text;
                float gram = (float)Convert.ToDouble(gramlab.Text);
                string sql = "SELECT [kalori], [karbonhidrat], [protein], [yag] FROM [Foods] WHERE [yemek_adi] = '" + yemek + "'";
                SqlCommand oCmd = new SqlCommand(sql, connection);
                using (SqlDataReader oReader = oCmd.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        float oran = gram/100;
                        float kalori = (float)Math.Round((float)Convert.ToDouble(oReader["kalori"].ToString()) * oran, 2);
                        float karbonhidrat = (float)Math.Round((float)Convert.ToDouble(oReader["karbonhidrat"].ToString()) * oran, 2);
                        float protein = (float)Math.Round((float)Convert.ToDouble(oReader["protein"].ToString()) * oran, 2);
                        float yag = (float)Math.Round((float)Convert.ToDouble(oReader["yag"].ToString()) * oran, 2);
                        Kalorilab.Text = "Kalori: " + kalori;
                        Karbonhidratlab.Text = "Karbonhidrat: " + karbonhidrat;
                        Proteinlab.Text = "Protein: " + protein;
                        Yaglab.Text = "Yag: " + yag;
                    }
                    connection.Close();
                }

            }
        }
        protected void YemekListeEkle_Button_Click(object sender, EventArgs e)
        {
            
        }

    }
}