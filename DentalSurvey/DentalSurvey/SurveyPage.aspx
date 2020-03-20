<%@ Page Title="SurveyPage" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurveyPage.aspx.vb" Inherits="DentalSurvey.SurveyPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
    <p>Welcome to the survey data entry page.</p>
    <div>
    <p>Enter Chart Number&nbsp;&nbsp; </p>
    <p>
        <asp:TextBox ID="Chart_Number" runat="server"></asp:TextBox></p>
    <p>Ethnicity&nbsp;&nbsp; </p>
    <p>    
        <asp:DropDownList ID="Ethnicitiy" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ethnicity_Desc" DataValueField="Ethnicity_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ethnicity_Codes]"></asp:SqlDataSource>
        </p>
    <p>Gender&nbsp;&nbsp; </p>
    <p>    
        <asp:DropDownList ID="GenderList" runat="server" DataSourceID="Gender_DataSource" DataTextField="Gender_Desc" DataValueField="Gender_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Gender_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Gender_Codes]"></asp:SqlDataSource>
        </p>
    <p>Zip Code&nbsp;&nbsp; </p>
    <p>    <asp:TextBox ID="Zip" runat="server"></asp:TextBox> </p>
    <p>Birthday&nbsp;&nbsp; </p>
    <p>    <asp:TextBox ID="BirthdayList" runat="server"></asp:TextBox> </p>

    <p>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit Form" />
    </p>
    </div>
    

</asp:Content>
