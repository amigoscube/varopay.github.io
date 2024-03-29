﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Varopay.User.MyAccount" Async="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <b>Welcome to your account <%: Context.User.Identity.GetUserName() %></b>
                <asp:GridView ID="gdvLog" ItemType="Varopay.Models.Log" DataKeyNames="LogId" SelectMethod="gdvLog_GetData" GridLines="None" runat="server" BackColor="White" AutoGenerateColumns="false">
                     <AlternatingRowStyle BackColor="LightGray" />
                     <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B" Height="30" CssClass="text-center"></HeaderStyle>
                    <Columns>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="lblDate" runat="server" Text="<%# Item.Date %>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblAction" Text="<%# Item.Activity%>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView> 
            </div>
            <div class="col-md-6">
                <div class="row">
                    <h3>My Accounts</h3>
                    <asp:ListView runat="server" ID="lsvAccount" ItemType="Varopay.Models.Accounts" DataKeyNames="AccountsID" SelectMethod="lsvAccount_GetData">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblAccount" Text="<%# Item.CurAcc %>"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblAmount" Text="<%# Item.Amount %>"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:ListView>
                    <a href="~/User/AddAccount.aspx" runat="server" id="addAcnt">Add Account</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
