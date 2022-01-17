using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IP_FİNAL_PROJESİ
{
    public partial class AnaSablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["eposta"] != null)
            {
               
                liGiris.Visible = false;
                txtAnasablonBilgi.Text=("" + Session["eposta"]);
                btnAnasablonCikis.Visible = true;
            }

            else
            {
                txtAnasablonBilgi.Visible = false;
                btnAnasablonCikis.Visible = false;

            }



        }

        protected void btnAnasablonCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            liGiris.Visible = true;
            txtAnasablonBilgi.Visible = false;
            btnAnasablonCikis.Visible = false;
        }
    }
}