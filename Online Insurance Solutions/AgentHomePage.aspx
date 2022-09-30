<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AgentHomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .hovereffect {
            top: -1px;
            left: -1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="heading">
          <p>Welcome  to  Agent  Portal</p>
          
        <h6>We would like to keep you up-to-date with the latest policy, so please click on the below mentioned<br />
                link relevant to you. For any other information, you can get in touch with us.</h6>
        <label></label>
        <label id="lbl"></label>
        </div>
    <div id="homepage" style="height:500px;">
        <div id="left" style="height:470px; width:366px; float:left; left:99px; bottom:35px">
            <img src="images/agenticon.png"/>
        </div>
        <div id="right" style="height:470px; width:700px; float:right; bottom: 10px;">
            <table style="bottom:140px">
                <tr>
                    <td style="right:100px; top:200px">
                    </td>
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/images/insuranceplans.png" CssClass="hovereffect" />
                    </td >
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/images/baranchlocator.png" CssClass="hovereffect" />
                    </td>
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/images/getacall.png" CssClass="hovereffect" />
                    </td>
                </tr>
                <tr>
                    <td style="top:100px">
                        
                    </td>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/premiumcalculator.png" CssClass="hovereffect" />
                    </td>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/findagent.png" CssClass="hovereffect" />
                    </td>
                    <td style="top:100px">
                        
                    </td>
                </tr>
                <tr>
                    <td style="right:100px">
                    </td>
                    <td style="right:100px">
                    </td>
                    <td style="right:100px">
                        <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/images/changepassword.png" CssClass="hovereffect" />
                    </td>
                    <td style="right:100px">
                        
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

