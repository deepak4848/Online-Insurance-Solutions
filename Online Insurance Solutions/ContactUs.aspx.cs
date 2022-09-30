using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void SendMail()
    {
        var fromAddress = "amirkhan12402@gmail.com";
        var toaddress = TextBox2.Text.ToString();
        const string frompassword = "amirKHAN@12402";
        string subject = TextBox3.Text.ToString();
        string body = "form:" + TextBox1.Text + "\n";
        body += "Email:" + TextBox2.Text + "\n";
        body += "Subject:" + TextBox3.Text + "\n";
        body += "Question:" + TextBox4.Text + "\n";
        var smtp = new SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new System.Net.NetworkCredential(fromAddress, frompassword);
            smtp.Timeout = 20000;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SendMail();
        Label1.Visible = true;
        Label1.Text = "Your Mail Has been Sent";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}