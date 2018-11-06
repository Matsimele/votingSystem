<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="VoterData.aspx.cs" Inherits="SecurePages_VoterData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px; width: 1000px;" align="center">
        <tr>
            <td style="font-weight: 700; font-size: x-large; text-align: center">
                Voters That Voted Report</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="dtsrcVoter" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="VOTER'S WHO VOTED" HeaderText="VOTER'S WHO VOTED" 
                            ReadOnly="True" SortExpression="VOTER'S WHO VOTED" />
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
                <asp:SqlDataSource ID="dtsrcVoter" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" SelectCommand="SELECT CONCAT(UPPER(V.voter_name),&quot;  voted for **** at &quot; , UPPER(P.area_name) )
AS &quot;VOTER'S WHO VOTED&quot;
from tblvoter V,tblvote P
 where V.voter_id = P.voter_id 
"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

