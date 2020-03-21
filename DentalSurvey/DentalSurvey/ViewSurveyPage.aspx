<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewSurveyPage.aspx.vb" Inherits="DentalSurvey.ViewSurveyPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Record" DataSourceID="SurveyDataGridDataSource">
        <Columns>
            <asp:BoundField DataField="Record" HeaderText="Record" InsertVisible="False" ReadOnly="True" SortExpression="Record" />
            <asp:BoundField DataField="ChartNum" HeaderText="ChartNum" SortExpression="ChartNum" />
            <asp:BoundField DataField="Ethnicity" HeaderText="Ethnicity" SortExpression="Ethnicity" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
            <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SurveyDataGridDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Survey]"></asp:SqlDataSource>
</asp:Content>
