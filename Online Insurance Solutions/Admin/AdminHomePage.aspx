<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage2.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .hovereffect {
            top: -2px;
            left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="heading">
          <p>Welcome  to  Admin  Portal</p>
          
        <h6>We would like to keep you up-to-date with the latest policy, Manages agents details and Modified<br />
                link relevant to you. Add new office and manages office details and modified.</h6>
        <label></label>
        <label id="lbl"></label>
        </div>
    <div id="homepage" style="height:500px;">
        <div id="left" style="height:470px; width:366px; float:left; left:99px; bottom:35px">
            <img src="images/admin.png" />
        </div>
        <div id="right" style="height:470px; width:700px; float:right; bottom: 10px;">
            <table style="bottom:140px">
                <tr>
                    <td style="right:100px; top:200px">
                    </td>
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/Admin/images/managepolicy.png" CssClass="hovereffect" OnClick="ImageButton15_Click" />
                    </td >
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/Admin/images/manageoffice.png" CssClass="hovereffect" OnClick="ImageButton16_Click" />
                    </td>
                    <td style="right:100px; top:200px">
                        <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/Admin/images/managecustomer.png" CssClass="hovereffect" OnClick="ImageButton17_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="top:100px">
                        
                    </td>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Admin/images/manageclaim.png" CssClass="hovereffect" OnClick="ImageButton7_Click" />
                    </td>
                    <td style="top:100px">
                        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Admin/images/manageagent.png" CssClass="hovereffect" OnClick="ImageButton8_Click" />
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
                        <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Admin/images/addoffice.png" CssClass="hovereffect" OnClick="ImageButton12_Click" />
                    </td>
                    <td style="right:100px">
                        
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

