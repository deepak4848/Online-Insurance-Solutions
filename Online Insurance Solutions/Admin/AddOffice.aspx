<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage2.master" AutoEventWireup="true" CodeFile="AddOffice.aspx.cs" Inherits="Admin_AddOffice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container" style="background-color:white; height: 430px; background-image:url(images/bg_repeat.png)">
        <div id="left" style="background-color:#eeecf9; width:470px; height:390px; left:99px; float:left; top:20px; z-index:100; background-image:url(images/agtbg.jpg); background-repeat: no-repeat; box-shadow: -2px 4px 8px #999999">
            <table style="width:470px; height:390px; background-color:rgba(0, 132, 145, 0.74);">
                <tr>
                    <td><h2></h2><h1>ADD &nbsp;NEW &nbsp;OFFICE &nbsp;AND &nbsp;BRANCH</h1></td>
                </tr>
                <tr>
                    <td>
                        <h3>Enter the details of new branch and 
                            <br />office that easy to find</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="MANAGE OFFICE" Style="border: none;
    padding-left: 70px;
    padding-right: 70px;
    padding-bottom: 10px;
    padding-top: 10px;
    border-radius: 4px;
    background-color: #fa774d;
    color: white;
    font-size: 15px;
    font-weight: normal;
    letter-spacing: 1px;
    font-weight: normal;
    font-family: Roboto,FontAwesome;
    box-shadow: 1px 1px 5px rgba(127, 129, 129, 0.80);
    cursor: pointer;
    left:100px" OnClick="Button3_Click"/>
                   </td>
                </tr>
            </table>

        </div>
        <div id="right" style="background-color:#eeecf9; width:766px; height:390px; float:right; top:20px; right:83px; box-shadow: 3px 3px 6px #999999">
            <div id="reg" style="top:40px">
                <table style="right:140px" >
                    <tr>
                        <td id="icon"></td>
                        <td id="regtext">OFFICE ID</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" CssClass="txtform" ReadOnly="true"></asp:TextBox></td>
                        <td id="icon1"></td>
                        <td id="regtext1">OFFICE NAME</td>
                        <td><asp:TextBox ID="TextBox4" runat="server" CssClass="txtform1" placeholder="Office Name"></asp:TextBox></td>
                    </tr>
                    
                    
                </table>
            </div>
            <div id="reg1" style="top:55px">
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
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="address" TextMode="MultiLine" placeholder="  Office full Address"></asp:TextBox>
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
                                    <td id="adicon1" style="top:-56px"></td>
                                    <td id="adtext1" style="top:-56px">CITY</td>
                                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dob2">
                                        <asp:ListItem>Select City</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                    </asp:DropDownList>
                                    <td style="top:4px"><asp:TextBox ID="TextBox9" runat="server" CssClass="adtxtform" ReadOnly="True"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td id="adicon1" style="top:-52px"></td>
                                    <td id="adtext1" style="top:-52px">PINCODE</td>
                                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="dob3">
                                        <asp:ListItem>Select Pinconde</asp:ListItem>
                                        <asp:ListItem>11001</asp:ListItem>
                                        <asp:ListItem>11002</asp:ListItem>
                                    </asp:DropDownList>
                                    <td style="top:8px"><asp:TextBox ID="TextBox10" runat="server" CssClass="adtxtform" ReadOnly="True"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="reg2">
                <table style="right:146px">
                    <tr>
                        <td id="icon"></td>
                        <td id="regtext">ContactNo.</td>
                        <td><asp:TextBox ID="TextBox11" runat="server" CssClass="txtform" placeholder="           Office Contact No."></asp:TextBox></td>
                        <td id="icon1"></td>
                        <td id="regtext1">EMAIL</td>
                        <td><asp:TextBox ID="TextBox13" runat="server" CssClass="txtform1" placeholder="Office Email ID"></asp:TextBox></td>
                    </tr>
                    
                </table>
            </div>
            <div id="btn" style="top:20px">
                <table style="right:15px">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="SUBMIT " CssClass="btnsub" OnClick="Button1_Click" /></td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="RESET " CssClass="btnsub" /></td>
                    </tr>
                    <tr>
                        <td style="bottom:40px; text-align:right; left:230px; font-family:Roboto; font-size:20px; font-weight:bold; color:#ff0000">
                            <asp:Label ID="Label1" runat="server" Text="Please Check The Office Detail" Visible="false" Style="top:46px"></asp:Label></td>
                    </tr>
                </table>
            </div>
        </div>
         </div>
</asp:Content>

