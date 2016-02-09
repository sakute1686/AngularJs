<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Repository List
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2>Repository List</h2>--%>
    <div>
        Sort By:
                <select ng-model="repoSortOrder">
                    <option value="+name">Name ASC</option>
                    <option value="-name">Name DESC</option>
                    <option value="+stargazers_count">Stars ASC</option>
                    <option value="-stargazers_count">Stars DESC</option>
                    <option value="+url">URL ASC</option>
                    <option value="-url">URL DESC</option>
                    <option value="+language">Language ASC</option>
                    <option value="-language">Language DESC</option>
                    <option value="+description">Description ASC</option>
                    <option value="-description">Description DESC</option>
                </select>
        Show Total Records:
                <input type="number" min="1" max="20" ng-model="repoTotalCount" />
        <br />
        <table>
            <thead>
                <th>Name</th>
                <th>Stars</th>
                <th>URL</th>
                <th>Language</th>
                <th>Description</th>
            </thead>
            <tbody>
                <tr ng-repeat="repo in repos | orderBy:repoSortOrder | limitTo:repoTotalCount">
                    <td>{{ repo.name }}</td>
                    <td>{{ repo.stargazers_count }}</td>
                    <td><a target="_blank" ng-href="{{ repo.url }}">{{ repo.url }}</a></td>
                    <td>{{ repo.language }}</td>
                    <td>{{ repo.description }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>

