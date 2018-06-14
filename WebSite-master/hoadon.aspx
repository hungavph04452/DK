<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadon.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Hóa đơn</h1> 
    <div style="color:#ffd800">
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        MaHD:
        <asp:DynamicControl ID="MaHDDynamicControl" runat="server" DataField="MaHD" Mode="ReadOnly" />
        <br />
        Soluong:
        <asp:DynamicControl ID="SoluongDynamicControl" runat="server" DataField="Soluong" Mode="Edit" />
        <br />
        MaKH:
        <asp:DynamicControl ID="MaKHDynamicControl" runat="server" DataField="MaKH" Mode="Edit" />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        MaHD:
        <asp:DynamicControl ID="MaHDDynamicControl" runat="server" DataField="MaHD" Mode="Insert" ValidationGroup="Insert" />
        <br />
        Soluong:
        <asp:DynamicControl ID="SoluongDynamicControl" runat="server" DataField="Soluong" Mode="Insert" ValidationGroup="Insert" />
        <br />
        MaKH:
        <asp:DynamicControl ID="MaKHDynamicControl" runat="server" DataField="MaKH" Mode="Insert" ValidationGroup="Insert" />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        MaHD:
        <asp:DynamicControl ID="MaHDDynamicControl" runat="server" DataField="MaHD" Mode="ReadOnly" />
        <br />
        Soluong:
        <asp:DynamicControl ID="SoluongDynamicControl" runat="server" DataField="Soluong" Mode="ReadOnly" />
        <br />
        MaKH:
        <asp:DynamicControl ID="MaKHDynamicControl" runat="server" DataField="MaKH" Mode="ReadOnly" />
        <br />

    </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaHD], [Soluong], [MaKH] FROM [HoaDon]"></asp:SqlDataSource>
    </div>
</asp:Content>

