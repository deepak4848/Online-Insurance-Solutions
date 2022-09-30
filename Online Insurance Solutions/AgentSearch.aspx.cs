using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AgentSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        GridView1.Visible = false;
        Label2.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList2.SelectedIndex==0 || DropDownList1.SelectedIndex==0)
        {
                if(TextBox3.Text=="")
                {
                Label1.Visible = true;
                Label1.Text = "Please Select the State and city";
                }
                else
                {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                conn.Open();
                string qryy = "select AgentId,name,MobilNo,state,city,pincode,email from Agent where AgentId=@t1";
                SqlCommand cmdd = new SqlCommand(qryy, conn);
                cmdd.Parameters.AddWithValue("@t1", TextBox3.Text);
                SqlDataReader drr = cmdd.ExecuteReader();
                  if (drr.HasRows)
                  {
                      GridView1.Visible = true;
                    GridView1.DataSource = drr;
                    GridView1.DataBind();
                  }
                 else
                  {
                    Label2.Visible = true;
                    Label2.Text = "Office Not found";
                  }
            }
            
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
            con.Open();
            string qry = "select AgentId,name,MobilNo,state,city,pincode,email from Agent where state=@t1 or city=@t2";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@t1", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@t2", DropDownList1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                GridView1.Visible = true;
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Office Not found";
            }
        }
        
    }
    
}