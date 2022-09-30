using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddOffice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        con.Open();
        string qry = "select max(OfficeId) from Office";
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
        string qry = "insert into Office values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@t1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@t2", TextBox4.Text);
        cmd.Parameters.AddWithValue("@t3", TextBox15.Text);
        cmd.Parameters.AddWithValue("@t4", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@t5", DropDownList5.Text);
        cmd.Parameters.AddWithValue("@t6", DropDownList6.Text);
        cmd.Parameters.AddWithValue("@t7", TextBox11.Text);
        cmd.Parameters.AddWithValue("@t8", TextBox13.Text);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            Label1.Visible = true;
            Label1.Text = "New Office Successfully Added";
        }
        else
        {
            Label1.Visible = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageOffice.aspx");
    }
}