using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
public partial class forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex==0)
        {
            Label6.Visible = true;
            Label6.Text = "Please Select UserType";
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);    //creating connection with db
            con.Open();                                                                                      //open db connection
            string qry = "select * from Customer where CustId=@t1 and emailid=@t2";                            //creating SQL query 
            SqlCommand cmd = new SqlCommand(qry, con);                                           // sending SQL query for execution
            cmd.Parameters.AddWithValue("@t1", TextBox2.Text);                                // adding values to query parameters
            cmd.Parameters.AddWithValue("@t2", TextBox3.Text);
            SqlDataReader dr = cmd.ExecuteReader();                                    // Executing Sql query & Reading output
            if (dr.HasRows)                                                        // if username matched
            {
                MailMessage msg = new MailMessage();                       //Create a mailmessage variable
                msg.To.Add(TextBox3.Text);                                //Adding value to send
                dr.Read();
                msg.Subject="Your Password";
                msg.Body = "Your Username is:" + dr["usernm"].ToString() + "and Password is:" + dr["passwd"].ToString();     //Send body of msg
                msg.IsBodyHtml = true;
                msg.From = new MailAddress("amirkhan12402@gmail.com");

                SmtpClient sm = new SmtpClient();                    //Create smtpclient
                sm.Port = 587;                                    //Gmail mail port number
                sm.Host = "smtp.gmail.com";                         //Gmail host name
                sm.Credentials = new System.Net.NetworkCredential("amirkhan12402@gmail.com", "amirKHAN@12402");            //Receive mail  
                sm.EnableSsl = false;
                // sm.Send(msg);
                Label6.Visible = true;
                Label6.Text = "UserName and Password has been sent to your Email Id";             //Show msg mail send
            }
            else
            {
                Label6.Visible = true;
                Label6.Text = "Email id Does Not Exists";         //Show msg mail not send
            }
        }
    }
}