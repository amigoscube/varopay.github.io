<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="AddPayee.aspx.cs" Inherits="Varopay.User.Payee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
            <table runat="server">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblPayeeAccount" Text="Acoount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPayeeAccount" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rqvPayeeAccount" ControlToValidate="txtPayeeAccount" CssClass="text-danger" ErrorMessage="Field is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblPayee" Text="Payee"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPayee" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rqvPayee" ControlToValidate="txtPayee" CssClass="text-danger" ErrorMessage="Field is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rqvEmail" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Field is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblPhoneNumber" Text="Phone Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rqvPhonenumber" ControlToValidate="txtPhoneNumber" CssClass="text-danger" ErrorMessage="Field is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <asp:Button runat="server" ID="btnSubmit" Text="Submit"  CssClass="btn btn-default" OnClick="btnSubmit_Click"/>
                    </td>
                </tr>
            </table>
        </div>
            <div class="col-md-3"></div>
    </div>
    </div>
</asp:Content>
