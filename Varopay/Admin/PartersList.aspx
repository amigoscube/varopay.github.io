<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PartersList.aspx.cs" Inherits="Varopay.Admin.PartersList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
                <asp:GridView runat="server" ID="gdvPartners" ItemType="Varopay.Models.CertifiedPartner" SelectMethod="gdvPartners_GetData" OnRowDeleted="gdvPartners_RowDeleted" OnRowDeleting="gdvPartners_RowDeleting" OnRowCommand="gdvPartners_RowCommand" OnRowDataBound="gdvPartners_RowDataBound" DataKeyNames="CertifiedPartnersID">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
