using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class PolicyformPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox6.Text = "    "+DateTime.Now.ToShortDateString();
        TextBox4.Text =Convert.ToString(Session["premium"]);
        TextBox2.Text = Convert.ToString(Session["duration"]);
        TextBox5.Text = Convert.ToString(Session["plcynm"]);
        TextBox8.Text = Convert.ToString(Session["sumassrd"]);
        if (DropDownList2.SelectedIndex == 0 || DropDownList3.SelectedIndex == 0 || DropDownList4.SelectedIndex == 0)
        {
            TextBox7.Text ="        "+DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;
        }
        else
        {
            int x =Convert.ToInt32(TextBox2.Text);
            int y = Convert.ToInt32(DropDownList4.SelectedValue);
            int z = x + y;
            TextBox7.Text = DropDownList2.Text + "/" + DropDownList3.Text + "/" + z;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        con.Open();
        string qry = "select max(PolicyNo) from Policy";
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
        string qry = "insert into Policy values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@t1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@t2", TextBox5.Text);
        cmd.Parameters.AddWithValue("@t3", TextBox2.Text);
        string startdate = DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;
        cmd.Parameters.AddWithValue("@t4",startdate);
        cmd.Parameters.AddWithValue("@t5", TextBox4.Text);
        cmd.Parameters.AddWithValue("@t6",TextBox6.Text);
        cmd.Parameters.AddWithValue("@t7",TextBox7.Text);
        cmd.Parameters.AddWithValue("@t8",TextBox8.Text);
        int i = cmd.ExecuteNonQuery();
        if(i==1)
        {
            Session["policyno"] = TextBox1.Text;
            Session["plcynm"]=TextBox5.Text;
            Session["premium"] = TextBox4.Text;
            Response.Redirect("PaymentPage.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Please Input Valid Detail";
        }
    }
}