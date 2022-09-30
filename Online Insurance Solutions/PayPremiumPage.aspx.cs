using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PayPremiumPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerHomePage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);    //creating connection with db
        con.Open(); //open db connection
        string qry = "select * from Customer where CustId=@t1 and dob=@t2 and PolicyNo=@t3 and MobileNo=@t4 and emailid=@t5";                                       //creating SQL query 
        SqlCommand cmd = new SqlCommand(qry, con);                                                                // sending SQL query for execution
        cmd.Parameters.AddWithValue("@t1", TextBox1.Text);                                                       // adding values to query parameters
        string dob=DropDownList2.Text+"/"+DropDownList3.Text+"/"+DropDownList4.Text;
        cmd.Parameters.AddWithValue("@t2",dob);
        cmd.Parameters.AddWithValue("@t3",TextBox3.Text);
        cmd.Parameters.AddWithValue("@t4", TextBox4.Text);
        cmd.Parameters.AddWithValue("@t5", TextBox5.Text);
        SqlDataReader dr = cmd.ExecuteReader();                                                                // Executing Sql query & Reading output
        if (dr.HasRows)                                                                                        // if username/password matched
        {
            dr.Read();
            Response.Redirect("PaymentPage.aspx");
            Session["policyNo"] = dr[0].ToString();
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Data";
        }
    }
}