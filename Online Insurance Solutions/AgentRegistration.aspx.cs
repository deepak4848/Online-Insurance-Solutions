using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        con.Open();
        string qry = "select max(AgentId) from Agent";
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
        string qry = "insert into Agent values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9,@t10,@t11,@t12)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@t1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@t2", TextBox4.Text);
        string dob = DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text;
        cmd.Parameters.AddWithValue("@t3", dob);
        cmd.Parameters.AddWithValue("@t4", TextBox5.Text);
        string s;
        if(RadioButton1.Checked)
        {
            s = "Male";
        }
        else
        {
            s = "Female";
        }
        cmd.Parameters.AddWithValue("@t5", s);
        cmd.Parameters.AddWithValue("@t6", TextBox15.Text);
        cmd.Parameters.AddWithValue("@t7", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@t8", DropDownList5.Text);
        cmd.Parameters.AddWithValue("@t9", DropDownList6.Text);
        cmd.Parameters.AddWithValue("@t10", TextBox11.Text);
        cmd.Parameters.AddWithValue("@t11", TextBox13.Text);
        cmd.Parameters.AddWithValue("@t12", TextBox14.Text);
        int i = cmd.ExecuteNonQuery();
        if(i==1)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Details";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

    }
}