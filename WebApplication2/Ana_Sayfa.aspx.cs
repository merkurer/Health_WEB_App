using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string Hosgeldin_Mesaji = Request.QueryString["Data"];
            Response.Write(Hosgeldin_Mesaji);
        }

        protected void Hesaplamalar_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Hesaplamalar.aspx");
        }

        protected void Kalori_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Kac_Kalori.aspx");
        }

        protected void Rapor_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Rapor.aspx");
        }
        protected void Cikis_Button_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Giris.aspx");
        }

    }
}