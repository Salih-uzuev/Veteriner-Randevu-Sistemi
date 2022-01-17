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
    public partial class İletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnİletisimGonder_Click(object sender, EventArgs e)
        {
            if (txtİletisimAd.Text == "" || txtİletisimEposta.Text == "" || txtİletisimBaslik.Text == "" || txtİletisimSorun.Text == "")
                lblİletisimBilgi.Text = "Lütfen Alanları Doldurunuz!";
            else
            {
                DataSet1TableAdapters.TBLİLETİSİMTableAdapter dt = new DataSet1TableAdapters.TBLİLETİSİMTableAdapter();
                dt.iletisimVeriEkle(txtİletisimAd.Text, txtİletisimEposta.Text, txtİletisimBaslik.Text, txtİletisimSorun.Text);

                lblİletisimBilgi.Text = "Sorun Başarılı Bir Şekilde İletilmiştir.";

            }
            txtİletisimAd.Text = "";
            txtİletisimBaslik.Text = "";
            txtİletisimEposta.Text = "";
            txtİletisimSorun.Text = "";
            
        }
    }
}