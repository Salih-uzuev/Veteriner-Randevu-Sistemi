using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class Adminİletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminAd"] != null)
            {
                lblAdminGirisBilgi.Text = ("Hoşgeldiniz : " + Session["adminAd"]);
                BtnAdminCikis.Visible = true;
            }

            else
            {
                BtnAdminCikis.Visible = false;
                lblAdminGirisBilgi.Visible = false;
            }

            DataSet1TableAdapters.TBLİLETİSİMTableAdapter dt2 = new DataSet1TableAdapters.TBLİLETİSİMTableAdapter();
            Repeater1.DataSource = dt2.GetData();
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