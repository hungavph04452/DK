<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadonct.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 style="color: #00FFFF">Hóa đơn CT</h1>
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        MaSP:
        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
        <br />
        SoLuongMua:
        <asp:TextBox ID="SoLuongMuaTextBox" runat="server" Text='<%# Bind("SoLuongMua") %>' />
        <br />
        DonGiaBan:
        <asp:TextBox ID="DonGiaBanTextBox" runat="server" Text='<%# Bind("DonGiaBan") %>' />
        <br />
        MaHD:
        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        MaSP:
        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
        <br />
        SoLuongMua:
        <asp:TextBox ID="SoLuongMuaTextBox" runat="server" Text='<%# Bind("SoLuongMua") %>' />
        <br />
        DonGiaBan:
        <asp:TextBox ID="DonGiaBanTextBox" runat="server" Text='<%# Bind("DonGiaBan") %>' />
        <br />
        MaHD:
        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        MaSP:
        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Bind("MaSP") %>' />
        <br />
        SoLuongMua:
        <asp:Label ID="SoLuongMuaLabel" runat="server" Text='<%# Bind("SoLuongMua") %>' />
        <br />
        DonGiaBan:
        <asp:Label ID="DonGiaBanLabel" runat="server" Text='<%# Bind("DonGiaBan") %>' />
        <br />
        MaHD:
        <asp:Label ID="MaHDLabel" runat="server" Text='<%# Bind("MaHD") %>' />
        <br />

    </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaSP], [SoLuongMua], [DonGiaBan], [MaHD] FROM [ChiTietHoaDon]"></asp:SqlDataSource>
</asp:Content>

