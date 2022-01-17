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
    public partial class Giris : System.Web.UI.Page
    {
      
        
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string eposta = txtGirisKullaniciAdi.Text;
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-4AOLFPQ;Initial Catalog=VET_CITY;Integrated Security=True");
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand("SELECT * FROM TBLKULLANİCİ WHERE eposta=@eposta AND sifre=@sifre", baglanti);
            sorgu.Parameters.AddWithValue("@eposta", txtGirisKullaniciAdi.Text);
            sorgu.Parameters.AddWithValue("@sifre", txtGirisParola.Text);

            SqlDataReader dr = sorgu.ExecuteReader();

            if (dr.Read())
            {
                Session.Add("eposta", eposta);
                Response.Redirect("Default.aspx");
            }
             
            else
            {
                lblGirisBilgi.Text = "Girdiğiniz Bilgiler Hatalıdır !";
            }
            baglanti.Close();

            string admin = txtGirisKullaniciAdi.Text;
            SqlConnection baglanti1 = new SqlConnection("Data Source=DESKTOP-4AOLFPQ;Initial Catalog=VET_CITY;Integrated Security=True");
            baglanti1.Open();
            SqlCommand sorgu1 = new SqlCommand("SELECT * FROM TBLADMIN WHERE adminAd=@adminAd AND adminParola=@adminParola", baglanti1);
            sorgu1.Parameters.AddWithValue("@adminAd", txtGirisKullaniciAdi.Text);
            sorgu1.Parameters.AddWithValue("@adminParola", txtGirisParola.Text);

            SqlDataReader drr = sorgu1.ExecuteReader();

            if (drr.Read())
            {
                Session.Add("adminAd", admin);
                Response.Redirect("Admin.aspx");
            }

            else
            {
                lblGirisBilgi.Text = "Girdiğiniz Bilgiler Hatalıdır !";
            }
            baglanti1.Close();





        }
    }
}