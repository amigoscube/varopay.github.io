<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="TransferToAccount.aspx.cs" Inherits="Varopay.User.TransferToAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <table runat="server">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblAmount" Text="Amount"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtAmount" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="ddlFromAccount" CssClass="form-control"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblToAccount" Text="To Account"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtAccount" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-center">
                            <asp:Button runat="server" ID="btnSend" Text="Send" CssClass="btn btn-default" OnClick="btnSend_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
         
    </div>
</asp:Content>
