<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotConfirmed.aspx.cs" Inherits="Varopay.NotConfirmed"  Async="true" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="NotConfirmd">
        <div class="row">
            <div class="col-md-12" style="text-align:center;">
                <h3 class="text-danger">
                     Your Account is not yet confirmed.Please check your mail to confirm your account.
                </h3>
            </div>
        </div>
    <div class="row">
        <div class="col-md-12" style="text-align:center;">
            <h4>Not received confirmation mail.Click here to resend the mail.</h4>
            <h5> Your registered mail id is: <strong><asp:Label ID="lblEmailId" runat="server"></asp:Label></strong></h5>
        </div>
    </div>
        <div class="row">
            <div class="col-md-12 btn-mrgn-top-10">
                 <asp:Button runat="server" Text="Send Confirmation Mail" ID="BtnSendMail" OnClick="BtnSendMail_Click" CssClass="btn btn-primary " CausesValidation="true"/>
            </div>
            <asp:PlaceHolder runat="server" ID="phdErrMessage" visible="false">
                <asp:Literal runat="server" ID="ltrFailureText"/>
            </asp:PlaceHolder>
        </div>
        </div>
</asp:Content>
