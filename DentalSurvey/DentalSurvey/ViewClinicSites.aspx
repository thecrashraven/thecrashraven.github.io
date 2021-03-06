﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewClinicSites.aspx.vb" Inherits="DentalSurvey.ViewClinicSites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Site_Code,Year" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Site_Code" HeaderText="Site_Code" ReadOnly="True" SortExpression="Site_Code" />
        <asp:TemplateField HeaderText="State" SortExpression="State">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("State") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="County" SortExpression="County">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("County") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("County") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Year" SortExpression="Year">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Year") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Start_Date" SortExpression="Start_Date">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Start_Date") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Start_Date") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="End_Date" SortExpression="End_Date">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("End_Date") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("End_Date") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clinic_Sites]"
    UpdateCommand =" Update Clinic_Sites set State = @State, County = @County, Start_Date = @Start_Date, End_Date = @End_Date where Site_Code = @Site_Code and Year = @Year">
    <UpdateParameters>
        <asp:Parameter Name ="Site_Code" Type ="String" />
        <asp:Parameter Name ="State" Type ="String" />
        <asp:Parameter Name ="County" Type ="String" />
        <asp:Parameter Name ="Year" Type ="Int16" />
        <asp:Parameter Name ="Start_Date" Type ="DateTime" />
        <asp:Parameter Name ="End_Date" Type ="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
