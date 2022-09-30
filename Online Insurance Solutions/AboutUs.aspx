<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="top" style="height:330px; background-color:white; padding-top:20px">
        <div id="left" style="background-color:#ffd800; width:460px; height:330px; float:left; left:99px">
            <img src="images/aboutus.jpg"/>
        </div>
        <div id="right" style="width:670px; height:330px; float:right; right:89px">

            <table style="left:20px">
                <tr>
                    <td id="head"><label style="border-bottom:2px solid #00b289">About Us</label><label style="border-bottom:2px solid #d9d9d9; padding-right:250px; right:80px"></label></td>
                </tr>
                <tr>
                    <td><p>The professionals at Suraksha life Insurance Company are experts in their
                        fields and will help you insurance</p>
                        <p> solutions that fit your needs. We look forward to working with you!</p></td>
                </tr>
            </table>
            <table style="padding-top:20px">
                <tr>
                    <td id="icon" style="background-color:white; border:none"></td>
                    <td id="head1">24/7 Support</td>
                    <td id="icon"  style="background-color:white; border:none"></td>
                    <td  id="head1">Our Mission</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><p>Our dedicated support professional are always</p>
                        <p>here to help no matter your issues.</p></td>
                    <td>&nbsp;</td>
                    <td><p>Our mission to provide outstanding service and </p>
                       <p>superior coverage to every one of our Clients.</p></td>
                </tr>
                <tr style="top:10px">
                    <td id="icon1"></td>
                    <td id="head2">Affordable Price</td>
                    <td id="icon1"></td>
                    <td id="head2">Payment</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><p>We are proud to offer our clients compettive</p> 
                        <p>pricing, broad choice of policy plans.</p></td>
                    <td>&nbsp;</td>
                    <td><p>Online premium payment should be made</p><p>by the policyholder himself.</p>
                        </td>
                </tr>
            </table>

        </div>
    </div>
    <div id="down" style="height:260px; background-color:#f2f3f8">
        <div id="left1" style="width:509px; height:240px; float:left; left:99px; padding-top:20px">

            <table>
                <tr>
                    <td id="head2"><label style="border-bottom:2px solid #00b289">You Can Trust Us</label><label style="border-bottom:2px solid #d9d9d9; padding-right:200px; right:60px"></label></td>
                </tr>
                <tr>
                    <td><p>Our agency can provide you and your family with quality insurance for your</p>
                        <p>personal, business and financial needs. Our knowledgeable agents can help</p>
                        <p>your find affordable and reliable life insuance.</p>
                        <br />
                        <br />
                        <p>Our focus is to help our clients grow their assets. We believe in being local</p>
                        <p>and we strive to improve the communities where we live and work.</p></td>
                </tr>
            </table>

        </div>
        <div id="right1" style="width:647px; height:240px; float:right; right:89px; padding-top:20px">
            <p>life Insurance<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;70%</label></p>
            <div style="border-bottom:4px solid #ffffff; border-radius:4px; box-shadow:1px 1px 3px rgba(128, 128, 128, 0.42)">                     
            </div>
            <div id="progress"></div>
            <p>Agents<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 54%</label></p>
            <div style="border-bottom:4px solid #ffffff; border-radius:4px; box-shadow:1px 1px 3px rgba(128, 128, 128, 0.42)">                       
            </div>
            <div id="progress1"></div>
            <p>Muturity<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 87%</label></p>
            <div style="border-bottom:4px solid #ffffff; border-radius:4px; box-shadow:1px 1px 3px rgba(128, 128, 128, 0.42)">                       
            </div>
            <div id="progress2"></div>
            <p>Policy<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 90%</label></p>
            <div style="border-bottom:4px solid #ffffff; border-radius:4px; box-shadow:1px 1px 3px rgba(128, 128, 128, 0.42)">                       
            </div>
            <div id="progress3"></div>
        </div>
    </div>
</asp:Content>

