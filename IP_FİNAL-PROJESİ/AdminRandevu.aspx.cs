using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class AdminRandevu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminAd"] != null)
            {
                lblAdminGirisBilgi.Text = ("Hoşgeldiniz : " + Session["adminAd"]);
                BtnAdminCikiss.Visible = true;
            }

            else
            {
                BtnAdminCikiss.Visible = false;
                lblAdminGirisBilgi.Visible = false;
            }

            DataSet1TableAdapters.TBLRANDEVUTableAdapter dt = new DataSet1TableAdapters.TBLRANDEVUTableAdapter();
            Repeater1.DataSource = dt.GetData();
            Repeater1.DataBind();
        }

        protected void BtnAdminCikiss_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            BtnAdminCikiss.Visible = false;
            lblAdminGirisBilgi.Visible = false;
            Response.Redirect("Giris.aspx");
        }
    }
}