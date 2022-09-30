<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage2.master" AutoEventWireup="true" CodeFile="ManageCustomer.aspx.cs" Inherits="Admin_ManageOffice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="plcyheading" style="height:100px">
            <p>WE  AIM  TO   DELIVER  QUALITY  SERVICES  THAT  MEET  YOUR  EXPECTATIONS</p>
          
        <h6>We would appreciate if you could kindly take a moment to manage your customer details.</h6>
        <label></label>
        <label id="lbl"></label>

        </div>
<div id="admin" align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="gridview1"
        AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="CustId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
        OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" >
        <AlternatingRowStyle BackColor="#effaff" />
        <Columns>
            <asp:CommandField ButtonType="Button" HeaderText="Action" ShowEditButton="True" ShowHeader="True" ControlStyle-CssClass="btnbuy" >
<ControlStyle CssClass="btnbuy"></ControlStyle>
            </asp:CommandField>
            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="ACTION" ShowHeader="True" Text="Delete" ControlStyle-CssClass="btnbuy" >
<ControlStyle CssClass="btnbuy"></ControlStyle>
            </asp:ButtonField>
            <asp:BoundField DataField="CustId" HeaderText="Customer ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="dob" HeaderText="DOB" />
            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
            <asp:BoundField DataField="sex" HeaderText="Sex" />
            <asp:BoundField DataField="PolicyNo" HeaderText="Policy No" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="state" HeaderText="state" />
            <asp:BoundField DataField="city" HeaderText="City" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
            <asp:BoundField DataField="usernm" HeaderText="UserName" />
            <asp:BoundField DataField="emailid" HeaderText="Email Id" />
            <asp:BoundField DataField="passwd" HeaderText="Password" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#4dc0eb" ForeColor="#555555" HorizontalAlign="center" CssClass="pgr"/>
        <RowStyle BackColor="#ffffff" ForeColor="#555555" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</div>
</asp:Content>

