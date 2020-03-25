<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GetInfo._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Server Info</title>
</head>
<body>
    <table border="1">
<%
foreach (string var in Request.ServerVariables)
{
  Response.Write("<tr><td>" + var + "</td><td>" + Request[var] + "</td></tr>");
}
%>
    </table>
</body>
</html>
