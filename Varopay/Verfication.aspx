<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Verfication.aspx.cs" Inherits="Varopay.Verfication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="row">
       <div class="col-md-12">
       <h3>Please enter the verification code.Check your mail</h3>
       </div>
   </div> 
    <div class="row">
        <div class="col-md-12">
            <asp:TextBox runat="server" ID="txtVerificationCode" CssClass="form-control"></asp:TextBox>
            <asp:Button runat="server" ID="btnSubmit" Text="Submit"  OnClick="btnSubmit_Click"/>
        </div>
    </div>

</asp:Content>
