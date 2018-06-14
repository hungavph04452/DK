<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loaihang.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h1> Loại hàng</h1>
        <div style="color:#b200ff">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaLH" DataSourceID="SqlDataSource1" AllowPaging="True">
                <EditItemTemplate>
                    MaLH:
                    <asp:Label ID="MaLHLabel1" runat="server" Text='<%# Eval("MaLH") %>' />
                    <br />
                    TenLH:
                    <asp:TextBox ID="TenLHTextBox" runat="server" Text='<%# Bind("TenLH") %>' />
                    <br />
                    MaDM_SP:
                    <asp:TextBox ID="MaDM_SPTextBox" runat="server" Text='<%# Bind("MaDM_SP") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    MaLH:
                    <asp:TextBox ID="MaLHTextBox" runat="server" Text='<%# Bind("MaLH") %>' />
                    <br />
                    TenLH:
                    <asp:TextBox ID="TenLHTextBox" runat="server" Text='<%# Bind("TenLH") %>' />
                    <br />
                    MaDM_SP:
                    <asp:TextBox ID="MaDM_SPTextBox" runat="server" Text='<%# Bind("MaDM_SP") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    MaLH:
                    <asp:Label ID="MaLHLabel" runat="server" Text='<%# Eval("MaLH") %>' />
                    <br />
                    TenLH:
                    <asp:Label ID="TenLHLabel" runat="server" Text='<%# Bind("TenLH") %>' />
                    <br />
                    MaDM_SP:
                    <asp:Label ID="MaDM_SPLabel" runat="server" Text='<%# Bind("MaDM_SP") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaLH], [TenLH], [MaDM_SP] FROM [LoaiHang]"></asp:SqlDataSource>
        
        </div>
</asp:Content>

