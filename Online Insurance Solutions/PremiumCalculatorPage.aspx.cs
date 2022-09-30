using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PayPremiumPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int n = 1970; n <= 2017; n++)
            DropDownList4.Items.Add(n.ToString());
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        Panel3.Visible = false;
        Panel2.Visible = false;
        Panel1.Visible = false;
        switch(DropDownList1.SelectedItem.Text)
        {
            case "Child Plan":
                Panel1.Visible = true;
                break;
            case "Individual Plan":
                Panel2.Visible = true;
                break;
            case "Retirement Plan":
                Panel3.Visible = true;
                break;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        Label2.Text = DropDownList1.Text;
        Label4.Text = DropDownList5.Text;
        Label6.Text = TextBox3.Text;
        Label8.Text = DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;
        int trm = Convert.ToInt32(DropDownList5.SelectedValue);
        int sum = Convert.ToInt32(TextBox3.Text);
        int yearly = sum / trm;
        int halfyrl = sum / (trm * 2);
        int qurtly = sum / (trm * 4);
        int month = sum / (trm * 12);
        Label9.Text = Convert.ToString(yearly);
        Label10.Text = Convert.ToString(halfyrl);
        Label11.Text = Convert.ToString(qurtly);
        Label12.Text = Convert.ToString(month);

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        if(RadioButton1.Checked)
        {
            Session["premium"] = Label9.Text;
            Session["sumassrd"] = Label6.Text;
            Session["duration"] = Label4.Text;
            Session["plcynm"] = Label2.Text;
            Response.Redirect("PolicyformPage.aspx");
        }
        else if(RadioButton2.Checked)
        {
            Session["premium"] = Label10.Text;
            Session["sumassrd"] = Label6.Text;
            Session["duration"] = Label4.Text;
            Session["plcynm"] = Label2.Text;
            Response.Redirect("PolicyformPage.aspx");
        }
        else if(RadioButton3.Checked)
        {
            Session["premium"] = Label11.Text;
            Session["sumassrd"] = Label6.Text;
            Session["duration"] = Label4.Text;
            Session["plcynm"] = Label2.Text;
            Response.Redirect("PolicyformPage.aspx");
        }
        else if(RadioButton4.Checked)
        {
            Session["premium"] = Label12.Text;
            Session["sumassrd"] = Label6.Text;
            Session["duration"] = Label4.Text;
            Session["plcynm"] = Label2.Text;
            Response.Redirect("PolicyformPage.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Please Select Premium Cycle";
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        Label2.Text = DropDownList1.Text;
        Label4.Text = DropDownList5.Text;
        Label6.Text = TextBox3.Text;
        Label8.Text = DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;
        int trm = Convert.ToInt32(DropDownList5.SelectedValue);
        int sum = Convert.ToInt32(TextBox3.Text);
        int yearly = sum / trm;
        int halfyrl = sum / (trm * 2);
        int qurtly = sum / (trm * 4);
        int month = sum / (trm * 12);
        Label9.Text = Convert.ToString(yearly);
        Label10.Text = Convert.ToString(halfyrl);
        Label11.Text = Convert.ToString(qurtly);
        Label12.Text = Convert.ToString(month);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        Label2.Text = DropDownList1.Text;
        Label4.Text = DropDownList5.Text;
        Label6.Text = TextBox3.Text;
        Label8.Text = DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;
        int trm = Convert.ToInt32(DropDownList5.SelectedValue);
        int sum = Convert.ToInt32(TextBox3.Text);
        int yearly = sum / trm;
        int halfyrl = sum / (trm * 2);
        int qurtly = sum / (trm * 4);
        int month = sum / (trm * 12);
        Label9.Text = Convert.ToString(yearly);
        Label10.Text = Convert.ToString(halfyrl);
        Label11.Text = Convert.ToString(qurtly);
        Label12.Text = Convert.ToString(month);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}