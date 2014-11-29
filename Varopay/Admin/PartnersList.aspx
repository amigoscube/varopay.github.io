<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PartnersList.aspx.cs" Inherits="Varopay.Admin.PartnersList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>Total Certified Partners : <asp:Label ID="lblTotal" runat="server"></asp:Label></h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView runat="server" ID="gdvPartners" AutoGenerateColumns="false" EmptyDataText="There are no certified partners to display" ShowFooter="true" ItemType="Varopay.Models.CertifiedPartner" SelectMethod="gdvPartners_GetData" OnRowDeleted="gdvPartners_RowDeleted" OnRowDeleting="gdvPartners_RowDeleting" OnRowCommand="gdvPartners_RowCommand" BackColor="White" DataKeyNames="CertifiedPartnerID">
                    <EmptyDataRowStyle  BackColor="Gray" Font-Bold="true" ForeColor="#E7E7EF"/>
                    <AlternatingRowStyle BackColor="LightGray" />
                     <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B" Height="30" CssClass="text-center"></HeaderStyle>
                    <Columns>
                        <asp:TemplateField HeaderText="Certiifed Partner">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblPartner" Text="<%# Item.PartnerName %>"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtPartner" runat="server" CssClass="form-control"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Enable/Disable">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkPartner" runat="server" CssClass="checkbox" OnCheckedChanged="chkPartner_CheckedChanged" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imbDelete" runat="server" ImageUrl="~/Images/delete.jpg" CommandName="Delete" ToolTip="Delete" />
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:ImageButton ID="imbAdd" runat="server" ImageUrl="~/Images/AddNewitem.jpg" CommandName="AddPartner" ToolTip="Add New Partner"/>
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center margin-tp-15">
                 <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save Changes"/>
            </div>
        </div>
    </div>
</asp:Content>
