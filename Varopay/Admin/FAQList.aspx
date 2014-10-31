<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FAQList.aspx.cs" Inherits="Varopay.Admin.FAQList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
                <asp:GridView ID="gdvFAQ" runat="server" ItemType="Varopay.Models.FAQ" AutoGenerateColumns="false" DataKeyNames="FAQId" ShowFooter="true" SelectMethod="gdvFAQ_GetData">
                    <Columns>
                        <asp:TemplateField HeaderText="Q/A">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblQueston" Text="<%# Item.Question %>"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblAnswer" Text="<%# Item.Answer %>"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAnswer" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
