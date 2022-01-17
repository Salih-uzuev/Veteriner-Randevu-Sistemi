using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class RandevuGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLRANDEVUTableAdapter dt = new DataSet1TableAdapters.TBLRANDEVUTableAdapter();
            txtRandevuGuncelleID.Text = x.ToString();
            txtRandevuGuncelleID.Enabled = false;

            if(Page.IsPostBack == false)
            {
                txtRandevuTipi.Text = dt.RandevuGetir(Convert.ToInt32(txtRandevuGuncelleID.Text))[0].randevu_tipi;
                txtHayvanCinsi.Text = dt.RandevuGetir(Convert.ToInt32(txtRandevuGuncelleID.Text))[0].hayvan_cinsi;
                
                
            }
        }

        protected void BtnRandevuGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLRANDEVUTableAdapter dtt = new DataSet1TableAdapters.TBLRANDEVUTableAdapter();
            dtt.RandevuGuncelle(txtRandevuTipi.Text, txtHayvanCinsi.Text, Convert.ToInt32(txtRandevuGuncelleID.Text));
            Response.Redirect("AdminRandevu.aspx");
        }
    }
}