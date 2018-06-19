<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loaihang.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h1> Loại hàng</h1>
        <div style="color:#b200ff">
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaLSP" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    MaLSP:
                    <asp:Label ID="MaLSPLabel1" runat="server" Text='<%# Eval("MaLSP") %>' />
                    <br />
                    TenLSP:
                    <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    MaLSP:
                    <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                    <br />
                    TenLSP:
                    <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    MaLSP:
                    <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Eval("MaLSP") %>' />
                    <br />
                    TenLSP:
                    <asp:Label ID="TenLSPLabel" runat="server" Text='<%# Bind("TenLSP") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" SelectCommand="SELECT [MaLSP], [TenLSP] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                    <asp:Parameter Name="TenLSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLSP" Type="String" />
                    <asp:Parameter Name="MaLSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
</asp:Content>

