using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ctuser"] == null)
        {
            Label6.Visible = true;
            Label6.Text = "GUEST";
        }
        else
        {
            Label6.Visible = true;
            Label6.Text = Convert.ToString(Session["ctuser"]);
        }
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUpPage.aspx");
    }
}
