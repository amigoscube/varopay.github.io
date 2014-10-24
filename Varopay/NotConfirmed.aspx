﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotConfirmed.aspx.cs" Inherits="Varopay.NotConfirmed"  Async="true" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-md-offset-2">
                <h3>
                     Your Account is not yet confirmed.Please check your mail to confirm your account.
                </h3>
            </div>
        </div>
    <div class="row">
        <div class="col-md-12 col-md-offset-4">
            <h4>Not received confirmation mail.Click here to resend the mail.</h4>
            <h5> Your registered mail id is: <strong><asp:Label ID="lblEmailId" runat="server"></asp:Label></strong></h5>
        </div>
    </div>
        <div class="row">
            <div class="col-md-12 col-md-offset-6">
                 <asp:Button runat="server" Text="Send Mail" ID="BtnSendMail" OnClick="BtnSendMail_Click" CssClass="btn btn-default" CausesValidation="true"/>
            </div>
            <asp:PlaceHolder runat="server" ID="phdErrMessage" visible="false">
                <asp:Literal runat="server" ID="ltrFailureText"/>
            </asp:PlaceHolder>
        </div>
        </div>
</asp:Content>
