<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="fogpasd" style="height:450px">
        <div id="left" style="width:500px; height:400px; float:left; left:139px; top:30px" >
            <img src="images/forgot-password-cartoon.png" />
        </div>
        <div id="right" style="width:600px; height:430px; float:right; right:84px">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="usertype">
                            <asp:ListItem>Select UserType</asp:ListItem>
                            <asp:ListItem>Customer</asp:ListItem>
                            <asp:ListItem>Agent</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>

            <table style="width:666px">
                <tr>
                    <td id="head"><label style="border-bottom:2px solid #00b289">Forget Your Password ?</label><label style="border-bottom:2px solid #d9d9d9; padding-left:275px; right:165px"></label></td>
                </tr>
                <tr>
                    <td><p>Please select Usertype and enter your Id and Email Address. You will receive</p><p> Email that contain your Password.</p></td>
                </tr>
            </table>
            <table style="top:20px">
                <tr>
                    <td id="icon"></td>
                    <td id="text">SELECT</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textform" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="icon" style="top:10px"></td>
                    <td id="text" style="top:10px">YOUR ID</td>
                    <td style="top:10px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textform" placeholder="  Enter Your ID"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="icon" style="top:20px"></td>
                    <td id="text" style="top:20px">EMAIL</td>
                    <td style="top:20px">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textform" placeholder="Your Email ID                                   " Style="text-align:right"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table style="top:50px">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="SEND MY PASSWORD" CssClass="btnsend" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="font-family:Roboto; font-size:15px; color:#ec0a3a; top:5px; text-align:center; font-weight:600">
                        <asp:Label ID="Label6" runat="server" Text="Label" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

