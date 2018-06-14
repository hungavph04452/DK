<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadonct.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 style="color: #00FFFF">Hóa đơn CT</h1>
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        MaCTHD:
        <asp:DynamicControl ID="MaCTHDDynamicControl" runat="server" DataField="MaCTHD" Mode="ReadOnly" />
        <br />
        MaSP:
        <asp:DynamicControl ID="MaSPDynamicControl" runat="server" DataField="MaSP" Mode="Edit" />
        <br />
        Sotien:
        <asp:DynamicControl ID="SotienDynamicControl" runat="server" DataField="Sotien" Mode="Edit" />
        <br />
        MaHD:
        <asp:DynamicControl ID="MaHDDynamicControl" runat="server" DataField="MaHD" Mode="Edit" />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        MaCTHD:
        <asp:DynamicControl ID="MaCTHDDynamicControl" runat="server" DataField="MaCTHD" Mode="Insert" ValidationGroup="Insert" />
        <br />
        MaSP:
        <asp:DynamicControl ID="MaSPDynamicControl" runat="server" DataField="MaSP" Mode="Insert" ValidationGroup="Insert" />
        <br />
        Sotien:
        <asp:DynamicControl ID="SotienDynamicControl" runat="server" DataField="Sotien" Mode="Insert" ValidationGroup="Insert" />
        <br />
        MaHD:
        <asp:DynamicControl ID="MaHDDynamicControl" runat="server" DataField="MaHD" Mode="Insert" ValidationGroup="Insert" />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        MaCTHD:
        <asp:DynamicControl ID="MaCTHDDynamicControl" runat="server" DataField="MaCTHD" Mode="ReadOnly" />
        <br />
        MaSP:
        <asp:DynamicControl ID="MaSPDynamicControl" runat="server" DataField="MaSP" Mode="ReadOnly" />
        <br />
        Sotien:
        <asp:DynamicControl ID="SotienDynamicControl" runat="server" DataField="Sotien" Mode="ReadOnly" />
        <br />
        MaHD:
        <asp:DynamicControl ID="MaHDDynamicControl" runat="server" DataField="MaHD" Mode="ReadOnly" />
        <br />

    </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaCTHD], [MaSP], [Sotien], [MaHD] FROM [ChitietHD]"></asp:SqlDataSource>
</asp:Content>

