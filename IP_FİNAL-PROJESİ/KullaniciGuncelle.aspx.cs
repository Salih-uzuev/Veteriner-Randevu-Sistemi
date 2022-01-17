using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class KullaniciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter dt = new DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter();
            txtAdminGuncelleID.Text = x.ToString();
            txtAdminGuncelleID.Enabled = false;
            if (Page.IsPostBack == false)
            {
                txtAdminGuncelleAd.Text = dt.VeriGetir1(Convert.ToInt32(txtAdminGuncelleID.Text))[0].kullaniciAdi;
                txtAdminGuncelleTelefon.Text = dt.VeriGetir1(Convert.ToInt32(txtAdminGuncelleID.Text))[0].telNo;
                txtAdminGuncelleEposta.Text = dt.VeriGetir1(Convert.ToInt32(txtAdminGuncelleID.Text))[0].eposta;
                txtAdminGuncelleSifre.Text = dt.VeriGetir1(Convert.ToInt32(txtAdminGuncelleID.Text))[0].sifre;
            }

        }

        protected void BtnAdminGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter dtt = new DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter();
            dtt.AdminGuncelle(txtAdminGuncelleAd.Text, txtAdminGuncelleTelefon.Text, txtAdminGuncelleEposta.Text, txtAdminGuncelleSifre.Text, Convert.ToInt32(txtAdminGuncelleID.Text));
            Response.Redirect("Admin.aspx");
        }
    }
}