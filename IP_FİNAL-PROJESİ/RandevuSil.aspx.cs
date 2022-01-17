using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class RandevuSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLRANDEVUTableAdapter dt = new DataSet1TableAdapters.TBLRANDEVUTableAdapter();
            dt.RandevuSil(x);
            Response.Redirect("AdminRandevu.aspx");

        }
    }
}