using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class Adminİcerik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminAd"] != null)
            {
                lblAdminGirisBilgi.Text = ("Hoşgeldiniz : " + Session["adminAd"]);
                BtnAdminİcerikCikis.Visible = true;
            }

            else
            {
                BtnAdminİcerikCikis.Visible = false;
                lblAdminGirisBilgi.Visible = false;
            }

            DataSet1TableAdapters.TBLVERILERTableAdapter dt = new DataSet1TableAdapters.TBLVERILERTableAdapter();
            Repeater1.DataSource = dt.Veriler();
            Repeater1.DataBind();


        }

        protected void BtnAdminİcerikCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            BtnAdminİcerikCikis.Visible = false;
            lblAdminGirisBilgi.Visible = false;
            Response.Redirect("Giris.aspx");
        }
    }
}