<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="PremiumCalculatorPage1.aspx.cs" Inherits="PayPremiumPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="claimheading" style="height:100px; background-color:rgba(240, 244, 249, 0.43)">
            <p>Life   Insurance   Premium   Calculator</p>
          
        <h6>Please select the product to calculate premium for the insurance plans offered by suraksha Life.</h6>
        <label></label>
        <label id="lbl"></label>

        </div>
    <div id="premcal" style="height:440px; background-image:url(images/bg_repeat.png)">
        <div id="left" style="height:380px; width:500px; border:5px solid white; float:left; left:230px; box-shadow: 1px 1px 5px rgba(127, 129, 129, 0.30); top:20px; background-color:white; padding-top:10px">
            
             <table>
                <tr>
                    <td id="icon"></td>
                    <td id="text">PLAN</td>                   
                    <td><asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" CssClass="textform"></asp:TextBox></td>      
                </tr>
            </table>  
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="selectplan" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Select Plan</asp:ListItem>
                <asp:ListItem>Child Plan</asp:ListItem>
                <asp:ListItem>Individual Plan</asp:ListItem>
                <asp:ListItem>Retirement Plan</asp:ListItem>
            </asp:DropDownList> 
                  
             <asp:Panel ID="Panel1" runat="server" Visible="false">
                 <table>
                     <tr>
                         <td id="icon1"></td>
                         <td id="text1">TERM</td>
                         <td>
                             <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" CssClass="textform1"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td id="icon1" style="top:15px"></td>
                         <td id="text1" style="top:15px">COVER</td>
                         <td style="top:15px">
                             <asp:TextBox ID="TextBox3" runat="server" CssClass="textform1" placeholder="             Sum Assured Amount" TextMode="Number"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td id="icon1" style="top:30px"></td>
                         <td id="text1" style="top:30px">DOB</td>
                         <td style="top:30px">
                             <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" CssClass="textform1"></asp:TextBox></td>
                     </tr>
                 </table>
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="selectterm">
                <asp:ListItem Value="0">Select Term</asp:ListItem>
                <asp:ListItem Value="10">10 Year</asp:ListItem>
                <asp:ListItem Value="11">11 Year</asp:ListItem>
                <asp:ListItem Value="12">12 Year</asp:ListItem>
            </asp:DropDownList> 

                 <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dob">
                                <asp:ListItem>Days</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dob">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dob">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                            </asp:DropDownList>
                 <table>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="SHOW PREMIUM" CssClass="premium" OnClick="Button1_Click"/></td>
                    <td><asp:Button ID="Button2" runat="server" Text="CANCEL" CssClass="premium"/></td>
                </tr>
            </table>
             </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="false">
                 <table>
                     <tr>
                         <td id="icon1"></td>
                         <td id="text1">TERM</td>
                         <td>
                             <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" CssClass="textform1"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td id="icon1" style="top:15px"></td>
                         <td id="text1" style="top:15px">COVER</td>
                         <td style="top:15px">
                             <asp:TextBox ID="TextBox6" runat="server" CssClass="textform1" placeholder="Sum Assured Amount"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td id="icon1" style="top:30px"></td>
                         <td id="text1" style="top:30px">DOB</td>
                         <td style="top:30px">
                             <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" CssClass="textform1"></asp:TextBox></td>
                     </tr>
                 </table>
            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="selectterm">
                <asp:ListItem>Select Term</asp:ListItem>
                <asp:ListItem>10 Year</asp:ListItem>
                <asp:ListItem>11 Year</asp:ListItem>
                <asp:ListItem>12 Year</asp:ListItem>
            </asp:DropDownList> 

                 <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dob">
                                <asp:ListItem>Days</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="dob">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="dob">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                            </asp:DropDownList>
                 <table>
                <tr>
                    <td><asp:Button ID="Button3" runat="server" Text="SHOW PREMIUM" CssClass="premium"/></td>
                    <td><asp:Button ID="Button4" runat="server" Text="CANCEL" CssClass="premium"/></td>
                </tr>
            </table>
             </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="false">
                 <table>
                     <tr>
                         <td id="icon1"></td>
                         <td id="text1">TERM</td>
                         <td>
                             <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true" CssClass="textform1"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td id="icon1" style="top:15px"></td>
                         <td id="text1" style="top:15px">COVER</td>
                         <td style="top:15px">
                             <asp:TextBox ID="TextBox9" runat="server" CssClass="textform1" placeholder="Sum Assured Amount"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td id="icon1" style="top:30px"></td>
                         <td id="text1" style="top:30px">DOB</td>
                         <td style="top:30px">
                             <asp:TextBox ID="TextBox10" runat="server" ReadOnly="true" CssClass="textform1"></asp:TextBox></td>
                     </tr>
                 </table>
            <asp:DropDownList ID="DropDownList10" runat="server" CssClass="selectterm">
                <asp:ListItem>Select Term</asp:ListItem>
                <asp:ListItem>10 Year</asp:ListItem>
                <asp:ListItem>11 Year</asp:ListItem>
                <asp:ListItem>12 Year</asp:ListItem>
            </asp:DropDownList> 

                 <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dob">
                                <asp:ListItem>Days</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList12" runat="server" CssClass="dob">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                            </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList13" runat="server" CssClass="dob">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                            </asp:DropDownList>
                 <table>
                <tr>
                    <td><asp:Button ID="Button5" runat="server" Text="SHOW PREMIUM" CssClass="premium"/></td>
                    <td><asp:Button ID="Button6" runat="server" Text="CANCEL" CssClass="premium"/></td>
                </tr>
            </table>
             </asp:Panel>
                  
        </div>
        <div id="right" style="height:390px; width:460px; border:5px solid white; float:right; right:213px; box-shadow: 2px 1px 2px rgba(127, 129, 129, 0.30); background-color:#569099; top:20px">
            <img src="images/premiumcalc.png" style="left:70px; top:30px" />
        </div>
        
    </div>
    
        <asp:Panel ID="Panel4" runat="server" Visible="false" CssClass="panel" Align="Center">
            <table style="padding:5px; width:500px; text-align:center">
                <tr>
                    <td><p>Plan:</p></td>
                    <td><asp:Label ID="Label2" runat="server" Text="Label" Visible="true"></asp:Label></td>
                    <td><p>term:</p></td>
                    <td><asp:Label ID="Label4" runat="server" Text="Label" Visible="true"></asp:Label></td>
                    <td><p>sum assured:</p></td>
                    <td><asp:Label ID="Label6" runat="server" Text="Label" Visible="true"></asp:Label></td>
                    <td><p>dob:</p></td>
                    <td><asp:Label ID="Label8" runat="server" Text="Label" Visible="true"></asp:Label></td>
                </tr>
            </table>
            <table style="border:1px solid #569099; width:800px; height:100px; text-align:center">
                <tr>
                    <td style="border:1px solid #569099"><p>Mode</p></td>
                    <td style="border:1px solid #569099; font-family:Bebas; color:#15677b"><asp:RadioButton ID="RadioButton1" runat="server" CssClass="radiobtn1" GroupName="premium"/>&nbsp;&nbsp;&nbsp;Yearly</td>
                    <td style="border:1px solid #569099; font-family:Bebas; color:#15677b"><asp:RadioButton ID="RadioButton2" runat="server" CssClass="radiobtn1" GroupName="premium"/>&nbsp;&nbsp;&nbsp;Half Yearly</td>
                    <td style="border:1px solid #569099; font-family:Bebas; color:#15677b"><asp:RadioButton ID="RadioButton3" runat="server" CssClass="radiobtn1" GroupName="premium"/>&nbsp;&nbsp;&nbsp;Quartly</td>
                    <td style="border:1px solid #569099; font-family:Bebas; color:#15677b"><asp:RadioButton ID="RadioButton4" runat="server" CssClass="radiobtn1" GroupName="premium"/>&nbsp;&nbsp;&nbsp;Monthly</td>
                </tr>
                <tr>
                    <td style="border:1px solid #569099"><p>Premium</p></td>
                    <td style="border:1px solid #569099"><asp:Label ID="Label9" runat="server" Text="Label" Visible="true"></asp:Label></td>
                    <td style="border:1px solid #569099"><asp:Label ID="Label10" runat="server" Text="Label" Visible="true"></asp:Label></td>
                    <td style="border:1px solid #569099"><asp:Label ID="Label11" runat="server" Text="Label" Visible="true"></asp:Label></td>
                    <td style="border:1px solid #569099"><asp:Label ID="Label12" runat="server" Text="Label" Visible="true"></asp:Label></td>
                </tr>
            </table>
            <asp:Button ID="Button7" runat="server" Text="BUY NOW" CssClass="btnbuy1" OnClick="Button7_Click" /><asp:Label ID="Label1" runat="server" Text="Label" Visible="false" CssClass="errormsg"></asp:Label>
        </asp:Panel>
    
</asp:Content>

