<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Repository List
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-show="countDown > 0">
        <h2>Time left to first search: {{ countDown }}</h2>
    </div>
    <form name="SearchUserName" ng-submit="search(username)">
        Serach:
                <input type="text" name="search" required placeholder="Search user name." ng-model="username" />
        <input type="submit" name="lastName" title="Search" />
    </form>
</asp:Content>

