<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="MostParty.aspx.cs" Inherits="SecurePages_MostParty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px; width: 1000px;" align="center">
        <tr>
            <td style="font-weight: 700; font-size: x-large; text-align: center">
                Most Voted Party Report</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="dtsrcMostParty" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="party_name" HeaderText="Party Name" 
                            SortExpression="party_name" />
                        <asp:BoundField DataField="totalVotes" HeaderText="totalVotes" ReadOnly="True" 
                            SortExpression="totalVotes" />
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
                <asp:SqlDataSource ID="dtsrcMostParty" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" SelectCommand="SELECT party_name, COUNT(party_name) AS totalVotes
 FROM  tblvote 
WHERE party_name IN( SELECT party_name FROM tblparty ) 
GROUP BY party_name
 ORDER BY totalVotes desc"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

