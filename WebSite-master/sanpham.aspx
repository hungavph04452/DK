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
                <asp:DynamicControl ID="MaSPDynamicControl" runat="server" DataField="MaSP" Mode="ReadOnly" />
                <br />
                MaDM_SP:
                <asp:DynamicControl ID="MaDM_SPDynamicControl" runat="server" DataField="MaDM_SP" Mode="Edit" />
                <br />
                Donvi:
                <asp:DynamicControl ID="DonviDynamicControl" runat="server" DataField="Donvi" Mode="Edit" />
                <br />
                TenSP:
                <asp:DynamicControl ID="TenSPDynamicControl" runat="server" DataField="TenSP" Mode="Edit" />
                <br />
                GiaSP:
                <asp:DynamicControl ID="GiaSPDynamicControl" runat="server" DataField="GiaSP" Mode="Edit" />
                <br />
                ChuThich:
                <asp:DynamicControl ID="ChuThichDynamicControl" runat="server" DataField="ChuThich" Mode="Edit" />
                <br />
                HinhAnh:
                <asp:DynamicControl ID="HinhAnhDynamicControl" runat="server" DataField="HinhAnh" Mode="Edit" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaSP:
                <asp:DynamicControl ID="MaSPDynamicControl" runat="server" DataField="MaSP" Mode="Insert" ValidationGroup="Insert" />
                <br />
                MaDM_SP:
                <asp:DynamicControl ID="MaDM_SPDynamicControl" runat="server" DataField="MaDM_SP" Mode="Insert" ValidationGroup="Insert" />
                <br />
                Donvi:
                <asp:DynamicControl ID="DonviDynamicControl" runat="server" DataField="Donvi" Mode="Insert" ValidationGroup="Insert" />
                <br />
                TenSP:
                <asp:DynamicControl ID="TenSPDynamicControl" runat="server" DataField="TenSP" Mode="Insert" ValidationGroup="Insert" />
                <br />
                GiaSP:
                <asp:DynamicControl ID="GiaSPDynamicControl" runat="server" DataField="GiaSP" Mode="Insert" ValidationGroup="Insert" />
                <br />
                ChuThich:
                <asp:DynamicControl ID="ChuThichDynamicControl" runat="server" DataField="ChuThich" Mode="Insert" ValidationGroup="Insert" />
                <br />
                HinhAnh:
                <asp:DynamicControl ID="HinhAnhDynamicControl" runat="server" DataField="HinhAnh" Mode="Insert" ValidationGroup="Insert" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaSP:
                <asp:DynamicControl ID="MaSPDynamicControl" runat="server" DataField="MaSP" Mode="ReadOnly" />
                <br />
                MaDM_SP:
                <asp:DynamicControl ID="MaDM_SPDynamicControl" runat="server" DataField="MaDM_SP" Mode="ReadOnly" />
                <br />
                Donvi:
                <asp:DynamicControl ID="DonviDynamicControl" runat="server" DataField="Donvi" Mode="ReadOnly" />
                <br />
                TenSP:
                <asp:DynamicControl ID="TenSPDynamicControl" runat="server" DataField="TenSP" Mode="ReadOnly" />
                <br />
                GiaSP:
                <asp:DynamicControl ID="GiaSPDynamicControl" runat="server" DataField="GiaSP" Mode="ReadOnly" />
                <br />
                ChuThich:
                <asp:DynamicControl ID="ChuThichDynamicControl" runat="server" DataField="ChuThich" Mode="ReadOnly" />
                <br />
                HinhAnh:
                <asp:DynamicControl ID="HinhAnhDynamicControl" runat="server" DataField="HinhAnh" Mode="ReadOnly" />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaSP], [MaDM_SP], [Donvi], [TenSP], [GiaSP], [ChuThich], [HinhAnh] FROM [SanPham]" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaDM_SP], [Donvi], [TenSP], [GiaSP], [ChuThich], [HinhAnh]) VALUES (@MaSP, @MaDM_SP, @Donvi, @TenSP, @GiaSP, @ChuThich, @HinhAnh)" UpdateCommand="UPDATE [SanPham] SET [MaDM_SP] = @MaDM_SP, [Donvi] = @Donvi, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [ChuThich] = @ChuThich, [HinhAnh] = @HinhAnh WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaDM_SP" Type="Int32" />
                <asp:Parameter Name="Donvi" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="ChuThich" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaDM_SP" Type="Int32" />
                <asp:Parameter Name="Donvi" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="ChuThich" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="Object" />
                <asp:Parameter Name="MaSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

