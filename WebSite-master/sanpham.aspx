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

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaSP], [MaDM_SP], [Donvi], [TenSP], [GiaSP], [ChuThich], [HinhAnh] FROM [SanPham]"></asp:SqlDataSource>
    </p>
</asp:Content>

