<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="PzglAdd.aspx.cs" Inherits="cwglxt.PzglAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-group">
    <asp:Label ID="Label2" runat="server" Text="名称" for="mc"></asp:Label>
    <asp:TextBox ID="mc" runat="server" placeholder="请输入名称" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="名称不能为空" ControlToValidate="mc" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="Label5" runat="server" Text="凭证" for="pzurl"></asp:Label>
    <asp:TextBox ID="pzurl" runat="server" placeholder="请输入凭证" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="凭证不能为空" ControlToValidate="pzurl" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>    

<asp:Button ID="Button1" runat="server" Text="新增" CssClass="btn btn-primary" OnClick="Button1_Click"/>
<a href="Pzgl.aspx" class="btn btn-light ml-1">返回凭证管理</a>
</asp:Content>
