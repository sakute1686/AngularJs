<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-app="myApp">
        <div ng-controller="myCtrl">
            <div>
                {{ error }}
            </div>

            <form name="SearchUserName" ng-submit="search(username)">
                Serach:
                <input type="text" name="search" required placeholder="Search user name." ng-model="username" />
                <input type="submit" name="lastName" title="Search" />
            </form>
            <%--<div ng-include="'About.aspx'" ng-show="user"></div>--%>
            <div ng-include="'home/About'" ng-show="user">
            </div>
            <br />
            <div ng-include="'home/RepositoryList'" ng-show="user">
            </div>
            <br />
            <br />
            <%: Html.ActionLink("About", "About") %>
        </div>
    </div>
</asp:Content>
