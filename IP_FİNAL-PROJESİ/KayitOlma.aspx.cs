using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace IP_FİNAL_PROJESİ
{
    public partial class KayitOlma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayitGonder_Click(object sender, EventArgs e)
        {
            if (txtKayitKullaniciAdi.Text == "" || txtKayitEposta.Text == "" || txtKayitTelefon.Text == "" || txtKayitSifre.Text == "")
                lblKayitBilgi.Text = "Lütfen Boş Alanları Doldurunuz !";

            else
            {
                DataSet1TableAdapters.TBLKULLANİCİTableAdapter dt1 = new DataSet1TableAdapters.TBLKULLANİCİTableAdapter();
                dt1.KayitGonder(txtKayitKullaniciAdi.Text, txtKayitTelefon.Text, txtKayitEposta.Text, txtKayitSifre.Text);

                lblKayitBilgi.Text = "Kayit Başarılı Bir Şekilde Oluşturuldu";


            }
            txtKayitEposta.Text = "";
            txtKayitKullaniciAdi.Text = "";
            txtKayitSifre.Text = "";
            txtKayitTelefon.Text = "";
        
        }
    }
}