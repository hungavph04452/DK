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
        <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
        <br />
        TenKH:
        <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
        <br />
        DiaChi:
        <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
        <br />
        SoDT:
        <asp:TextBox ID="SoDTTextBox" runat="server" Text='<%# Bind("SoDT") %>' />
        <br />
        GioiTinh:
        <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        MaKH:
        <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
        <br />
        TenKH:
        <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
        <br />
        DiaChi:
        <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
        <br />
        SoDT:
        <asp:TextBox ID="SoDTTextBox" runat="server" Text='<%# Bind("SoDT") %>' />
        <br />
        GioiTinh:
        <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        MaKH:
        <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
        <br />
        TenKH:
        <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
        <br />
        DiaChi:
        <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
        <br />
        SoDT:
        <asp:Label ID="SoDTLabel" runat="server" Text='<%# Bind("SoDT") %>' />
        <br />
        GioiTinh:
        <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
    </asp:FormView>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT], [GioiTinh], [Email]) VALUES (@MaKH, @TenKH, @DiaChi, @SoDT, @GioiTinh, @Email)" SelectCommand="SELECT [MaKH], [TenKH], [DiaChi], [SoDT], [GioiTinh], [Email] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [DiaChi] = @DiaChi, [SoDT] = @SoDT, [GioiTinh] = @GioiTinh, [Email] = @Email WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="String" />
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaKH" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

