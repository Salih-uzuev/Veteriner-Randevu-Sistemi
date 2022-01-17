using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace IP_FİNAL_PROJESİ
{
    public partial class İletisimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLİLETİSİMTableAdapter dt = new DataSet1TableAdapters.TBLİLETİSİMTableAdapter();
            dt.Silİletisim(x);
            Response.Redirect("Adminİletisim.aspx");
        }
    }
}