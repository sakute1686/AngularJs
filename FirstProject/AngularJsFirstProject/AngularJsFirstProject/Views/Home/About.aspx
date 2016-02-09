<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    About
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        {{ error }}<br />
    </div>
    <div>
        <a href="#/">Go back to serach</a>
        <br />
        <h2>{{ user.name }}</h2>
        <div>
            Name: <a target="_blank" ng-href="{{ user.blog }}">{{ user.name }}</a>
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
        <div style="vertical-align: top;">
            Image:
                <img ng-src="{{user.avatar_url}}" alt="{{user.name}}" />
        </div>
        <br />
        <div ng-include="'home/RepositoryList'">
        </div>
        <br />
        <a href="#/">Go back to serach</a>
    </div>
</asp:Content>
