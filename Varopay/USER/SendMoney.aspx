<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="SendMoney.aspx.cs" Inherits="Varopay.User.SendMoney" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <h4>Select the account to send money</h4>
            <asp:ListView runat="server" ID="lsvAccount" DataKeyNames="AccountsID" ItemType="Varopay.Models.Accounts" SelectMethod="lsvAccount_GetData1">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:HyperLink runat="server" NavigateUrl ="~/User/TransferToAccount.aspx?AccountsID={0}" Text="<%# Item.CurAcc %>" ></asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
            </asp:ListView>
            <a href="~/User/PayeeList" runat="server">List Of Payees</a>
        </div>
    </div>
</asp:Content>
