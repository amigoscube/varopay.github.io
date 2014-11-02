<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FAQList.aspx.cs" Inherits="Varopay.Admin.FAQList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
                <asp:GridView ID="gdvFAQ" runat="server" ItemType="Varopay.Models.FAQ" AutoGenerateColumns="false" DataKeyNames="FAQId" ShowFooter="true" SelectMethod="gdvFAQ_GetData" OnRowCommand="gdvFAQ_RowCommand" OnRowDeleting="gdvFAQ_RowDeleting" OnRowDeleted="gdvFAQ_RowDeleted" OnRowDataBound="gdvFAQ_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="Q/A">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblQuestion" Text="<%# Item.Question %>"></asp:Label>
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
                                            <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control" placeholder="Enter Question"></asp:TextBox>
                                        </td>
                                        </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtAnswer" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Answer"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="chkFAQ" OnCheckedChanged="chkFAQ_CheckedChanged" />
                            </ItemTemplate>
                            <FooterTemplate>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imbDelete" ToolTip="Delete FAQ" ImageUrl="~/Images/delete.jpg" CommandName="Delete"/>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:ImageButton runat="server" ID="imbAdd" ToolTip="Add FAQ" ImageUrl="~/Images/AddNewitem.jpg" CommandName="AddFAQ"/>
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-default" Text="Save Changes" />
            </div>
        </div>
    </div>
</asp:Content>
