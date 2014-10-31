<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DepositToUser.aspx.cs" Inherits="Varopay.Admin.DepositToUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblTo" runat="server" Text="Send Money To"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTo" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAmount" runat="server" Text="Amount To Transfer"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox><span>Minimum Amount to transfer is 1$</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button runat="server" ID="btnSendMoney" CssClass="btn btn-default" Text="Send Money" OnClick="btnSendMoney_Click"/>
                        </td>
                    </tr>
                </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
