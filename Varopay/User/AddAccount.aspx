<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="AddAccount.aspx.cs" Inherits="Varopay.User.AddAccount" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <table runat="server">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblAccount" Text="Account"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlAccount">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button runat="server" ID="btnAdd" Text="AddAccount" OnClick="btnAdd_Click"/>
                    </td>
                </tr>
            </table>
        </div>
        <div id="PageLoader"></div>
    </div>
</asp:Content>
