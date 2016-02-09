<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>


<html ng-app="myApp">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>TestPage</title>
    <script src="../../Scripts/angular.js"></script>
    <script src="../../Scripts/Site.js"></script>
</head>
<body>
    <div ng-controller="myCtrl">
        <h2>{{ user.name }}</h2>
        <div>
            Name: <a target="_blank" ng-href="{{ user.blog }}">{{ user.name }}</a>
            <%--Name: {{ user.name }}--%>
        </div>
        <div>
            Location: {{ user.location }}
        </div>
        <div>
            Blog: {{ user.blog }}
        </div>
        <div>
            Company: {{ user.company }}
        </div>
        <div>
            <img ng-src="{{user.avatar_url}}" alt="{{user.name}}" />
        </div>


        <%: Html.ActionLink("About", "About") %>
    </div>
</body>
</html>
