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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox3.Text=="")
        {
            Label1.Visible = true;
            Label1.Text = "Please Enter Request ID";
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
            conn.Open();
            string qryy = "select ReqestId,date,reason,status from Claim where ReqestId=@t1";
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
                Label1.Visible = true;
                Label1.Text = "Your Request ID Not found";
            }
        }
    }
}