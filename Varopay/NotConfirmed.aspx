<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotConfirmed.aspx.cs" Inherits="Varopay.NotConfirmed"  Async="true" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <h3>
        Your Account is not yet confirmed.Please check your mail to confirm your account.
    </h3>
    <p>
        Not received confirmation mail.Click here to resend the mail. 
        Your registered mail id is:  <asp:Label ID="lblEmailId" runat="server"></asp:Label>
    </p>
        <asp:Button runat="server" Text="Send Mail" ID="BtnSendMail" OnClick="BtnSendMail_Click" CausesValidation="true"/>
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        </div>
</asp:Content>
