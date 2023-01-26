using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class KalcaOrani : System.Web.UI.Page
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
            int bel = Convert.ToInt32(bellab.Text);
            int kalca = Convert.ToInt32(kalcalab.Text);
            if (cinsiyet == 0)
            {
                Label1.Text = "Sonuç: Lütfen cinsiyetinizi Giriniz!";
            }
            else if (cinsiyet == 1)
            {
                float oran = (float)bel/(float)kalca;
                Label1.Text = "Bel-Kalça Oranınız: %" + 100 * oran;
                if (oran < (float)0.95)
                {
                    Label2.Text = "Düşük Risk Düzeyindesiniz";
                }
                else if (oran < (float)1.0)
                {
                    Label2.Text = "Orta Risk Düzeyindesiniz";
                }
                else
                {
                    Label2.Text = "Yüksek Risk Düzeyindesiniz";
                }
            }
            else
            {
                float oran = (float)bel / (float)kalca;
                Label1.Text = "Bel-Kalça Oranınız:" + 100 * oran;
                if (oran < (float)0.80)
                {
                    Label2.Text = "Düşük Risk Düzeyindesiniz";
                }
                else if (oran < (float)0.85)
                {
                    Label2.Text = "Orta Risk Düzeyindesiniz";
                }
                else
                {
                    Label2.Text = "Yüksek Risk Düzeyindesiniz";
                }
            }
        }
    }
}