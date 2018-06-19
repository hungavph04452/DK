<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Sản phẩm</h1>
    <p style="color:#b200ff">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                Gia:
                <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                MaLSP:
                <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                <br />
                HinhAnh:
                <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaSP:
                <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                Gia:
                <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                MaLSP:
                <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                <br />
                HinhAnh:
                <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                TenSP:
                <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                SoLuong:
                <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                Gia:
                <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                MaLSP:
                <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Bind("MaLSP") %>' />
                <br />
                HinhAnh:
                <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Bind("HinhAnh") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QuanLyBanHang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [SoLuong], [Gia], [MaLSP], [HinhAnh]) VALUES (@MaSP, @TenSP, @SoLuong, @Gia, @MaLSP, @HinhAnh)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaSP], [TenSP], [SoLuong], [Gia], [MaLSP], [HinhAnh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [SoLuong] = @SoLuong, [Gia] = @Gia, [MaLSP] = @MaLSP, [HinhAnh] = @HinhAnh WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MaLSP" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MaLSP" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="MaSP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

