<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReceiptPage.aspx.cs" Inherits="ReceiptPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="claimheading" style="height:110px; background-color:rgba(240, 244, 249, 0.43)">
            <p>suraksha &nbsp;&nbsp;life&nbsp;&nbsp; insurance</p>
          
        <h6>We are happy to answer any insurance-related query you may have.</h6>
        <label></label>
        <label id="lbl"></label>
        </div>
        <div id="receipt" align="center" style="height:430px; background-image:url(images/bg_repeat.png)">
            <asp:Panel ID="Panel1" runat="server">
                <table style="width:900px; top:15px; border:1px solid rgba(240, 244, 249, 0.43); box-shadow: 1px 1px 5px rgba(127, 129, 129, 0.80); background-color:white">
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;Transaction&nbsp; ID</p></td>
                        <td><asp:Label ID="Label1" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;City</p>
                        </td><td><asp:Label ID="Label2" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;Policy No.</p></td>
                        <td><asp:Label ID="Label3" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;Pincode :</p></td>
                        <td><asp:Label ID="Label4" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;Plan&nbsp; Name:</p></td>
                        <td><asp:Label ID="Label5" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;Mobile &nbsp;No.:</p></td>
                        <td><asp:Label ID="Label6" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;Name Of inssured</p></td>
                        <td><asp:Label ID="Label7" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;Email ID</p></td>
                        <td><asp:Label ID="Label8" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;Date Of Birth</p></td>
                        <td><asp:Label ID="Label9" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;Assured &nbsp;Amount</p></td>
                        <td><asp:Label ID="Label10" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;Premium &nbsp;Amount</p></td>
                        <td><asp:Label ID="Label11" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;Date &nbsp;Of &nbsp;Purchase</p></td>
                        <td><asp:Label ID="Label12" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;Address</p></td>
                        <td><asp:Label ID="Label13" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;Start &nbsp;Date</p></td>
                        <td><asp:Label ID="Label14" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><p> &nbsp;&nbsp;&nbsp;State</p></td>
                        <td><asp:Label ID="Label15" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                        <td><p> &nbsp;&nbsp;&nbsp;End &nbsp;Date</p>
                        </td><td><asp:Label ID="Label16" runat="server" Text="Label" CssClass="lable" Visible="false"></asp:Label></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Button ID="Button1" runat="server" Text="Print Now" CssClass="genrate" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="genrate" />
        </div>
    </form>
</body>
</html>
