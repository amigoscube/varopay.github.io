<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="SendMoney.aspx.cs" Inherits="Varopay.User.SendMoney" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" id="ActSlct">
                <h3 class="mrgn-btm-20">Select the account to send money</h3>
             <div class="col-md-6 col-md-offset-1">
                <asp:ListView runat="server" ID="lsvAccount" DataKeyNames="AccountsID" ItemType="Varopay.Models.Accounts" SelectMethod="lsvAccount_GetData1">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:HyperLink runat="server" CssClass="account" NavigateUrl='<%# string.Format("~/User/TransferToAccount.aspx?CurAcc={0}",Eval("CurAcc")) %>' Text="<%# Item.CurAcc %>"></asp:HyperLink>
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="lblBalance" Text="<%# Item.Amount %>"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="row margin-tp-15 mrgn-btm-20" id="link">
            <div class="col-md-12">
                 <a href="~/User/PayeeList" runat="server">List Of Payees</a>
            </div>
        </div>
    </div>
</asp:Content>
