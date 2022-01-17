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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminAd"] !=null)
            {
                lblAdminGirisBilgi.Text = ("Hoşgeldiniz : " + Session["adminAd"]);
                BtnAdminCikis.Visible = true;
            }

            else
            {
                BtnAdminCikis.Visible = false;
                lblAdminGirisBilgi.Visible = false;
            }

            DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter dt2 = new DataSet1TableAdapters.TBLKULLANİCİ1TableAdapter();
            Repeater1.DataSource = dt2.AdminListesi();
            Repeater1.DataBind();

        }

        protected void BtnAdminCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            BtnAdminCikis.Visible = false;
            lblAdminGirisBilgi.Visible = false;
            Response.Redirect("Giris.aspx");
        }
    }
}