<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="AddPayee.aspx.cs" Inherits="Varopay.User.Payee" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <h3 class="text-center">Add Payee To Transfer Funds</h3>
        <div class="row" style="margin-top:5%;margin-bottom:8%">
            <asp:Label ID="lblMsg" runat="server" CssClass="text-danger"></asp:Label>
            <div class="col-md-6 col-md-offset-3">
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
                        <asp:Button runat="server" ID="btnSubmit" Text="Submit" CausesValidation="false" CssClass="btn btn-default" OnClick="btnSubmit_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </div>
</asp:Content>
