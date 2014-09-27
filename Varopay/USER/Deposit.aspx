<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="Varopay.User.Deposit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h4>Please select the type of transaction to continue</h4>
                <asp:DropDownList ID="ddlTransaction" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">--Select Transaction Type--</asp:ListItem>
                    <asp:ListItem Value="1">Deposit</asp:ListItem>
                    <asp:ListItem Value="2">Withdraw</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:ListView runat="server">
                    <LayoutTemplate>

                    </LayoutTemplate>
                    <ItemTemplate>

                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
