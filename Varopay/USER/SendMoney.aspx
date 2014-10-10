﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="SendMoney.aspx.cs" Inherits="Varopay.User.SendMoney" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <h4>Select the account to send money</h4>
            <asp:GridView runat="server" ID="gdvAccount" DataKeyNames="AccountsID" ItemType="Varopay.Models.Accounts" SelectMethod="gdvAccount_GetData">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink runat="server" NavigateUrl="~/" Text="<%# Item.CurAcc %>"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <a href="~/User/PayeeList" runat="server">List Of Payees</a>
        </div>
    </div>
</asp:Content>
