<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="PaymentPage1.aspx.cs" Inherits="PolicyformPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="plcyheading" style="height:100px; background-color:rgba(240, 244, 249, 0.43)">
            <p>WE  AIM  TO   DELIVER  QUALITY  SERVICES  THAT  MEET  YOUR  EXPECTATIONS</p>
          
        <h6>We would appreciate if you could kindly take a moment to fill in our policy form.</h6>
        <label></label>
        <label id="lbl"></label>

        </div>
    <div id="pymtcontainer" style="height:380px; background-color:#ffffff">
        <div id="left" style="height:330px; width:400px; float:left; left:99px">
            <img src="images/payment.png" />
        </div>
        <div id="right" style="height:350px; width:760px; float:right; right:84px; top:20px">

            <div id="firttbl" style="float:left; width:360px; z-index:100;left:40px; bottom:20px">
                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="bank">
                    <asp:ListItem>Select Bank</asp:ListItem>
                    <asp:ListItem>SBI</asp:ListItem>
                    <asp:ListItem>HDFC</asp:ListItem>
                    <asp:ListItem>BOB</asp:ListItem>
                </asp:DropDownList>
            <table style="float:left">
                <tr>
                    <td id="icon"></td>
                    <td id="text">Policy</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:10px"></td>
                    <td id="text" style="top:10px">Plan</td>
                    <td style="top:10px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textform" ReadOnly="true" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:20px"></td>
                    <td id="text" style="top:20px">AMOUNT</td>
                    <td style="top:20px">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="textform"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:30px"></td>
                    <td id="text" style="top:30px">DATE</td>
                    <td style="top:30px">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:40px"></td>
                    <td id="text" style="top:40px">BANK</td>
                    <td style="top:40px">
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
            </table>
            </div>
            <div id="secondtbl" style="float:left; width:360px;  z-index:99">
            <table style="float:left; right:88px;">
                <tr>
                    <td id="icon"></td>
                    <td id="text">CARD TYPE</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:10px"></td>
                    <td id="text" style="top:10px">CARD&nbsp;NO.</td>
                    <td style="top:10px">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="textform" placeholder="                    Enter Card Number" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:20px"></td>
                    <td id="text" style="top:20px">VALID<br />UPTO</td>
                    <td style="top:20px">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="textform" placeholder="                                           /" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:30px"></td>
                    <td id="text" style="top:30px">CVV&nbsp;NO.</td>
                    <td style="top:30px">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="textform" placeholder="           Enter CVV NO."></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:40px"></td>
                    <td id="text" style="top:40px">NAME</td>
                    <td style="top:40px">
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="textform" placeholder="                   Card Holder Name"></asp:TextBox></td>
                </tr>
            </table>
            </div>
            <div id="btn" style="z-index:90">
                <table style="width:760px">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="MAKE A PAYMENT" CssClass="btnbuy" OnClick="Button1_Click" />
                        </td>
                        <td style="right:10px">
                            <asp:Button ID="Button2" runat="server" Text="CANCEL"  CssClass="btnbuy"/>
                        </td>
                    </tr>
                </table>
                
            </div>
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="validupto">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="validupto">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                            </asp:DropDownList>
            
            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="cardtype">
                                <asp:ListItem>Select Card Type</asp:ListItem>
                                <asp:ListItem>Debit Card</asp:ListItem>
                                <asp:ListItem>Credit Card</asp:ListItem>
                            </asp:DropDownList>
        </div>
        <p><img src="images/cvv.png" /></p>
        <asp:Label ID="Label1" runat="server" Text="Label" Style="top: 317px; left: 490px" Visible="false"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Style="top: 317px; left: 490px" Visible="false"></asp:Label>
    </div>

</asp:Content>

