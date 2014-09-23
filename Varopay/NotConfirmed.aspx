<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotConfirmed.aspx.cs" Inherits="Varopay.NotConfirmed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        You Account is not yet confirmed.Please check your mail to confirm your account.
    </h3>
    <p>
        Not received confirmation mail.Click here resend the mail. 
    </p>
    <asp:Button runat="server" Text="Send Mail" ID="BtnSendMail" OnClick="BtnSendMail_Click"/>
</asp:Content>
