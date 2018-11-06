<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="SecurePage.aspx.cs" Inherits="SecurePages_SecurePages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      .ctable
             {
                 padding:10px;
                 background:white;
             }
    .style2
    {
        color: #669900;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td style="font-weight: 700; text-align: center; font-size: x-large">
                Congratulation LogIn Successful</td>
        </tr>
        <tr>
            <td style="font-weight: 700; font-size: x-large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                Logged On AS:<asp:Label ID="lbluser" runat="server" Text="Label" ForeColor="Green"></asp:Label>
&nbsp;&nbsp; -- Role:&nbsp;<asp:Label ID="lblrole" runat="server" Text="Label" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-weight: 700; font-size: x-large; text-align: center">
                Users Data From Database</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" SelectCommand="Select user_id AS ID, user_name AS UserName, user_password AS Password, user_role AS Role From votingdb.tbluser 
where user_name =?">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lbluser" Name="user_name" 
                            PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

