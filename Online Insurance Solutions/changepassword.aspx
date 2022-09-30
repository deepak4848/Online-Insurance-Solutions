<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="chngpsd" style="height:500px">
        <div id="left" style="height: 450px; width: 900px; float: left; left: 230px; top: 20px; border:6px solid white; box-shadow:2px 1px 10px 1px #b3b9b9; padding-left:20px">

            <table>
                <tr>
                    <td id="head"><label style="border-bottom:2px solid #00b289; padding-bottom:5px">Change Your Password</label><label style="border-bottom:2px solid #d9d9d9; padding-left:180px; padding-bottom:5px; right:120px"></label></td>
                </tr>
                <tr>
                    <td style="top:5px"><p> &nbsp;&nbsp;To change your password, provide the following information, then click continue</p>
                        <p> &nbsp;&nbsp;Password are case-sensitive and must be at least 6 characters.</p>
                        <p> &nbsp;&nbsp;A good password should contain a mix of capital and lower-case letters,</p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numbers and symbols.</p>
                    </td>
                </tr>
            </table>
            <asp:Panel ID="Panel1" runat="server" Visible="true">
                <table style="top:15px">
                    <tr>
                        <td id="icon"></td>
                        <td id="text">Your ID</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="textform" placeholder="Enter Your ID"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td id="icon" style="top:5px"></td>
                        <td id="text" style="top:5px">CURRENT</td>
                        <td style="top:5px">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="textform" placeholder="                   Enter Current Password"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td style="top:25px">
                            <asp:Button ID="Button1" runat="server" Text="CONTINUE" CssClass="btnsend" OnClick="Button1_Click"/></td>
                    </tr>
                </table>


            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="false">
                <table style="top:25px">
                    <tr>
                        <td id="icon1"></td>
                        <td id="text1">NEW</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="textform" placeholder="Enter New Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td id="icon1" style="top:5px"></td>
                        <td id="text1" style="top:5px">CONFIRM</td>
                        <td style="top:5px">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="textform" placeholder="    Confirm New Password"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td style="top:35px">
                            <asp:Button ID="Button2" runat="server" Text="RESET PASSWORD" CssClass="btnsend" OnClick="Button2_Click" /></td>
                    </tr>
                    <tr>
                        <td style="top:45px; font-family:Roboto; font-size:15px; color:#ff0000"></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Label ID="Label2" runat="server" Visible="false" Text="Label" Style="font-family: roboto;font-size: 14px; color: red; top: 45px; left: 5px"></asp:Label>
        </div>
        <div id="right" style="height:450px; width:382px; float:right; right:184px; top:25px">
            <img src="Admin/images/changpassword.jpg" />
        </div>
    </div>
</asp:Content>

