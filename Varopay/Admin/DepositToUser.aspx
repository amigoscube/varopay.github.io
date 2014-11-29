<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DepositToUser.aspx.cs" Inherits="Varopay.Admin.DepositToUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well well-sm">
        <div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblTo" runat="server" Text="Send Money To"></asp:Label>
            </div>
            <div class="col-md-3">
                 <asp:TextBox ID="txtTo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row margin-tp-15">
            <div class="col-md-3 col-md-offset-3">
                  <asp:Label ID="lblAmount" runat="server" Text="Amount To Transfer"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox><span>Minimum Amount to transfer is 1$</span>
            </div>
        </div>
        <div class="row margin-tp-15">
            <div class="col-md-3 col-md-offset-5">
                 <asp:Button runat="server" ID="btnSendMoney" CssClass="btn btn-primary" Text="Send Money" OnClick="btnSendMoney_Click"/>
            </div>
        </div>
        </div>
</asp:Content>
