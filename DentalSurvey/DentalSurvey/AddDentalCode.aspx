<%@ Page Title="Add Dental Code" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddDentalCode.aspx.vb" Inherits="DentalSurvey.DentalCode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Dental_Code" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Dental_Code:
            <asp:Label ID="Dental_CodeLabel1" runat="server" Text='<%# Eval("Dental_Code") %>' />
            <br />
            Dental_Code_Desc:
            <asp:TextBox ID="Dental_Code_DescTextBox" runat="server" Text='<%# Bind("Dental_Code_Desc") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Dental_Code:
            <asp:TextBox ID="Dental_CodeTextBox" runat="server" Text='<%# Bind("Dental_Code") %>' />
            <br />
            Dental_Code_Desc:
            <asp:TextBox ID="Dental_Code_DescTextBox" runat="server" Text='<%# Bind("Dental_Code_Desc") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Dental_Code:
            <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
            <br />
            Dental_Code_Desc:
            <asp:Label ID="Dental_Code_DescLabel" runat="server" Text='<%# Bind("Dental_Code_Desc") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Dental_Codes]"></asp:SqlDataSource>
</asp:Content>
