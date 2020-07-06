<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="full.aspx.cs" Inherits="GetInfo.full2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Full Server Info</title>
</head>
<body>
<%
    foreach (DictionaryEntry de in Environment.GetEnvironmentVariables())
    {
        Response.Write(de.Key + "=" + de.Value + "<br>");
    }
%>

    <table border="1">
<%
    string headers = "";
    foreach (string var in Request.ServerVariables)
    {
        if (var == "ALL_HTTP")
        {
            headers = Request[var].Replace("HTTP_", "<br>");
        }

        Response.Write("<tr><td>" + var + "</td><td>" + Request[var] + "</td></tr>");

    }
    Response.Write("</table><br><h4>Headers:</h4><br />");

    Response.Write(headers);
 %>
</body>
</html>
