using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebApplication2
{
    public partial class YagOrani : System.Web.UI.Page
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
            int boy = Convert.ToInt32(boylab.Text);
            int bel = Convert.ToInt32(bellab.Text);
            int kalca = Convert.ToInt32(kalcalab.Text);
            int boyun = Convert.ToInt32(boyunlab.Text);
            if (cinsiyet == 0)
            {
                Label1.Text = "Sonuç: Lütfen cinsiyetinizi Giriniz!";
            }
            else if (cinsiyet == 1)
            {
                float yag = (float)495 / ((float)1.0324 - (float)0.19077 * (float)Math.Log10((float)bel - (float)boyun) + (float)0.15456 * (float)Math.Log10((float)boy)) - (float)450;
                Label1.Text = "Yağ Oranınız: %" + yag;
            }
            else
            {
                float yag = (float)495 / (float)((float)1.29579 - (float)0.35004 * (float)Math.Log10((float)bel + (float)kalca - (float)boyun) + (float)0.22100 * (float)Math.Log10((float)boy)) - (float)450;
                Label1.Text = "Yağ Oranınız: %" + yag;
            }
        }
    }
}