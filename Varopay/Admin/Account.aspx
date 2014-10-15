<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Varopay.Admin.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table>
                    <tr>
                        <td>
                            <h4>Certified Partners</h4>
                        </td>
                        <td>
                            <div class="btn-group">
                                <asp:Button ID="btnAdd" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="Add" />
                                <asp:Button ID="btnDelete" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="Delete"/>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h4>Manage User Role,Accounts</h4>
                        </td>
                        <td>
                            <div class="btn-group">
                                <asp:Button ID="btnUser" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="User"/>
                                <asp:Button ID="btnAdmin" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="Admin" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h4>Deposit Amount</h4>
                        </td>
                        <td>
                            <asp:Button ID="btnDepAmt" runat="server" Text="Deposit" ClientIDMode="Static" CssClass="btn btn-default" />
                        </td>
                    </tr>
                </table>
                </div>
            </div>
    </div>
</asp:Content>
