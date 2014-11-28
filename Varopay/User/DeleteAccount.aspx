<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="DeleteAccount.aspx.cs" Inherits="Varopay.User.DeleteAccount" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:10%;margin-bottom:10%;">
        <div class="row">
            <div  class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblAccount" runat="server" CssClass="fntwt pull-right" Text="Select Account To Delete"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlAccount" runat="server" CssClass="form-control"></asp:DropDownList>
            </div> 
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:Label ID="lblMsg" runat="server" CssClass="text-info"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-5">
                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary btn-mrgn-top-10" Text="Delete Account" CausesValidation="false" OnClick="btnDelete_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
