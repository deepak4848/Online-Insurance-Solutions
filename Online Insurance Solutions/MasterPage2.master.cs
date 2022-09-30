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
            Response.Redirect("Login.aspx");
        else
        {
            Label6.Visible = true;
            Label6.Text = Session["ctuser"].ToString();
        }
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("LogOut.aspx");
    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }
}
