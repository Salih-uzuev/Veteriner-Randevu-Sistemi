using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class KullaniciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter dt3 = new DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter();
            dt3.SilAdmin(x);
            Response.Redirect("Admin.aspx");
        }
    }
}