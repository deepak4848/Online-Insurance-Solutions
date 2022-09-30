<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="InsurancePlans1.aspx.cs" Inherits="InsurancePlans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="planheading" style="height:105px; background-color:rgba(240, 244, 249, 0.43)">
        <p>life&nbsp;&nbsp;insurance&nbsp;&nbsp;plans we offer</p>
          
        <h6>In today’s uncertain word, there could be calamity at every step<br />
            of the life. It is up to you to ensure that your family stays protected always.</h6>
        <label></label>
        <label id="lbl"></label>

    </div>
    <div id="insplans" style="height:500px">
        <div id="child" style="height:403px; width:322px; float:left; left:99px; background-image:url(images/child.png); top:15px">
            <label>Child&nbsp;&nbsp; Plan</label>
            <p>
             &nbsp; Choose between pay-out options that<br />
             &nbsp;&nbsp;&nbsp;&nbsp;are based on your child’s needs<br /><br />
             &nbsp; Zero allocation charges<br /><br />
             &nbsp; Pay once or for 5 years while accruing<br />
             &nbsp;&nbsp;&nbsp;&nbsp;benefits for 10 along with the flexibility<br />
             &nbsp;&nbsp;&nbsp;&nbsp;of partial withdrawals.<br />
            </p>
            <asp:Button ID="Button3" runat="server" Text="BUY ONLINE" CssClass="btnbuy" OnClick="Button3_Click" />
        </div>
        <div id="individual" style="height:403px; width:322px; float:left; left:200px; background-image:url(images/individual.png);top:15px ">
            <label>Individual&nbsp;&nbsp; Plan</label>
            <p>
             &nbsp; Simple Term Plan that provides high<br />
             &nbsp;&nbsp;&nbsp;&nbsp; cover at affordable Premiums<br /><br />
             &nbsp; Zero allocation charges<br /><br />
             &nbsp; Need a sufficient Sum Assured to<br />
             &nbsp;&nbsp;&nbsp;&nbsp; take care of your liabilities or loans<br />
             &nbsp;&nbsp;&nbsp;&nbsp; in case of any eventuality.<br />
            </p>
            <asp:Button ID="Button2" runat="server" Text="BUY ONLINE"  CssClass="btnbuy" OnClick="Button2_Click"/>
        </div>
        <div id="retirement" style="height:403px; width:322px; float:right; right:89px; background-image:url(images/retirement.png);top:15px ">
            <label>Retirement&nbsp;&nbsp; Plan</label>
            <p>
             &nbsp; Limited pay guaranteed income plan &<br />
             &nbsp;&nbsp;&nbsp;&nbsp;Guaranteed benefit at Maturity.<br /><br />
             &nbsp; Zero allocation charges<br /><br />
             &nbsp; Guaranteed additions of up to 10%<br />
             &nbsp;&nbsp;&nbsp;&nbsp;(depending on plan term chosen)<br />
             &nbsp;&nbsp;&nbsp;&nbsp; regularly added during the plan term.<br />
            </p>
            <asp:Button ID="Button1" runat="server" Text="BUY ONLINE" CssClass="btnbuy" OnClick="Button1_Click"/>
        </div>
        <div>

        </div>
    </div>

</asp:Content>

