using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace TestCohesion.privato
{
    public partial class pagina_protetta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
            doc.LoadXml(Session["TOKEN"].ToString());

            string _userName = Request.ServerVariables["LOGON_USER"];

            if(doc.GetElementsByTagName("login").Count!=0)
                fcLbl.Text = doc.GetElementsByTagName("login")[0].InnerText;
            if (doc.GetElementsByTagName("cognome").Count != 0 && doc.GetElementsByTagName("nome").Count != 0)
                nomeLbl.Text = doc.GetElementsByTagName("cognome")[0].InnerText + " " + doc.GetElementsByTagName("nome")[0].InnerText;
            if (doc.GetElementsByTagName("tipo_autenticazione").Count != 0)
                authLbl.Text = doc.GetElementsByTagName("tipo_autenticazione")[0].InnerText;

            doctxb.Text = Session["TOKEN"].ToString();
            authtxb.Text = Session["AUTH"].ToString();
        }

        protected void buttlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect(CohesionSSO.getLogoutUrl());
        }
    }
}