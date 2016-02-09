<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="AJsWebApplication.TestPage" %>

<html ng-app="copyExample">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/Site.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div ng-controller="ExampleController">
            <h2>{{ Message }}</h2>
        </div>
    </form>
</body>
</html>
