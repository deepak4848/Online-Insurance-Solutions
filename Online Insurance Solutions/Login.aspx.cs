using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUpPage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex==0)
        {
            Label1.Visible = true;
            Label1.Text = "Please Select User Type";
        }
        else if (DropDownList1.SelectedIndex==1)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);    //creating connection with db
            con.Open(); //open db connection
            string qry = "select * from Customer where usernm=@t1 and passwd=@t2";                                       //creating SQL query 
            SqlCommand cmd = new SqlCommand(qry, con);                                                                // sending SQL query for execution
            cmd.Parameters.AddWithValue("@t1", txtusername.Text);                                                       // adding values to query parameters
            cmd.Parameters.AddWithValue("@t2", txtpassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();                                                                // Executing Sql query & Reading output
            if (dr.HasRows)                                                                                        // if username/password matched
            {
                dr.Read();
                Session["ctuser"] = txtusername.Text;
                Response.Redirect("CustomerHomePage.aspx");                                                         //redirecting to homepage2

            }
            else
            {
                Label1.Visible = true;             // if mismatched then error message
                Label1.Text = "Invalid Username and Password";
            }
        }
        else if(DropDownList1.SelectedIndex==2)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);    //creating connection with db
            con.Open(); //open db connection
            string qry = "select * from Agent where usernm=@t1 and passwd=@t2";                                       //creating SQL query 
            SqlCommand cmd = new SqlCommand(qry, con);                                                                // sending SQL query for execution
            cmd.Parameters.AddWithValue("@t1", txtusername.Text);                                                       // adding values to query parameters
            cmd.Parameters.AddWithValue("@t2", txtpassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();                                                                // Executing Sql query & Reading output
            if (dr.HasRows)                                                                                        // if username/password matched
            {
                dr.Read();
                Session["aguser"] = txtusername.Text;
                Response.Redirect("AgentHomePage.aspx");                                                         //redirecting to homepage2

            }
            else
            {
                Label1.Visible = true;             // if mismatched then error message
                Label1.Text = "Invalid Username and Password";
            }
        }
        else if(DropDownList1.SelectedIndex==3)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);    //creating connection with db
            con.Open(); //open db connection
            string qry = "select * from Admin where usernm=@t1 and passwd=@t2";                                       //creating SQL query 
            SqlCommand cmd = new SqlCommand(qry, con);                                                                // sending SQL query for execution
            cmd.Parameters.AddWithValue("@t1", txtusername.Text);                                                       // adding values to query parameters
            cmd.Parameters.AddWithValue("@t2", txtpassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();                                                                // Executing Sql query & Reading output
            if (dr.HasRows)                                                                                        // if username/password matched
            {
                dr.Read();
                Session["aduser"] = txtusername.Text;
                Response.Redirect("Admin/AdminHomePage.aspx");                                                         //redirecting to homepage2

            }
            else
            {
                Label1.Visible = true;             // if mismatched then error message
                Label1.Text = "Invalid Username and Password";
            }
        }
    }
}