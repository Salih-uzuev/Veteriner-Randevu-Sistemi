using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class İcerikGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLVERILERTableAdapter dt = new DataSet1TableAdapters.TBLVERILERTableAdapter();
            txtAdminİcerikGuncelleID.Text = x.ToString();
            txtAdminİcerikGuncelleID.Enabled = false;

            if(Page.IsPostBack == false)
            {
                txtAdminİcerikGuncelleBaslik.Text = dt.VerileriGetir(Convert.ToInt32(txtAdminİcerikGuncelleID.Text))[0].baslik;
                txtAdminİcerikGuncelleİcerik.Text = dt.VerileriGetir(Convert.ToInt32(txtAdminİcerikGuncelleID.Text))[0].icerik;
            }
        }

        protected void BtnAdminİcerikGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLVERILERTableAdapter dtt = new DataSet1TableAdapters.TBLVERILERTableAdapter();
            dtt.VerilerGuncelle(txtAdminİcerikGuncelleBaslik.Text, txtAdminİcerikGuncelleİcerik.Text, Convert.ToInt32(txtAdminİcerikGuncelleID.Text));
            Response.Redirect("Adminİcerik.aspx");
        }
    }
}