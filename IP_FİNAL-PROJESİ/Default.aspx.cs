using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLVERILERTableAdapter dt = new DataSet1TableAdapters.TBLVERILERTableAdapter();
            Repeater1.DataSource = dt.Veriler();
            Repeater1.DataBind();
        }
    }
}