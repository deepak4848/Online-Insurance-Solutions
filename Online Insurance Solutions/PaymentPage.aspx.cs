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
        
            TextBox1.Text = Convert.ToString(Session["policyno"]);
            TextBox2.Text = Convert.ToString(Session["plcynm"]);
            TextBox4.Text = Convert.ToString(Session["premium"]);
            TextBox3.Text = DateTime.Now.ToShortDateString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
            con.Open();
            string qry = "select max(TransId) from Payment";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int cid = Convert.ToInt32(dr[0]);
            cid++;
            Label1.Text = cid.ToString();
            dr.Close();
            con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int cno = Convert.ToInt32(TextBox6.Text);
        string ct = DropDownList8.Text;
        string vu = DropDownList5.Text + "/" + DropDownList6.Text;
        int cvv = Convert.ToInt32(TextBox8.Text);
        string nm = TextBox10.Text;
        int amt =Convert.ToInt32(TextBox4.Text);

        BankService bs = new BankService();
        bool res = bs.checkcard(cno, ct, vu, cvv, nm, amt);
        if (res == false)
        {
            Label2.Visible = true;
            Label2.Text = "Invalid Card Details";
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
            con.Open();
            string qry = "insert into Payment values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@t1", Label1.Text);
            cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
            cmd.Parameters.AddWithValue("@t3", TextBox2.Text);
            cmd.Parameters.AddWithValue("@t4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@t5", TextBox3.Text);
            cmd.Parameters.AddWithValue("@t6", DropDownList7.Text);
            cmd.Parameters.AddWithValue("@t7", DropDownList8.Text);
            cmd.Parameters.AddWithValue("@t8", TextBox6.Text);
            cmd.Parameters.AddWithValue("@t9", TextBox10.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Session["transaction"] = Label1.Text;
                Response.Redirect("ReceiptPage.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Please Check Details";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("PolicyformPage.aspx");
    }
}