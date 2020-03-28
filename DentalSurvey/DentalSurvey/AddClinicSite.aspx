<%@ Page Title="AddClinicSite" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddClinicSite.aspx.vb" Inherits="DentalSurvey.AddClinicSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Site_Code,Year" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Site_Code:
            <asp:Label ID="Site_CodeLabel1" runat="server" Text='<%# Eval("Site_Code") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            County:
            <asp:TextBox ID="CountyTextBox" runat="server" Text='<%# Bind("County") %>' />
            <br />
            Year:
            <asp:Label ID="YearLabel1" runat="server" Text='<%# Eval("Year") %>' />
            <br />
            Start_Date:
            <asp:TextBox ID="Start_DateTextBox" runat="server" Text='<%# Bind("Start_Date") %>' />
            <br />
            End_Date:
            <asp:TextBox ID="End_DateTextBox" runat="server" Text='<%# Bind("End_Date") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Site_Code:
            <asp:TextBox ID="Site_CodeTextBox" runat="server" Text='<%# Bind("Site_Code") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            County:
            <asp:TextBox ID="CountyTextBox" runat="server" Text='<%# Bind("County") %>' />
            <br />
            Year:
            <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
            <br />
            Start_Date:
            <asp:TextBox ID="Start_DateTextBox" runat="server" Text='<%# Bind("Start_Date") %>' />
            <br />
            End_Date:
            <asp:TextBox ID="End_DateTextBox" runat="server" Text='<%# Bind("End_Date") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Site_Code:
            <asp:Label ID="Site_CodeLabel" runat="server" Text='<%# Eval("Site_Code") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
            <br />
            County:
            <asp:Label ID="CountyLabel" runat="server" Text='<%# Bind("County") %>' />
            <br />
            Year:
            <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
            <br />
            Start_Date:
            <asp:Label ID="Start_DateLabel" runat="server" Text='<%# Bind("Start_Date") %>' />
            <br />
            End_Date:
            <asp:Label ID="End_DateLabel" runat="server" Text='<%# Bind("End_Date") %>' />
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="usp_InsertClinicSites" InsertCommandType="StoredProcedure" SelectCommand="select * From Clinic_Sites">
        <InsertParameters>
            <asp:Parameter Name="Site_Code" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="County" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="Start_Date" Type="DateTime" />
            <asp:Parameter Name="End_Date" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
