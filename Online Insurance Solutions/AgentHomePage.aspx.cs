using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("InsurancePlans1.aspx");
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("OfficeSearch1.aspx");
    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PremiumCalculatorPage.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AgentSearch1.aspx");
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Changepassword.aspx");
    }
}