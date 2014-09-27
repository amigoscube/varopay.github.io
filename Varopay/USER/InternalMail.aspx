<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="InternalMail.aspx.cs" Inherits="Varopay.User.InternalMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>If you have any queries send us a mail</h3>
                <a href="ComposeTicket.aspx" runat="server">Compose a New Ticket</a>
                <a href="MailHistory.aspx" runat="server">History</a>
            </div>
        </div>
    </div>
</asp:Content>
