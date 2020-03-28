<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddUpdateDentalCodeCosts.aspx.vb" Inherits="DentalSurvey.AddUpdateDentalCodeCosts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Dental_Code,Site_Code,Year" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Site_CodeLabel" runat="server" Text='<%# Eval("Site_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                </td>
                <td>
                    <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel1" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Site_CodeLabel1" runat="server" Text='<%# Eval("Site_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="YearLabel1" runat="server" Text='<%# Eval("Year") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="Dental_CodeTextBox" runat="server" Text='<%# Bind("Dental_Code") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Site_CodeTextBox" runat="server" Text='<%# Bind("Site_Code") %>' />
                </td>
                <td>
                    <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Site_CodeLabel" runat="server" Text='<%# Eval("Site_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                </td>
                <td>
                    <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Dental_Code</th>
                                <th runat="server">Site_Code</th>
                                <th runat="server">Year</th>
                                <th runat="server">Cost</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Site_CodeLabel" runat="server" Text='<%# Eval("Site_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                </td>
                <td>
                    <asp:Label ID="CostLabel" runat="server" Text='<%# Eval("Cost") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="Insert into Dental_Code_Costs
(Dental_Code, Site_Code, Year, Cost)
values
(@Dental_Code, @Site_Code, @Year, @Cost)" SelectCommand="SELECT * FROM [Dental_Code_Costs]" UpdateCommand="Update Dental_Code_Costs
Set Cost = @Cost
where Dental_Code = @Dental_Code
and Site_Code = @Site_Code
and Year = @Year">
        <InsertParameters>
            <asp:Parameter Name="Dental_Code" />
            <asp:Parameter Name="Site_Code" />
            <asp:Parameter Name="Year" />
            <asp:Parameter Name="Cost" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cost" />
            <asp:Parameter Name="Dental_Code" />
            <asp:Parameter Name="Site_Code" />
            <asp:Parameter Name="Year" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
