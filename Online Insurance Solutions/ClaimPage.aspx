<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ClaimPage.aspx.cs" Inherits="PayPremiumPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="claimheading" style="height:125px; background-color:rgba(240, 244, 249, 0.43)">
            <p>our online claims service for you</p>
          
        <h6>We ensure that when you seek guidance during testing times, our representative <br />
will stand by your side and assist you to get your claim settled.</h6>
        <label></label>
        <label id="lbl"></label>

        </div>
    <div id="claim" style="height:440px; background-image:url(images/bg_repeat.png)">
        <div id="left" style="height:380px; width:500px; border:5px solid white; float:left; left:230px; box-shadow: 1px 1px 5px rgba(127, 129, 129, 0.30); top:20px; background-color:white; padding-top:10px">

            <table style="left:30px">
                <tr>
                    <td id="icon"></td>
                    <td id="text">REQUEST ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textform" placeholder="Request ID" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:15px"></td>
                    <td id="text" style="top:15px">DATE</td>
                    <td style="top:15px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:165px"></td>
                    <td id="text" style="top:165px">STATUS</td>
                    <td style="top:165px">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textform"></asp:TextBox></td>
                </tr>
                </table>
            <table>
                <tr>
                    <td id="icon1"></td>
                    <td id="text1">Reason</td>
                </tr>
            </table>
            <table>
                <tr>
                    <td style="bottom:30px">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="textform1" placeholder=" Type Your Reason"></asp:TextBox></td>
                </tr>
            </table> 
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="reson">
                <asp:ListItem>Select Claim Status</asp:ListItem>
                <asp:ListItem>New Policy</asp:ListItem>
                <asp:ListItem>Old Policy</asp:ListItem>
            </asp:DropDownList>          
            <table>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="premium" OnClick="Button1_Click"/></td>
                    <td><asp:Button ID="Button2" runat="server" Text="CANCEL" CssClass="premium" OnClick="Button2_Click"/></td>
                </tr>
            </table>

        </div>
        <div id="right" style="height:390px; width:460px; border:5px solid white; float:right; right:213px; box-shadow: 2px 1px 2px rgba(127, 129, 129, 0.30); background-color:#569099; top:20px">
            <img src="images/claim.png" />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" CssClass="claimmsg"></asp:Label>
        </div>
    </div>
</asp:Content>

