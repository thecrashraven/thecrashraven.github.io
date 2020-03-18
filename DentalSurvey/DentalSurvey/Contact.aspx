<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="DentalSurvey.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>Please contact us with any questions or problems.</p>

    <address>
        One Dental Clinic Way<br />
        Wichita, KS 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        999.999.9999
    </address>

    <address>
        <strong>Support:</strong><a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong><a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
