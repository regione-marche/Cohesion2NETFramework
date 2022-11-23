using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestCohesion
{
    public partial class LogoutFE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CohesionSSO cohesionSSO = new CohesionSSO(Request, Response, Session);
            cohesionSSO.LogoutFE();
        }
    }
}