
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="CustomerRegistration.aspx.cs" Inherits="CustomerRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container" style="background-color:white; height: 505px; background-image:url(images/bg_repeat.png)">
        <div id="left" style="background-color:#eeecf9; width:470px; height:465px; left:99px; float:left; top:20px; z-index:100; background-image:url(images/bg1.jpg); background-repeat: no-repeat; box-shadow: -2px 4px 8px #999999">
            <table id="cust" style="width:470px; background-color:rgba(67, 206, 179, 0.90)">
                <tr>
                    <td><h2></h2><h1>&nbsp;Customer Registration</h1></td>
                </tr>
                <tr>
                    <td>
                        <h3>Wildest choice of health insurance plans, 
                            <br />sized to your requirements!</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                         250+ plans from 18 insurance companies<br /><br /> instant Purchase; Immediate Receipt
                        <br /><br /> Free Support for 7 days a week, 365 a year
                        <br /><br /> Full & free end-to-end assistance on claims
                        <br /><br /> More than 2 lakh happy & satisfied customers
                         </p>
                   </td>
                </tr>
            </table>

        </div>
        <div id="right" style="background-color:#eeecf9; width:766px; height:450px; float:right; top:20px; right:83px; padding-top:15px; box-shadow: 3px 3px 6px #999999">
            <div id="reg">
                <table id="cust1" style="right:131px" >
                    <tr>
                        <td id="icon"></td>
                        <td id="regtext">ID</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" CssClass="txtform" ReadOnly="true"></asp:TextBox></td>
                        <td id="icon1"></td>
                        <td id="regtext1">NAME</td>
                        <td><asp:TextBox ID="TextBox4" runat="server" CssClass="txtform1" placeholder="     Your Full Name"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td id="icon" style="top:-16px"></td>
                        <td id="regtext" style="top:-16px">DOB</td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dob">
                                <asp:ListItem>Days</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dob">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dob">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                            </asp:DropDownList>
                        <td style="top:4px">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtform" ReadOnly="True"></asp:TextBox></td>
                        <td id="icon1" style="top:-16px"></td>
                        <td id="regtext1" style="top:-16px">MOBILE</td>
                        <td style="top:4px"><asp:TextBox ID="TextBox5" runat="server" CssClass="txtform1" placeholder="      Mobile Number"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td id="icon" style="top:-12px"></td>
                        <td id="regtext" style="top:-12px">SEX</td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text=" Male" CssClass="radiobtn" GroupName="sex"/>
                        <asp:RadioButton ID="RadioButton2" runat="server" Text=" Female" CssClass="radiobtn" GroupName="sex"/>
                        <td style="top:8px"><asp:TextBox ID="TextBox3" runat="server" CssClass="txtform" ReadOnly="true"></asp:TextBox></td>
                        <td id="icon1" style="top:-12px"></td>
                        <td id="regtext1" style="top:-12px">POLICY</td>
                        <td style="top:8px"><asp:TextBox ID="TextBox6" runat="server" CssClass="txtform1" placeholder="     Policy Number"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <div id="reg1">
                <table style="right:25px" >
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td style="border:1px solid #d9d8d8; background:#effaff; bottom:9px; left: 157px;height: 40px;width: 277px; text-align: center; border-top-right-radius:4px; font-family:Roboto; font-size:10px; color:#4dc0eb">ADDRESS</td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td id="adicon"></td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="address" TextMode="MultiLine" placeholder="     Resident Address"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td id="adicon1"></td>
                                    <td id="adtext1">STATE</td>
                                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dob1">
                                        <asp:ListItem>Select State</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                    </asp:DropDownList>
                                    <td><asp:TextBox ID="TextBox8" runat="server" CssClass="adtxtform" ReadOnly="true"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td id="adicon1" style="top:-46px"></td>
                                    <td id="adtext1" style="top:-46px">CITY</td>
                                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dob2">
                                        <asp:ListItem>Select City</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                    </asp:DropDownList>
                                    <td style="top:4px"><asp:TextBox ID="TextBox9" runat="server" CssClass="adtxtform" ReadOnly="True"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td id="adicon1" style="top:-42px"></td>
                                    <td id="adtext1" style="top:-42px">PINCODE</td>
                                    <td style="top:8px"><asp:TextBox ID="TextBox10" runat="server" CssClass="adtxtform" placeholder="       Enter Pinconde"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="reg2">
                <table id="cust2" style="right:146px">
                    <tr>
                        <td id="icon"></td>
                        <td id="regtext">USERNAME</td>
                        <td><asp:TextBox ID="TextBox11" runat="server" CssClass="txtform" placeholder="    Your Username"></asp:TextBox></td>
                        <td id="icon1"></td>
                        <td id="regtext1">EMAIL</td>
                        <td><asp:TextBox ID="TextBox13" runat="server" CssClass="txtform1" placeholder="Your Email ID" TextMode="Email"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td id="icon" style="top:-56px"></td>
                        <td id="regtext" style="top:-56px" >PASSWORD</td>
                        <td style="top:4px"><asp:TextBox ID="TextBox12" runat="server" CssClass="txtform" placeholder="    Enter Password" TextMode="Password"></asp:TextBox></td>
                        <td id="icon1" style="top:-56px"></td>
                        <td id="regtext1" style="top:-56px">CONFIRM</td>
                        <td style="top:4px"><asp:TextBox ID="TextBox14" runat="server" CssClass="txtform1" placeholder="          Confirm Password" TextMode="Password"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <div id="btn">
                <table style="right:15px">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="SUBMIT " CssClass="btnsub" OnClick="Button1_Click" OnClientClick="return validate()" /></td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="RESET " CssClass="btnsub" OnClick="Button2_Click" /></td>
                    </tr>
                    <tr>
                        <td style="bottom:40px; text-align:right; left:230px; font-family:Roboto; font-size:20px; font-weight:bold; color:#ff0000">
                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></td>
                    </tr>
                </table>
            </div>
        </div>
         </div>
  </asp:Content>

