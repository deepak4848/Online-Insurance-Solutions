<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="OfficeSearch.aspx.cs" Inherits="AgentSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .gridview {
            top: 0px;
            left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="agentsrchheading" style="height:100px; background-color:rgba(240, 244, 249, 0.43)">
            <p>enjoy the personal attention you deserve.</p>
          
        <h6>Our employee is ready to help you with all your insurance needs. Find yours branch today.</h6>
        <label></label>
        <label id="lbl"></label>
        </div>
    <div id="branch" style="height:55px; border-bottom:1px solid #b3b9b9; width:1070px; left:153px; top:5px">
        <table>
            <tr>
                <td><p>Find Your</p></td>
            </tr>
            <tr>
                <td><h1>Nearest Branch</h1></td>
            </tr>
        </table>
    </div>
    <div style="height:130px; top:5px; border-bottom:2px solid #b3b9b9">
    <div id="form" style="float:left; left: 150px; top:10px">
        <table>
            <tr>
                <td id="icon"></td>
                <td id="text">STATE</td>
                <td><asp:TextBox ID="TextBox1" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
            </table>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="city">
                <asp:ListItem>Select State</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                </asp:DropDownList>
        </div>  
        <div id="form" style="float:left; left: 70px; top:10px">
                <table>
                <tr>
                <td id="icon"></td>
                <td id="text">CITY</td>
                <td style="left:4px"><asp:TextBox ID="TextBox2" runat="server" CssClass="textform" ReadOnly="true"></asp:TextBox></td>
                </tr>
                </table>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="city">
                <asp:ListItem>Select City</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="form" style="float:right; right:20px; top:10px; z-index:100">
            <table>
                <tr>
                <td id="icon"></td>
                <td id="text">ID</td>
                <td style="left:14px"><asp:TextBox ID="TextBox3" runat="server" CssClass="textform" placeholder="Search By Office ID"></asp:TextBox></td>
            </tr>
        </table>

    </div>
        <div id="button" style="top:25px">
            <asp:Button ID="Button1" runat="server" Text="SEARCH NOW" OnClick="Button1_Click"  CssClass="searchbtn"/>
            <asp:Label runat="server" ID="Label1" Visible="false" CssClass="officesearch"></asp:Label>
            <asp:Label runat="server" ID="Label2" Visible="false" CssClass="officesearch1"></asp:Label>
        </div>
        </div>
    <div id="searchresult" style="height:350px" align="center">
    <asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview" PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="false">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="OFFICE ID" DataField="OfficeId" />
            <asp:BoundField HeaderText="OFFICE NAME" DataField="name" />
            <asp:BoundField DataField="address" HeaderText="ADDRESS" />
            <asp:BoundField HeaderText="STATE" DataField="state" />
            <asp:BoundField HeaderText="CITY" DataField="city" />
            <asp:BoundField HeaderText="PINCODE" DataField="pincode" />
            <asp:BoundField HeaderText="Contact No." DataField="PhoneNo" />
            <asp:BoundField HeaderText="EMAIL ID" DataField="email" />
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

