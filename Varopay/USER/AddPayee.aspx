<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="AddPayee.aspx.cs" Inherits="Varopay.USER.Payee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-12">
            <table runat="server">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblPayeeAccount" Text="Acoount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPayeeAccount" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblPayee" Text="Payee"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPayee" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblPhoneNumber" Text="Phone Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPhoneNumber" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button runat="server" ID="btnSubmit" Text="Submit"  CssClass="btn btn-default" OnClick="btnSubmit_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
