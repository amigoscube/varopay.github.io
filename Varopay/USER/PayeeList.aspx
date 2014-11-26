<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="PayeeList.aspx.cs" Inherits="Varopay.User.PayeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <h3>Payees in your acount are:</h3>
            <div class="col-md-12">
                <asp:ListView runat="server" ID="lsvPayeeList" DataKeyNames="PayeesID" ItemType="Varopay.Models.Payees" SelectMethod="lsvPayeeList_GetData" ItemPlaceholderID="plchldPayee">
                    <LayoutTemplate>
                        <div class="row">
                            <div class="col-md-3">
                                 <asp:Label runat="server" ID="lblPayeeName" Text="Payee" CssClass="fntwt"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                 <asp:Label runat="server" ID="lblAccountNo" Text="Account" CssClass="fntwt"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblPhoneNumber" Text="Phone Number" CssClass="fntwt"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" ID="lblEmail" Text ="Email" CssClass="fntwt"></asp:Label>
                            </div>
                        </div>
                            <asp:PlaceHolder ID="plchldPayee" runat="server"></asp:PlaceHolder>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-md-3">
                                <a href="<%# Eval("Payment.CurAcc","TransferToAccount.aspx?CurAcc={0}") %>"><%# Item.Payment.MyAccount.UserName %></a>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" Text="<%# Item.Payment.CurAcc %>"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label runat="server" Text="<%# Item.Payment.MyAccount.PhoneNumber %>"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                 <asp:Label runat="server" Text="<%# Item.Payment.MyAccount.Email %>"></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="row" style="margin-top:10%;margin-bottom:3%;">
            <div class="col-md-12" >
                <a href="~/User/AddPayee.aspx" runat="server">Add Payee</a> 
            </div>
        </div>
    </div>
</asp:Content>
