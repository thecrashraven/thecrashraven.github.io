<%@ Page Title="Survey" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.vb" Inherits="DentalSurvey.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
    <p>Welcome to the survey data entry page.</p>
    <div>
    <p>Enter Chart Number&nbsp;&nbsp; </p>
    <p>
        <asp:TextBox ID="Chart_Number" runat="server"></asp:TextBox></p>
    <p>Ethnicity&nbsp;&nbsp; </p>
    <p>    
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Caucasian</asp:ListItem>
            <asp:ListItem>African American</asp:ListItem>
            <asp:ListItem>Native American</asp:ListItem>
            <asp:ListItem>Asian</asp:ListItem>
            <asp:ListItem>Pacific Islander</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        </p>
    <p>Gender&nbsp;&nbsp; </p>
    <p>    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value ="Male">
            
            </asp:ListItem>

            <asp:ListItem Value ="Female">
            
            </asp:ListItem>

        </asp:DropDownList>
        </p>
    <p>Zip Code&nbsp;&nbsp; </p>
    <p>    <asp:TextBox ID="Zip" runat="server"></asp:TextBox> </p>
    <p>Birthday&nbsp;&nbsp; </p>
    <p>    <asp:TextBox ID="Birthday" runat="server"></asp:TextBox> </p>

    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit Form" />
    </p>
    </div>
    

</asp:Content>
