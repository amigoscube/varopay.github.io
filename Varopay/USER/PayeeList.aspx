<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="PayeeList.aspx.cs" Inherits="Varopay.User.PayeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>Payees in your acount are</p>
                <asp:ListView runat="server" ID="lsvPayeeList" DataKeyNames="PayeesID" ItemType="Varopay.Models.Payees" SelectMethod="lsvPayeeList_GetData" AutoGenerateColumns="false">
                    <LayoutTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPayeeName" Text="Payee"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="lblAccountNo" Text="Account"></asp:Label>
                                </td>
                               <td>
                                   <asp:Label runat="server" ID="lblPhoneNumber" Text="Phone Number"></asp:Label>
                               </td>
                                <td>
                                    <asp:Label runat="server" ID="lblEmail" Text ="Email"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                               <asp:PlaceHolder ID="plchldPayee"  runat="server"></asp:PlaceHolder>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# Item.Payment.MyAccount.UserName %>"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text="<%# Item.Payment.CurAcc %>"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text="<%# Item.Payment.MyAccount.PhoneNumber %>"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text="<%# Item.Payment.MyAccount.Email %>"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:ListView>
                <a href="~/User/AddPayee.aspx" runat="server" >Add Payee</a> 
            </div>
        </div>
    </div>
</asp:Content>
