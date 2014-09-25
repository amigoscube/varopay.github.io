<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="CurrencyExchange.aspx.cs" Inherits="Varopay.USER.CreditExchange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>Exchange Rates</h3>
                <asp:GridView ID="CurrencyExchange" runat="server">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <table runat="server">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblAmount" Text="Amount"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtAmount" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblDirection" Text="Direction"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtDirection" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <h3>My Accounts</h3>
                    <asp:GridView ID="gdvAccounts" runat="server">
                        <Columns>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Chart runat="server">

                        </asp:Chart>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
