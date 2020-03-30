<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddUserCodes.aspx.vb" Inherits="DentalSurvey.AddUserCodes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Record,Dental_Code" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="RecordLabel" runat="server" Text='<%# Eval("Record") %>' />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
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
                    <asp:Label ID="RecordLabel1" runat="server" Text='<%# Eval("Record") %>' />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel1" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
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
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="Dental_CodeTextBox" runat="server" Text='<%# Bind("Dental_Code") %>' />
                </td>
                <td>
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="RecordLabel" runat="server" Text='<%# Eval("Record") %>' />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
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
                                <th runat="server">Record</th>
                                <th runat="server">Dental_Code</th>
                                <th runat="server">Quantity</th>
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
                    <asp:Label ID="RecordLabel" runat="server" Text='<%# Eval("Record") %>' />
                </td>
                <td>
                    <asp:Label ID="Dental_CodeLabel" runat="server" Text='<%# Eval("Dental_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="Insert into SurveyUserCosts
(Record, Dental_Code, Quantity)
Values
(@Record, @Dental_Code, @Quantity)" SelectCommand="Select * from SurveyUserCosts" UpdateCommand="Update SurveyUserCosts
Set Quantity = @Quantity
where Record  = @Record
and Dental_Code = @Dental_Code">
        <InsertParameters>
            <asp:Parameter Name="Record" />
            <asp:Parameter Name="Dental_Code" />
            <asp:Parameter Name="Quantity" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Quantity" />
            <asp:Parameter Name="Record" />
            <asp:Parameter Name="Dental_Code" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
