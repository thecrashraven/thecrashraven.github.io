<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddUserCodes.aspx.vb" Inherits="DentalSurvey.AddUserCodes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Record,Dental_Code" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        Record:
        <asp:Label ID="RecordLabel1" runat="server" Text='<%# Eval("Record") %>' />
        <br />
        Dental_Code:
        <asp:Label ID="Dental_CodeLabel1" runat="server" Text='<%# Eval("Dental_Code") %>' />
        <br />
        Quantity:
        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Dental_Code:
        <asp:TextBox ID="Dental_CodeTextBox" runat="server" Text='<%# Bind("Dental_Code") %>' />
        <br />
        Quantity:
        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Record:
        <asp:Label ID="RecordLabel" runat="server" Text='<%# Eval("Record") %>' />
        <br />
        Dental_Code:
        <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
        <br />
        Quantity:
        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="Insert into SurveyUserCosts
(Record,Dental_Code, Quantity)
values
(@Record,@Dental_Code, @Quantity)" SelectCommand="select * from SurveyUserCosts" UpdateCommand="Update SurveyUserCosts
Set Cost = @Cost
where Record = @Record
and Dental_Code = @Dental_Code">
    <InsertParameters>
        <asp:Parameter Name="Record" />
        <asp:Parameter Name="Dental_Code" />
        <asp:Parameter Name="Quantity" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Cost" />
        <asp:Parameter Name="Record" />
        <asp:Parameter Name="Dental_Code" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
