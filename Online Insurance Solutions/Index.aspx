<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="indexheading" style="background-color:rgba(231, 120, 23, 0.90)">
          <p>WE HELP YOU FIND THE RIGHT LIFE INSURANCE</p>
            <p><label style="border-bottom:3px solid #ffffff; padding-left:150px; left:70px; z-index:100; top:10px"></label><label style="border-bottom:3px solid #00b289; padding-bottom:10px">SOLUTION THAT SUITS YOUR NEEDS</label><label style="border-bottom:3px solid #ffffff; padding-left:150px; right:70px; z-index:100; top:10px"></label></p>
        </div>
    <div id="homepage" style="height:500px; background-color:rgba(231, 120, 23, 0.90); background-image:url(images/peoplebg.png)">
        <div id="left" style="height:470px; width:366px; float:left; left:99px">
            <img src="images/chintamani1.png"/>
        </div>
        <div id="right" style="height:470px; width:800px; float:right; right:84px">
            <table style="bottom:140px">
                <tr>
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/images/buypolicy.png" CssClass="hovereffect" OnClick="ImageButton14_Click" />
                    </td>
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/images/insuranceplans.png" CssClass="hovereffect" OnClick="ImageButton15_Click" />
                    </td >
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/images/baranchlocator.png" CssClass="hovereffect" OnClick="ImageButton16_Click" />
                    </td>
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/images/findagent.png" CssClass="hovereffect" OnClick="ImageButton17_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/premiumcalculator.png" CssClass="hovereffect" OnClick="ImageButton6_Click" />
                    </td>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/makeaclaim.png" CssClass="hovereffect" OnClick="ImageButton7_Click" />
                    </td>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/trackpolicy.png" CssClass="hovereffect" OnClick="ImageButton8_Click" />
                    </td>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/getacall.png"  CssClass="hovereffect" OnClick="ImageButton9_Click"/>
                    </td>
                </tr>
                <tr>
                    <td style="right:100px">
                        <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/images/loginnow.png" CssClass="hovereffect" OnClick="ImageButton10_Click"/>
                    </td>
                    <td style="right:100px">
                        <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/images/premiumpay.png" CssClass="hovereffect" OnClick="ImageButton11_Click" />
                    </td>
                    <td style="right:100px">
                        <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/images/becomeagent.png" CssClass="hovereffect" OnClick="ImageButton12_Click" />
                    </td>
                    <td style="right:100px">
                        <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/images/register.png" CssClass="hovereffect" OnClick="ImageButton13_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

