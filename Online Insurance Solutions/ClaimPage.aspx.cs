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
        Label1.Visible = false;
        TextBox2.Text=System.DateTime.Now.ToShortDateString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        con.Open();
        string qry = "select max(ReqestId) from Claim";
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid = Convert.ToInt32(dr[0]);
        cid++;
        TextBox1.Text = cid.ToString();
        dr.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        con.Open();
        string qry = "insert into Claim values(@t1,@t2,@t3,@t4)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@t1",TextBox1.Text);
        cmd.Parameters.AddWithValue("@t2",TextBox2.Text);
        cmd.Parameters.AddWithValue("@t3",TextBox4.Text);
        cmd.Parameters.AddWithValue("@t4", DropDownList1.Text);
        int i = cmd.ExecuteNonQuery();
        if(i==1)
        {
            Label1.Visible = true;
            Label1.Text = "Your Claim Successfully Registered";
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "You Already Registered";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerHomePage.aspx");
    }
}