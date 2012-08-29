using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace halipinio
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //not authorized
            object isLoggedIn = Session["isLoggedIn"];
            if (isLoggedIn == null)
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}