<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="TransferToAccount.aspx.cs" Inherits="Varopay.User.TransferToAccount" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-bottom:15%;">
         <h3 class="text-center mrgn-btm-20">Transfer Funds WithIn VaroPay Accounts</h3>
        <div class="row">
             <div class="col-md-2 col-md-offset-3">
                  <asp:Label runat="server" ID="lblFromAccount" Text="From Account"></asp:Label>
             </div>
             <div class="col-md-3">
                  <asp:TextBox runat="server" ID="txtFromAccount" CssClass="form-control mrgn-btm-20"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ID="rqvFrom" ErrorMessage="Required Field" ControlToValidate="txtFromAccount"></asp:RequiredFieldValidator>
             </div>
         </div>
        <div class="row">
             <div class="col-md-2 col-md-offset-3">
                 <asp:Label runat="server" ID="lblToAccount" Text="To Account"></asp:Label>
             </div>
             <div class="col-md-3">
                   <asp:TextBox runat="server" ID="txtAccount" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ID="rqvToAccount" ErrorMessage="Required Field" ControlToValidate="txtAccount"></asp:RequiredFieldValidator>
             </div>
         </div>
        <div class="row">
             <div class="col-md-2 col-md-offset-3">
                 <asp:Label runat="server" ID="lblAmount" Text="Amount"></asp:Label>
             </div>
             <div class="col-md-3">
                   <asp:TextBox runat="server" ID="txtAmount" CssClass="form-control"></asp:TextBox>
             </div>
            <div class="col-md-2">
                <asp:DropDownList runat="server" ID="ddlFromAccount" CssClass="form-control"></asp:DropDownList>
            </div>
         </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                  <asp:Label ID="lblException" runat="server" CssClass="text-danger"></asp:Label>
            </div>
        </div>
        <div class="row">
             <div class="col-md-3 col-md-offset-5">
                  <asp:Button runat="server" ID="btnSend" CausesValidation="false" Text="Send" CssClass="btn btn-primary margin-tp-15" OnClick="btnSend_Click" />
             </div>
         </div>
    </div>
</asp:Content>
