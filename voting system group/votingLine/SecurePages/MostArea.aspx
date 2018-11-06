<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="MostArea.aspx.cs" Inherits="SecurePages_MostArea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px; width: 1000px;" align="center">
        <tr>
            <td style="font-weight: 700; font-size: x-large; text-align: center">
                Most Voted Area Report</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="dtsrcMostArea" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="highestArea" HeaderText="Highest Voting Area" 
                            ReadOnly="True" SortExpression="highestArea" />
                    </Columns>
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
                <asp:SqlDataSource ID="dtsrcMostArea" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" SelectCommand="
SELECT CONCAT(COUNT(area_name),&quot; people has voted at &quot;,UPPER(area_name)) AS &quot;highestArea&quot;
FROM  tblvote 
WHERE area_name IN( SELECT area_name FROM tblvote ) 
GROUP BY area_name
ORDER BY highestArea DESC"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

