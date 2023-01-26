using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class Kayit_Ol1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kayit_Ol2.aspx?Data=" + Server.UrlEncode(adlab.Text+" "+soyadlab.Text + " " + yaslab.Text + " " + maillab.Text + " " + sifrelab.Text));
        }
    }
}