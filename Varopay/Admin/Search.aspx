﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Varopay.Admin.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="well">
        <div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblKey" runat="server" Text="Enter Key to Search"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="txtKey" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <%--<div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblSearchby" runat="server" Text="SearchBy"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlSearchBy" runat="server" CssClass="form-control">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Username</asp:ListItem>
                    <asp:ListItem>EmailId</asp:ListItem>
                    <asp:ListItem>Phone Number</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>--%>
        <div class="row margin-tp-15">
            <div class="col-md-6 col-md-offset-6">
                <asp:Button runat="server" ID="btnSearch" class="btn btn-primary" OnClick="btnSearch_Click" Text="Search" />
            </div>
        </div>
            </div>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="gdvSearch" runat="server" EmptyDataText="There Are No Active Users to display" AllowPaging="true" AutoGenerateColumns="false">
                    <Columns>
                        <%--<<asp:TemplateField HeaderText="Username">

                            <ItemTemplate>
                                <asp:HyperLink ID="hplName" NavigateUrl='<%# string.Format("~/Admin/UserDetails.aspx?Id={0}",Eval("Id")) %>' runat="server" Text="<%# Eval("UserName")%>"></asp:HyperLink>-
                                 <asp:Label ID="lblName" runat="server" Text="Username"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" runat="server" Text="<%: Eval("Email") %>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone Number">
                            <ItemTemplate>
                                <asp:HyperLink ID="lblPhone" runat="server" Text="<%: Eval("PhoneNumber") %>"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country">
                            <ItemTemplate>
                                <asp:HyperLink ID="lblCountry" runat="server" Text="<%: Eval("Country") %>"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="lblStatus" runat="server" Text="<%: Eval("Status") %>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerTemplate>
                    </PagerTemplate>--%>
                        <asp:BoundField HeaderText="UserName" DataField="UserName" />
                        <asp:BoundField HeaderText="UserName" DataField="Email" />
                        <asp:BoundField HeaderText="UserName" DataField="PhoneNumber" />
                        <asp:BoundField HeaderText="UserName" DataField="Country"/>
                        <asp:BoundField HeaderText="UserName" DataField="Status" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
