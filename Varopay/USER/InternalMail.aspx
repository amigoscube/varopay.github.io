<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="InternalMail.aspx.cs" Inherits="Varopay.User.InternalMail" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-bottom:10%;">
        <h3 class="text-center">If you have any query,Send us a mail</h3>
        <div class="row" style="margin-top:5%;">
            <div class="col-md-1 col-md-offset-4">
                  <asp:Label runat="server" ID="lblTo" Text="To"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtTo" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rqvTo" CssClass="text-warning" ControlToValidate="txtTo" ErrorMessage="Pleae enter To"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1 col-md-offset-4">
                <asp:Label runat="server" ID="lblSubject" Text="Subject"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rqvSubject" CssClass="text-warning" ControlToValidate="txtSubject" ErrorMessage="Pleae enter subject"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1 col-md-offset-4">
                <asp:Label runat="server" ID="lblMesaage" Text="Message"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rqvMessage" CssClass="text-warning" ControlToValidate="txtMessage" ErrorMessage="Pleae enter Message"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-5">
                 <asp:Button ID="btnSend" runat="server" Text="Send" CausesValidation="false" CssClass="btn btn-primary" OnClick="btnSend_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
