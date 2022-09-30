<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="PolicyformPage.aspx.cs" Inherits="PolicyformPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="plcyheading" style="height:100px">
            <p>WE  AIM  TO   DELIVER  QUALITY  SERVICES  THAT  MEET  YOUR  EXPECTATIONS</p>
          
        <h6>We would appreciate if you could kindly take a moment to fill in our policy form.</h6>
        <label></label>
        <label id="lbl"></label>

        </div>
    <div id="policycontainer" style="height:335px; background-color:#66c8c9">
        <div id="left" style="height:330px; width:400px; float:left; left:99px">
            <img src="images/policy.png" />
        </div>
        <div id="right" style="height:330px; width:760px; float:right; right:84px">

            <div id="firttbl" style="float:left; width:360px; z-index:100;left:40px; top:20px">
                
            <table style="float:left">
                <tr>
                    <td id="icon"></td>
                    <td id="text">POLICY NO</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textform" placeholder="     Policy Number" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:10px"></td>
                    <td id="text" style="top:10px">DURATION</td>
                    <td style="top:10px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textform" ReadOnly="true" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:20px"></td>
                    <td id="text" style="top:20px">START<br />DATE</td>
                    
                    <td style="top:20px">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:30px"></td>
                    <td id="text" style="top:30px">PREMIUM</td>
                    <td style="top:30px">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="textform" placeholder="              Premium Amount" ReadOnly="true"></asp:TextBox></td>
                </tr>
            </table>
            </div>
            <div id="secondtbl" style="float:left; width:360px;  z-index:99; top:21px">
            <table style="float:left; right:88px;">
                <tr>
                    <td id="icon"></td>
                    <td id="text">NAME</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="textform" placeholder="      Policy Name" ReadOnly="true" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:10px"></td>
                    <td id="text" style="top:10px">PURCHASE<br />DATE
                    </td>
                    <td style="top:10px">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:20px"></td>
                    <td id="text" style="top:20px">EXPIRY<br />DATE</td>
                    <td style="top:20px">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                <tr>
                    <td id="icon" style="top:30px"></td>
                    <td id="text" style="top:30px">ASSURED</td>
                    <td style="top:30px">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="textform" placeholder="       Sum Assured" ReadOnly="true"></asp:TextBox></td>
                </tr>
            </table>
            </div>
            <div id="btn" style="z-index:90">
                <table style="width:760px">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="PROCEED TO BUY" CssClass="btnbuy" OnClick="Button1_Click" />
                        </td>
                        <td style="right:10px">
                            <asp:Button ID="Button2" runat="server" Text="MORE PLAN OPTION"  CssClass="btnbuy"/>
                        </td>
                    </tr>
                </table>
            </div>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="startdate" AutoPostBack="true">
                                <asp:ListItem>DD</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="startdate" AutoPostBack="true">
                                <asp:ListItem>MM</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="startdate" AutoPostBack="true">
                                <asp:ListItem>YYYY</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="Label" Style="left: 179px; top:60px" Visible="false"></asp:Label>
        </div>

    </div>
</asp:Content>

