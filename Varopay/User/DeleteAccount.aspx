<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="DeleteAccount.aspx.cs" Inherits="Varopay.User.DeleteAccount" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div  class="col-md-4 col-md-offset-3">
                <asp:Label ID="lblAccount" runat="server" Text="Select Account To Delete"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlAccount" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlAccount_SelectedIndexChanged"></asp:DropDownList>
            </div> 
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-5">
                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary" Text="Delete Account" CausesValidation="false" OnClick="btnDelete_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
