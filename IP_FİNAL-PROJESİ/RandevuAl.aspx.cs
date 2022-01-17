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
    public partial class RandevuAl : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
            }
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-4AOLFPQ;Initial Catalog=VET_CITY;Integrated Security=True");

            baglanti.Open();
            string baglantiselect = "SELECT * FROM TBLHAYVANTUR";
            SqlDataAdapter adpt = new SqlDataAdapter(baglantiselect, baglanti);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            drpRandevuHayvanTipi.DataSource = dt;
            drpRandevuHayvanTipi.DataBind();
            drpRandevuHayvanTipi.DataTextField = "hayvan_cinsi";
            drpRandevuHayvanTipi.DataValueField = "hayvan_cinsi";
            drpRandevuHayvanTipi.DataBind();


            SqlConnection baglanti2 = new SqlConnection("Data Source=DESKTOP-4AOLFPQ;Initial Catalog=VET_CITY;Integrated Security=True");
            string baglantiselectt = "SELECT * FROM TBLRANDEVUTİPİ";
            SqlDataAdapter adptr = new SqlDataAdapter(baglantiselectt, baglanti2);
            DataTable dtt = new DataTable();
            adptr.Fill(dtt);
            drpRandevuTipi.DataSource = dtt;
            drpRandevuTipi.DataBind();
            drpRandevuTipi.DataTextField = "randevu_tipi";
            drpRandevuTipi.DataValueField = "randevu_tipi";
            drpRandevuTipi.DataBind();

            if (Session["eposta"] != null)
            {
                
            }

            else
            {
                Response.Redirect("KayitOlma.aspx");
            }





        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }

            else
            {
                Calendar1.Visible = true;
            }

            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtRandevuTarih.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Red;
            }
        }

        protected void BtnRandevuGonder_Click(object sender, EventArgs e)
        {
            if (txtRandevuAd.Text == "" || txtRandevuEposta.Text == "" || txtRandevuTarih.Text == "" || txtRandevuTelefon.Text == "" || drpRandevuHayvanTipi.Text == "" || drpRandevuTipi.Text == "")
                lblRandevuBilgi.Text = "Alanları doldurunuz !";

            else
            {
                DataSet1TableAdapters.TBLRANDEVUTableAdapter dt2 = new DataSet1TableAdapters.TBLRANDEVUTableAdapter();
                dt2.RandevuEkle(txtRandevuAd.Text, txtRandevuEposta.Text, txtRandevuTelefon.Text, txtRandevuTarih.Text, drpRandevuTipi.Text, drpRandevuHayvanTipi.Text);

                lblRandevuBilgi.Text = "Randevu Başarılı Bir Şekilde Oluşturuldu !";
            }

            txtRandevuAd.Text = "";
            txtRandevuEposta.Text = "";
            txtRandevuTarih.Text = "";
            txtRandevuTelefon.Text = "";
        }
    }
}