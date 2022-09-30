<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ClaimStatus.aspx.cs" Inherits="AgentSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .gridview {
            top: 0px;
            left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="agentsrchheading" style="height:100px">
            <p>CLAIM WHAT IS RIGHTFULLY YOURS</p>
          
        <h6>Our representative will stand by your side and assist you to get your claim settled.</h6>
        <label></label>
        <label id="lbl"></label>
        </div>
    <div style="height:100px; top:5px; border-bottom:2px solid #b3b9b9; background-color:rgba(240, 244, 249, 0.43)">
         <div id="form1" style="float:left; left:320px; top:25px">
            <table>
                <tr>
                <td id="icon"></td>
                <td id="text">Request ID</td>
                <td><asp:TextBox ID="TextBox3" runat="server" CssClass="textform1" placeholder="          Enter Your Request ID"></asp:TextBox></td>
            </tr>
        </table>
      <asp:Label runat="server" ID="Label1" Visible="false" Style="bottom:35px; right:200px; font-size: 15px; font-family: roboto; color: red"></asp:Label>
    </div>
         <div id="button1" style="float:right; right:310px; top:27px">
            <asp:Button ID="Button1" runat="server" Text="GET STATUS NOW"  CssClass="searchbtn" OnClick="Button1_Click"/>
        </div>
        </div>
    <div id="searchresult" style="height:350px" align="center">
    <asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview" PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Request Id" DataField="ReqestId" />
            <asp:BoundField HeaderText="Date" DataField="date" />
            <asp:BoundField HeaderText="Reason" DataField="reason" />
            <asp:BoundField HeaderText="Status" DataField="status" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="First" LastPageText="Last" PageButtonCount="4" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        </asp:Panel>
        </div>
</asp:Content>

