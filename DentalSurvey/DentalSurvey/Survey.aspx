<%@ Page Title="Survey" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.vb" Inherits="DentalSurvey.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>Welcome to the survey data entry page.</p>
    <p>Enter Patients Name&nbsp;&nbsp; </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>

    

</asp:Content>
