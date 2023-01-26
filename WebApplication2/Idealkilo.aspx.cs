using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm7 : System.Web.UI.Page
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
            float temp = (float)boy * (float)boy / (float)10000;
            float BKI = (float)kilo / temp;
            if (cinsiyet == 0)
            {
                Label1.Text = "Sonuç: Lütfen cinsiyetinizi Giriniz!";
            }
            else if (cinsiyet == 1)
            {
                if (BKI < 25 && BKI > 18.5)
                {
                    Label2.Text = "Normal Kilo Aralığındasınız.";
                }
                else
                {
                    Label2.Text = "Normal Kilo Aralığında DEĞİLSİNİZ!.";
                }
                float ideal = (float)23.3 * temp;
                Label1.Text = "İdeal Kilomuz: " + ideal;
            }
            else
            {
                if (BKI < 25 && BKI > 18.5)
                {
                    Label2.Text = "Normal Kilo Aralığındasınız.";
                }
                else
                {
                    Label2.Text = "Normal Kilo Aralığında DEĞİLSİNİZ!.";
                }
                float ideal = (float)21.8 * temp;
                Label1.Text = "İdeal Kilomuz: " + ideal;
            }


        }
    }
}