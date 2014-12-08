<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Varopay.Admin.Account" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="row">
      <div class="col-md-3">
          <h4>Active Members:</h4>
      </div>
      <div class="col-md-9">
          <asp:Label ID="lblActive" runat="server"></asp:Label>
      </div>
  </div>
    <div class="row">
      <div class="col-md-3">
          <h4>Suspended Members:</h4>
      </div>
        <div class="col-md-9">
            <asp:Label ID="lblSuspended" runat="server"></asp:Label>
        </div>
  </div>
    <div class="row">
      <div class="col-md-3">
          <h4>Closed Members:</h4>
      </div>
        <div class="col-md-9">
            <asp:Label ID="lblClosed" runat="server"></asp:Label>
        </div>
  </div>
    <div class="row">
      <div class="col-md-3">
          <h4>Total Transactions:</h4>
      </div>
        <div class="col-md-9">
            <asp:Label ID="lblTransaction" runat="server"></asp:Label>
        </div>
  </div>
    <div class="row">
      <div class="col-md-12">

      </div>
  </div>
    <div class="row">
      <div class="col-md-12">

      </div>
  </div>
    <div class="row">
      <div class="col-md-12">

      </div>
  </div>
</asp:Content>
