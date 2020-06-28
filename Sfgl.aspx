<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Sfgl.aspx.cs" Inherits="cwglxt.Sfgl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-inline mt-2">
    <select class="form-control" runat="server" id="cxlb">
        <option value="">请选择查询类别</option>
        <option value="id">编码</option>
        <option value="mc">名称</option>
        <option value="lb">类别</option>
        <option value="je">金额</option>
        <option value="sm">说明</option>
    </select>
    
    <asp:TextBox ID="cxnr" runat="server" placeholder="请输入查询内容" CssClass="form-control ml-1"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="查询" CssClass="btn btn-primary ml-1" OnClick="Button1_Click"/>
    <a href="SfglAdd.aspx" class="btn btn-primary ml-1">新增收费</a>
</div>
<div class="mt-2">
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="border-color:#efefef;" EmptyDataText="没有查询到数据">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="编码" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="mc" HeaderText="名称" SortExpression="mc" />
            <asp:BoundField DataField="lb" HeaderText="类别" SortExpression="lb" />
            <asp:BoundField DataField="je" HeaderText="金额" SortExpression="je" />
            <asp:BoundField DataField="sm" HeaderText="说明" SortExpression="sm" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"SfglEdit.aspx?id="+Eval("id") %>' Text="编辑" CssClass="btn btn-info btn-sm"></asp:HyperLink>
                    <%--<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="" Text="删除"></asp:HyperLink>--%>
                    <a class="btn btn-danger btn-sm" href="javascript:void(0);" onclick="if(confirm('确定删除收费信息？')){window.location.href='SfglDel.aspx?id=<%# Eval("id") %>';}" >删除</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cwglxtConnectionString %>" SelectCommand="SELECT * FROM [sfxx]"></asp:SqlDataSource>
</div>
</asp:Content>
