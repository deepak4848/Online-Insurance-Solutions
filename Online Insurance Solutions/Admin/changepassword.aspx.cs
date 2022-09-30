using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);    //creating connection with db
        con.Open(); //open db connection
        string qry = "select * from Customer where CustId=@t1 and passwd=@t2 and usernm=@t3";                                       //creating SQL query 
        SqlCommand cmd = new SqlCommand(qry, con);                                                                // sending SQL query for execution
        cmd.Parameters.AddWithValue("@t1", TextBox1.Text);                                                       // adding values to query parameters
        cmd.Parameters.AddWithValue("@t2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@t3", Session["ctuser"].ToString());
        SqlDataReader dr = cmd.ExecuteReader();                                                                // Executing Sql query & Reading output
        if (dr.Read())                                                                                        // if username/password matched
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Invalid Customer and Password";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);    //creating connection with db
        con.Open(); //open db connection
        string qry = "update Customer set passwd=@t1 where usernm=@t2";                                       //creating SQL query 
        SqlCommand cmd = new SqlCommand(qry, con);                                                                // sending SQL query for execution
        cmd.Parameters.AddWithValue("@t1", TextBox4.Text);                                                       // adding values to query parameters
        cmd.Parameters.AddWithValue("@t2", Session["ctuser"].ToString());
        cmd.ExecuteNonQuery();                                                                // Executing Sql query & Reading output
        Label2.Visible = true;
        Label2.Text = "Your Password Changed Successfully";
    }
}