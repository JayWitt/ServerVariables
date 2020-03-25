<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GetInfo._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Server Info</title>
</head>
<body>
<%
    Response.Write("Deployment ID = " + Environment.GetEnvironmentVariable("WEBSITE_DEPLOYMENT_ID") + "<br>");
    Response.Write("Stamp Name = " + Environment.GetEnvironmentVariable("WEBSITE_CURRENT_STAMPNAME") + "<br>");
    Response.Write("Site Name = " + Environment.GetEnvironmentVariable("WEBSITE_IIS_SITE_NAME") + "<br>");
    Response.Write("Computer Name = " + Environment.GetEnvironmentVariable("COMPUTERNAME") + "<br>");
    Response.Write("Server Local IP = " + Request.ServerVariables["LOCAL_ADDR"] + "<br>");
%>
</body>
</html>
