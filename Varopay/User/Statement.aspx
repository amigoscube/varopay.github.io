<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Statement.aspx.cs" Inherits="Varopay.User.Statement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <asp:ListView ID="lsvAccountsStmt" runat="server">
                        <ItemTemplate>
                            <table runat="server">
                                <tr>
                                    <td>
                                        <asp:HyperLink runat="server" NavigateUrl="~/User/ViewStatement.aspx"></asp:HyperLink>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblAmount"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <table runat="server">
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblBatch" Text="Batch"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtBatch" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblFromDate" Text="From Date"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtFromDate" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblToDate" Text="ToDate"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtToDate" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblAccountFrom" Text="Account From"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtAccountFrom" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblAccountTo" Text="Account To"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtAccountTo" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblAction" runat="server" Text="Action"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlAction" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                    <asp:ListItem Value="1">Deposit</asp:ListItem>
                                    <asp:ListItem Value="2">Withdraw</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <asp:Button runat="server" ID="btnSearch" Text="Search"  CssClass="btn btn-default"/>
                            </td>
                        </tr>
                    </table> 
                </div>
                <div class="row">
                    <table runat="server">
                        <tr>
                            <td>
                                <asp:Label ID="lblInvoice" runat="server" Text="Invoice"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtInvoice" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
