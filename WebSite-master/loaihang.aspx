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
                    <asp:DynamicControl ID="MaLHDynamicControl" runat="server" DataField="MaLH" Mode="ReadOnly" />
                    <br />
                    TenLH:
                    <asp:DynamicControl ID="TenLHDynamicControl" runat="server" DataField="TenLH" Mode="Edit" />
                    <br />
                    MaDM_SP:
                    <asp:DynamicControl ID="MaDM_SPDynamicControl" runat="server" DataField="MaDM_SP" Mode="Edit" />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    MaLH:
                    <asp:DynamicControl ID="MaLHDynamicControl" runat="server" DataField="MaLH" Mode="Insert" ValidationGroup="Insert" />
                    <br />
                    TenLH:
                    <asp:DynamicControl ID="TenLHDynamicControl" runat="server" DataField="TenLH" Mode="Insert" ValidationGroup="Insert" />
                    <br />
                    MaDM_SP:
                    <asp:DynamicControl ID="MaDM_SPDynamicControl" runat="server" DataField="MaDM_SP" Mode="Insert" ValidationGroup="Insert" />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    MaLH:
                    <asp:DynamicControl ID="MaLHDynamicControl" runat="server" DataField="MaLH" Mode="ReadOnly" />
                    <br />
                    TenLH:
                    <asp:DynamicControl ID="TenLHDynamicControl" runat="server" DataField="TenLH" Mode="ReadOnly" />
                    <br />
                    MaDM_SP:
                    <asp:DynamicControl ID="MaDM_SPDynamicControl" runat="server" DataField="MaDM_SP" Mode="ReadOnly" />
                    <br />

                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaLH], [TenLH], [MaDM_SP] FROM [LoaiHang]" DeleteCommand="DELETE FROM [LoaiHang] WHERE [MaLH] = @MaLH" InsertCommand="INSERT INTO [LoaiHang] ([MaLH], [TenLH], [MaDM_SP]) VALUES (@MaLH, @TenLH, @MaDM_SP)" UpdateCommand="UPDATE [LoaiHang] SET [TenLH] = @TenLH, [MaDM_SP] = @MaDM_SP WHERE [MaLH] = @MaLH">
                <DeleteParameters>
                    <asp:Parameter Name="MaLH" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLH" Type="Int32" />
                    <asp:Parameter Name="TenLH" Type="String" />
                    <asp:Parameter Name="MaDM_SP" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLH" Type="String" />
                    <asp:Parameter Name="MaDM_SP" Type="Int32" />
                    <asp:Parameter Name="MaLH" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
        </div>
</asp:Content>

