<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="khachhang.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 style="color:#f00">Khách hàng</h1>
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        MaKH:
        <asp:DynamicControl ID="MaKHDynamicControl" runat="server" DataField="MaKH" Mode="ReadOnly" />
        <br />
        TenKH:
        <asp:DynamicControl ID="TenKHDynamicControl" runat="server" DataField="TenKH" Mode="Edit" />
        <br />
        Email:
        <asp:DynamicControl ID="EmailDynamicControl" runat="server" DataField="Email" Mode="Edit" />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        MaKH:
        <asp:DynamicControl ID="MaKHDynamicControl" runat="server" DataField="MaKH" Mode="Insert" ValidationGroup="Insert" />
        <br />
        TenKH:
        <asp:DynamicControl ID="TenKHDynamicControl" runat="server" DataField="TenKH" Mode="Insert" ValidationGroup="Insert" />
        <br />
        Email:
        <asp:DynamicControl ID="EmailDynamicControl" runat="server" DataField="Email" Mode="Insert" ValidationGroup="Insert" />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        MaKH:
        <asp:DynamicControl ID="MaKHDynamicControl" runat="server" DataField="MaKH" Mode="ReadOnly" />
        <br />
        TenKH:
        <asp:DynamicControl ID="TenKHDynamicControl" runat="server" DataField="TenKH" Mode="ReadOnly" />
        <br />
        Email:
        <asp:DynamicControl ID="EmailDynamicControl" runat="server" DataField="Email" Mode="ReadOnly" />
        <br />

    </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaKH], [TenKH], [Email] FROM [KhachHang]"></asp:SqlDataSource>
</asp:Content>

