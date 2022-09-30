<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="contact" style="height:460px">
        <div id="right" style="height:330px; float:right; width:466px; right:84px; top:30px">

            <table>
                <tr>
                    <td id="head"><label style="border-bottom:2px solid #00b289">Get in Touch</label><label style="border-bottom:2px solid #d9d9d9; padding-right:250px; right:80px"></label></td>
                </tr>
                <tr>
                    <td><p>If you have any questions, just fill in the contact form. and we
                        will answer you</p><p> shortly. If you are living nearby, come visit
                        Suraksha Life Insurace at one of</p><p>our comfortable offices.</p></td>
                </tr>
            </table>


            <table style="top:30px">
                <tr>
                    <td id="head1"><label style="border-bottom:2px solid #00b289">How to Find Us</label><label style="border-bottom:2px solid #d9d9d9; padding-right:250px; right:80px"></label></td>
                </tr>
            </table>


            <table style="top:40px">
                <tr>
                    <td id="icon" style="bottom:5px; background-color:white; border:none"></td>
                    <td><p>775/3, Dr ketkar road, Deccan Gymkhana,</p>
                        <p>Pune, Maharashtra 411004, India</p></td>
                </tr>
                <tr>
                    <td id="icon" style="top:15px; background-color:white; border:none" ></td>
                    <td style="top:10px"><p>Telephone: +91 1800-00-02333</p></td>
                </tr>
                <tr>
                    <td id="icon" style="top:25px; background-color:white; border:none"></td>
                    <td style="top:20px"><p>E-mail: admin@suraksha.com</p></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="top:70px; right:30px">
                        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label" Style="font-family:Roboto; font-size:15px; color:red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div id="left" style="height:440px; width:560px; left:99px; top:30px">
            <div>
                <table >
                    <tr>
                        <td id="icon"></td>
                        <td id="text">NAME</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtform" placeholder="Enter Your Name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td id="icon" style="top:10px"></td>
                        <td id="text" style="top:10px">EMAIL</td>
                        <td style="top:10px">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtform" placeholder="Enter Your Email Address"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td id="icon" style="top:20px"></td>
                        <td id="text" style="top:20px">Subject</td>
                        <td style="top:20px">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="txtform" placeholder="Enter Your Subject"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="message">
                <table>
                    <tr>
                        <td id="icon1" style="top:30px"></td>
                        <td id="text1" style="top:30px">MESSAGE</td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td style="top:30px">
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="msg" placeholder="
  Enter Your Message Here......."></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="btn">

                <table>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="      SEND US NOW      " CssClass="btnsend" OnClick="Button1_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="RESET " CssClass="btnsend" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
    <div id="map" style="height:305px; background-color:#526579; top:5px; border-top:3px solid #00b289">
    <img src="images/map.jpg" />
    </div>
</asp:Content>

