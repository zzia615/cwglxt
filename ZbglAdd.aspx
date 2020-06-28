<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="ZbglAdd.aspx.cs" Inherits="cwglxt.ZbglAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-group">
    <asp:Label ID="Label2" runat="server" Text="名称" for="mc"></asp:Label>
    <asp:TextBox ID="mc" runat="server" placeholder="请输入名称" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="名称不能为空" ControlToValidate="mc" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
    
<div class="form-group">
    <asp:Label ID="Label4" runat="server" Text="类别" for="lb"></asp:Label>
    <asp:TextBox ID="lb" runat="server" placeholder="请输入名称" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="类别不能为空" ControlToValidate="lb" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
    
<div class="form-group">
    <asp:Label ID="Label5" runat="server" Text="金额" for="je"></asp:Label>
    <asp:TextBox ID="je" runat="server" placeholder="请输入金额" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="金额不能为空" ControlToValidate="je" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="金额范围在0-999999" ControlToValidate="je" ForeColor="Red" Display="Dynamic" Type="Double" MinimumValue="0" MaximumValue="999999"></asp:RangeValidator>
</div>
    
<div class="form-group">
    <asp:Label ID="Label6" runat="server" Text="说明" for="sm"></asp:Label>
    <asp:TextBox ID="sm" runat="server" placeholder="请输入说明" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="说明不能为空" ControlToValidate="sm" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>

<asp:Button ID="Button1" runat="server" Text="新增" CssClass="btn btn-primary" OnClick="Button1_Click"/>
<a href="Zbgl.aspx" class="btn btn-light ml-1">返回账本管理</a>
</asp:Content>
