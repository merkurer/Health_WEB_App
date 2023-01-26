using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm5 : System.Web.UI.Page
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

        protected void BKI_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hesaplamalar.aspx");
        }

        protected void Idealkilo_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Idealkilo.aspx");
        }

        protected void MetabolizmaHizi_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("MetabolizmaHizi.aspx");
        }

        protected void YagOrani_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("YagOrani.aspx");
        }

        protected void KalcaOrani_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("KalcaOrani.aspx");
        }

        protected void MinKalori_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("MinKalori.aspx");
        }

        protected void MinProtein_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("MinProtein.aspx");
        }

        protected void Hesapla_Button_Click(object sender, EventArgs e)
        {
            int boy = Convert.ToInt32(boylab.Text);
            int kilo = Convert.ToInt32(kilolab.Text);
            float temp = (float)boy * (float)boy / (float)10000; 
            float BKI = (float)kilo / temp;
            Label1.Text = "Sonuç: " + BKI;
            if (BKI < 18.5)
            {
                Label2.Text = "Kilo Durumun: Zayıf";
            }
            else if (BKI < 25)
            {
                Label2.Text = "Kilo Durumun: Normal";
            }
            else if (BKI < 30)
            {
                Label2.Text = "Kilo Durumun: Fazla Kilolu";
            }
            else if (BKI < 40)
            {
                Label2.Text = "Kilo Durumun: Obez";
            }
            else if (BKI < 50)
            {
                Label2.Text = "Kilo Durumun: Morbid Obez";
            }
            else
            {
                Label2.Text = "Kilo Durumun: Süper Obez";
            }
        }
    }
}