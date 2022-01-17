using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class İletisimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLİLETİSİMTableAdapter dt = new DataSet1TableAdapters.TBLİLETİSİMTableAdapter();
            txtGuncellemeID.Text = x.ToString();
            txtGuncellemeID.Visible = false;

            if(Page.IsPostBack == false)
            {
                txtGuncelleAd.Text = dt.GetirVeri(Convert.ToInt32(txtGuncellemeID.Text))[0].Ad;
                txtGuncelleEposta.Text = dt.GetirVeri(Convert.ToInt32(txtGuncellemeID.Text))[0].Eposta;
                txtGuncelleBaslik.Text = dt.GetirVeri(Convert.ToInt32(txtGuncellemeID.Text))[0].Baslik;
                txtGuncelleSorun.Text = dt.GetirVeri(Convert.ToInt32(txtGuncellemeID.Text))[0].Sorun;

            }
         
        }

        protected void BtnGuncellemeİletisim_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLİLETİSİMTableAdapter dt = new DataSet1TableAdapters.TBLİLETİSİMTableAdapter();
            dt.İletisimGuncelleme(txtGuncelleAd.Text, txtGuncelleEposta.Text, txtGuncelleBaslik.Text, txtGuncelleSorun.Text, Convert.ToInt32(txtGuncellemeID.Text));
            Response.Redirect("Adminİletisim.aspx");
        }
    }
}