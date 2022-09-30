<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="SignUpPage.aspx.cs" Inherits="SignUpPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="signupcontainer" style="height:550px">
        <div id="heading5" style="height:80px" align="center">
            <p><label style="border-bottom:3px solid #cdcdcd; padding-left:150px; left:70px; z-index:100; top:22px">
               </label><label style="border-bottom:3px solid #00b289; padding-bottom:10px; font-family:Bebas; font-size:35px; color:#15677b; top:10px">getting&nbsp;&nbsp; in&nbsp;&nbsp; touch&nbsp;&nbsp; with&nbsp;&nbsp; us&nbsp;&nbsp; is&nbsp;&nbsp; easy</label>
                <label style="border-bottom:3px solid #cdcdcd; padding-left:150px; right:70px; z-index:100; top:22px"></label></p>
        </div>

        <div id="left" style="height:470px; float:left; width:500px; left:150px">
            <h1>customer</h1>
            <img src="images/customer copy.png" />
            <asp:Button ID="Button1" runat="server" Text="Register Now" CssClass="btnregister" OnClick="Button1_Click" />
        </div>
        <div id="right" style="height:470px; float:right; width:500px; right:150px">
            <h1>agent</h1>
            <img src="images/agent copy.png" />
            <asp:Button ID="Button2" runat="server" Text="Register Now" CssClass="btnregister" OnClick="Button2_Click" />
        </div>
        <h2></h2>
    </div>
</asp:Content>

