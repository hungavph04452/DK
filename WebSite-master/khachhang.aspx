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

        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

    </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaKH], [TenKH], [Email] FROM [KhachHang]" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [Email]) VALUES (@MaKH, @TenKH, @Email)" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [Email] = @Email WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

