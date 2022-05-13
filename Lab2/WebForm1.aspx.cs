using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["login"] = login.Text;
                Session["email"] = Email.Text;
                Session["password"] = Password.Text;
                Session["age"] = Age.Text;
                Response.Redirect("WebForm2.aspx");
            }
        }

        protected void login_TextChanged(object sender, EventArgs e)
        {

        }
    }
}