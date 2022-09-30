<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container" style="background-color:#0b4d67; height:442px; width: 1337px; padding-right: 12px">
    <div id="back" style="width:690px; height:442px; float:left; left:60px">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="droplist">
                                    <asp:ListItem>Select UserType</asp:ListItem>
                                    <asp:ListItem>Custmomer</asp:ListItem>
                                    <asp:ListItem>Agent</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Text="lablel" Visible="false" Style="z-index:100; font-family:Roboto; font-size:12px; color:red; font-weight:400; top:276px; left:87px"></asp:Label>
        <table style="bottom:26px; left:1px">
            <tr>
                <td style="float:right; top:18px; left:35px; z-index:100">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/cartoon.png" />
                </td>
                <td>
                    <table id="loginform">
                        <tr>
                            <td id="icon"></td>
                            <td id="text">USERNAME</td>
                            <td>
                                <asp:TextBox ID="txtusername" runat="server" CssClass="txtusername" placeholder="Type Your User Name"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td id="icon"  style="top:10px"></td>
                            <td id="text" style="top:10px">PASSWORD</td>
                            <td style="top:10px">
                                <asp:TextBox ID="txtpassword" runat="server" CssClass="txtusername" TextMode="Password" placeholder="Type Your Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td id="icon" style="top:20px"></td>
                            <td id="text" style="top:20px">USERTYPE</td>
                            <td style="top:20px">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtusername" ReadOnly="True"></asp:TextBox>
                            </td>
    
                        </tr>
                        </table>
                    <table style="bottom:120px; width:385px; left:80px">
                             <tr>
               
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="  Remember Me" CssClass="remember"/>
                                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="forget" NavigateUrl="~/forgetpassword.aspx">Forget Password ?</asp:HyperLink>
                            </td>
    
                        </tr>
                         <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnlogin" OnClick="Button1_Click"/>                   
                            </td>
                        </tr>
                </table>    
                </td>
            </tr>
        </table>
        <div>
            
        </div>
        <div id="ext">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Ellipse1.png" CssClass="dot" />
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="facebook" ImageUrl="~/images/facebook.png" />
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="gmail" ImageUrl="~/images/google.png"/>      
        </div>
    </div>
        <div id="back1">
            <img src="images/loginimage.png" />
            <p>I &nbsp;&nbsp;don't &nbsp;&nbsp;have &nbsp;&nbsp;an &nbsp;&nbsp;account &nbsp;&nbsp;on &nbsp;&nbsp;Suraksha &nbsp;&nbsp;Life &nbsp;&nbsp;Insurance
            </p>
            <asp:Button ID="Button2" runat="server" Text="Register" CssClass="signup" OnClick="Button2_Click"/>
        </div>
        </div>
    </asp:Content>

