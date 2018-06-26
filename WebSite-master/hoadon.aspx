<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadon.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 style="color:blue">Hóa đơn</h1>
    
    <div style="color:blue">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            NgayLap:
            <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            NgayLap:
            <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            NgayLap:
            <asp:Label ID="NgayLapLabel" runat="server" Text='<%# Bind("NgayLap") %>' />
            <br />
            MaKH:
            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </div>
    <div style="color:blue">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayLap], [MaKH]) VALUES (@MaHD, @NgayLap, @MaKH)" SelectCommand="SELECT [MaHD], [NgayLap], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="MaKH" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="MaKH" Type="String" />
            <asp:Parameter Name="MaHD" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

