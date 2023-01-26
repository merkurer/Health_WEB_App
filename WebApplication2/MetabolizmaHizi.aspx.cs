using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class MetabolizmaHizi : System.Web.UI.Page
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
            int cinsiyet = Convert.ToInt32(DropDownList1.Text);
            int yas = Convert.ToInt32(yaslab.Text);
            if (cinsiyet == 0)
            {
                Label1.Text = "Sonuç: Lütfen cinsiyetinizi Giriniz!";
            }
            else if (cinsiyet == 1)
            {
                float metabolizma_hizi = (float)66.5 + ((float)(13.75) * kilo) + (float) 5.03 * boy - (float) 6.75 * yas;
                Label1.Text = "Bazal Metabolizmanız: " + metabolizma_hizi + "kcal/gün";
            }
            else
            {
                float metabolizma_hizi = (float)655.1 + ((float)(9.56) * kilo) + (float)1.85 * boy - (float)4.68 * yas;
                Label1.Text = "Bazal Metabolizmanız: " + metabolizma_hizi + "kcal/gün";
            }
        }
    }
}