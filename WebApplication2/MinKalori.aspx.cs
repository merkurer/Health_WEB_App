using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class MinKalori : System.Web.UI.Page
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
            int cinsiyet = Convert.ToInt32(DropDownList1.Text);
            int yas = Convert.ToInt32(yaslab.Text);
            int kilo = Convert.ToInt32(kilolab.Text);
            int boy = Convert.ToInt32(boylab.Text);
            int hareket = Convert.ToInt32(DropDownList2.Text);
            if (cinsiyet == 0)
            {
                Label1.Text = "Sonuç: Lütfen cinsiyetinizi Giriniz!";
            }
            else if (cinsiyet == 1)
            {
                float metabolizma_hizi = (float)66.5 + ((float)(13.75) * kilo) + (float)5.03 * boy - (float)6.75 * yas;
                float min_kalori = 0;
                if (hareket == 0)
                {
                    Label1.Text = "Lütfen Hareket Düzeyinizi Seçin!";
                }
                if (hareket == 1)
                {
                    min_kalori = metabolizma_hizi * (float)1.2;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 2)
                {
                    min_kalori = metabolizma_hizi * (float)1.375;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 3)
                {
                    min_kalori = metabolizma_hizi * (float)1.55;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 4)
                {
                    min_kalori = metabolizma_hizi * (float)1.725;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 5)
                {
                    min_kalori = metabolizma_hizi * (float)1.9;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
            }
            else
            {
                float metabolizma_hizi = (float)655.1 + ((float)(9.56) * kilo) + (float)1.85 * boy - (float)4.68 * yas;
                float min_kalori = 0;
                if (hareket == 0)
                {
                    Label1.Text = "Lütfen Hareket Düzeyinizi Seçin!";
                }
                if (hareket == 1)
                {
                    min_kalori = metabolizma_hizi * (float)1.2;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 2)
                {
                    min_kalori = metabolizma_hizi * (float)1.375;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 3)
                {
                    min_kalori = metabolizma_hizi * (float)1.55;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 4)
                {
                    min_kalori = metabolizma_hizi * (float)1.725;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
                if (hareket == 5)
                {
                    min_kalori = metabolizma_hizi * (float)1.9;
                    Label1.Text = "Almanız Gereken Kalori Miktarınız: " + min_kalori + "kcal/gün";
                }
            }
        }
    }
}