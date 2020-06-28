<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="PzglEdit.aspx.cs" Inherits="cwglxt.PzglEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-group">
    <asp:Label ID="Label1" runat="server" Text="编码" for="id"></asp:Label>
    <asp:TextBox ID="id" runat="server" placeholder="请输编码" CssClass="form-control" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="编码不能为空" ControlToValidate="id" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
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
    
<div class="form-group">
    <asp:Label ID="Label7" runat="server" Text="日期" for="rq"></asp:Label>
    <asp:TextBox ID="rq" runat="server" placeholder="yyyy/MM/dd" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="日期不能为空" ControlToValidate="rq" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="日期输入不合法" ControlToValidate="rq" ForeColor="Red" Display="Dynamic" Type="Date" MinimumValue="2000-01-01" MaximumValue="2999-12-31"></asp:RangeValidator>
</div>

<asp:Button ID="Button1" runat="server" Text="修改" CssClass="btn btn-primary" OnClick="Button1_Click"/>
<a href="Pzgl.aspx" class="btn btn-light ml-1">返回凭证管理</a>
</asp:Content>
