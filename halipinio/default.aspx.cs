using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;

namespace halipinio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object isLoggedIn = Session["isLoggedIn"];
            if (isLoggedIn != null)
            {
                Response.Redirect("home.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            dbEntities db = new dbEntities();
            ObjectSet<User> d = db.Users;
            foreach (User u in d)
            {
                Console.WriteLine(u.email);
            }
            Session["isLoggedIn"] = 1;
            Response.Redirect("home.aspx");
        }
    }
}