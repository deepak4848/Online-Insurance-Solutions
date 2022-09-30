using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageOffice : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);   //Creating Connection with db 
    DataTable dt;

    public void showgrid()
    {
        string qry = "select * from Agent";                     // Creating sql query    
        SqlDataAdapter da = new SqlDataAdapter(qry, con);            //Sending query for execution
        dt = new DataTable();                                     //Create a table
        da.Fill(dt);                                            //Data fill in the table
        GridView1.DataSource = dt;
        GridView1.DataBind();                                //Show the data in gridview

    }
   
    protected void Page_Load(object sender, EventArgs e)
    {
             if(!IsPostBack)
             {
                 showgrid();
             }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        showgrid();
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        showgrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        showgrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int aid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);                                            //convert data value to int
        string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;                         // creating values in gridview cells
        string dob = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string mob = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string sex = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string addr = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string state = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string city = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        int pincd = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0]).Text);
        string usrm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[11].Controls[0]).Text;
        string emaid = ((TextBox)GridView1.Rows[e.RowIndex].Cells[12].Controls[0]).Text;
        string pswd = ((TextBox)GridView1.Rows[e.RowIndex].Cells[13].Controls[0]).Text;
        con.Open();
        string qry = "update Agent set name=@t2,dob=@t3,MobilNo=@t4,sex=@t5,address=@t6,state=@t7,city=@t8,pincode=@t9,usernm=@t10,email=@t11,passwd=@t12 where AgentId=@t1";   //creating sql query
        SqlCommand cmd = new SqlCommand(qry, con);                                       //sending sql query for execution
        cmd.Parameters.AddWithValue("@t1",aid);                        //adding values query parameters
        cmd.Parameters.AddWithValue("@t2",name);
        cmd.Parameters.AddWithValue("@t3", dob);
        cmd.Parameters.AddWithValue("@t4", mob);
        cmd.Parameters.AddWithValue("@t5", sex);
        cmd.Parameters.AddWithValue("@t6", addr);
        cmd.Parameters.AddWithValue("@t7", state);
        cmd.Parameters.AddWithValue("@t8", city);
        cmd.Parameters.AddWithValue("@t9", pincd);
        cmd.Parameters.AddWithValue("@t10", usrm);
        cmd.Parameters.AddWithValue("@t11", emaid);
        cmd.Parameters.AddWithValue("@t12", pswd);
        int i = cmd.ExecuteNonQuery();                                        // executing sql query
        con.Close();
        GridView1.EditIndex = -1;
        showgrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int CustId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);            //convert data value to int
        con.Open();
        string qry = "delete from Agent where AgentId=@t1";                    //creating sql query
        SqlCommand cmd = new SqlCommand(qry, con);                                       //sending sql query for execution
        cmd.Parameters.AddWithValue("@t1", CustId);                        //adding values query parameters
        int i = cmd.ExecuteNonQuery();                                        // executing sql query
        con.Close();
        GridView1.EditIndex = -1;
        showgrid();
    }
}