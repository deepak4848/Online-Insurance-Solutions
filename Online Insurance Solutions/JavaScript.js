function validate() {
    if (document.getElementById("<%=TextBox4.ClientID%>").value == "") {
        TextBox4.style.border = "1px solid red";
        alert("Enter A Name");
        document.getElementById("<%=TextBox4.ClientID%>").focus();
        return false;
    }
}
