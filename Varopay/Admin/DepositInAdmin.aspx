<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DepositInAdmin.aspx.cs" Inherits="Varopay.Admin.DepositInAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-md-offset-4">
                <asp:Label ID="lblAmount" runat="server" Text="Enter Amount"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvAmount" runat="server" CssClass="text-danger" ControlToValidate="txtAmount" ErrorMessage="Enter Amount"></asp:RequiredFieldValidator>
            </div>
        </div>
         <asp:Button ID="btnDeposit" runat="server" CausesValidation="true" CssClass="btn btn-default" Text="Deposit" OnClick="btnDeposit_Click" />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </div>
</asp:Content>
