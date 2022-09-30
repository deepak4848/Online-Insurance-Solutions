<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PayPremiumPage.aspx.cs" Inherits="PayPremiumPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="premiumheading" style="height:125px; background-color:rgba(240, 244, 249, 0.43)">
            <p>FIND THE  MOST  CONVENIENT WAY TO QUICKLY  PAY YOUR  PREMIUMS</p>
          
        <h6>We understand your fast-paced life and the struggles that come along with it. To provide a solution to one of<br />
your worries of paying premiums on time, we offer to quickly pay your premiums online.</h6>
        <label></label>
        <label id="lbl"></label>

        </div>
    <div id="paypremium" style="height:440px; background-image:url(images/bg_repeat.png)">
        <div id="left" style="height:380px; width:500px; border:5px solid white; float:left; left:230px; box-shadow: 1px 1px 5px rgba(127, 129, 129, 0.30); top:20px; background-color:white; padding-top:10px">

            <table style="left:30px">
                <tr>
                    <td id="icon"></td>
                    <td id="text">ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textform" placeholder="Enter your ID"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:15px"></td>
                    <td id="text" style="top:15px">DOB</td>
                    <td style="top:15px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:30px"></td>
                    <td id="text" style="top:30px">POLICY</td>
                    <td style="top:30px">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textform" placeholder="           Enter Policy Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:50px"></td>
                    <td id="text" style="top:50px">MOBILE</td>
                    <td style="top:50px">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="textform" placeholder="     Enter Mobile No."></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:65px"></td>
                    <td id="text" style="top:65px">EMAIL</td>
                    <td style="top:65px; z-index:98">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="textform" placeholder="           Enter Email Address"></asp:TextBox></td>
                </tr>
            </table>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="startdate">
                                <asp:ListItem>Days</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="startdate">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="startdate">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                            </asp:DropDownList>
           
            <table>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="PAY PREMIUM" CssClass="premium" OnClick="Button1_Click"/></td>
                    <td><asp:Button ID="Button2" runat="server" Text="CANCEL" CssClass="premium" OnClick="Button2_Click"/></td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
        <div id="right" style="height:390px; width:460px; border:5px solid white; float:right; right:213px; box-shadow: 2px 1px 2px rgba(127, 129, 129, 0.30); top:20px">
            <img src="images/premimage.png" />
        </div>
    </div>
</asp:Content>

