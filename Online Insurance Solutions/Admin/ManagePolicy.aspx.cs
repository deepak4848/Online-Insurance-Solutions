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
        string qry = "select * from Policy";                     // Creating sql query    
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
        int policy = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);                                            //convert data value to int
        string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;                         // creating values in gridview cells
        int term = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
        string strtdate = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        int premium = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text);
        string purhdate = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string expdate = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        int assured = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text);
        con.Open();
        string qry = "update Policy set policynm=@t2,duration=@t3,startdate=@t4,premium=@t5,purchdate=@t6,expirydate=@t7,assured=@t8 where PolicyNo=@t1";   //creating sql query
        SqlCommand cmd = new SqlCommand(qry, con);                                       //sending sql query for execution
        cmd.Parameters.AddWithValue("@t1", policy);                        //adding values query parameters
        cmd.Parameters.AddWithValue("@t2", name);
        cmd.Parameters.AddWithValue("@t3", term);
        cmd.Parameters.AddWithValue("@t4", strtdate);
        cmd.Parameters.AddWithValue("@t5", premium);
        cmd.Parameters.AddWithValue("@t6", purhdate);
        cmd.Parameters.AddWithValue("@t7", expdate);
        cmd.Parameters.AddWithValue("@t8", assured);
        int i = cmd.ExecuteNonQuery();                                        // executing sql query
        con.Close();
        GridView1.EditIndex = -1;
        showgrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int policy = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);                                            //convert data value to int
        con.Open();
        string qry = "delete from Policy where PolicyNo=@t1";   //creating sql query
        SqlCommand cmd = new SqlCommand(qry, con);                                       //sending sql query for execution
        cmd.Parameters.AddWithValue("@t1", policy);                        //adding values query parameters
        int i = cmd.ExecuteNonQuery();                                        // executing sql query
        con.Close();
        GridView1.EditIndex = -1;
        showgrid();
    }
}