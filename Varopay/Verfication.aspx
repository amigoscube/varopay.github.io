<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Verfication.aspx.cs" Inherits="Varopay.Verfication" Async="true" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
          <div class="row">
       <div class="col-md-12">
       <h3>Please enter the verification code.Check your mail</h3>
       </div>
   </div> 
    <div class="row">
        <div class="col-md-6">
            <asp:TextBox runat="server" ID="txtVerificationCode" CssClass="form-control"></asp:TextBox>
            </div>
        <div class="col-md-6">
            <asp:Button runat="server" ID="btnSubmit" Text="Submit" CausesValidation="false" OnClick="btnSubmit_Click" CssClass="btn btn-default"/>
        </div>
    </div>
        <div class="row">
        <asp:Label ID="lblIncorrect" runat="server"></asp:Label>
            </div>
    </div>
</asp:Content>
