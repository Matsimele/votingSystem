<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ResultsWin.aspx.cs" Inherits="SecurePages_ResultsWin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 55px;
        }
        .style4
        {
            width: 362px;
            font-weight: 700;
            text-align: center;
        }
        .style5
        {
            width: 362px;
            font-weight: 700;
            text-align: center;
            height: 41px;
        }
        .style6
        {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align="center" width="1000">
        <tr>
            <td class="style3" colspan="2" 
                style="background-color: #800000; font-weight: 700; font-size: x-large; text-align: center;">
                Party Total Votes</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-weight: 700; text-align: center; font-size: large">
                Party Name</td>
            <td>
                <asp:DropDownList ID="DropDown" runat="server" DataSourceID="dtsrcPartyName" 
                    DataTextField="party_name" DataValueField="party_name" Height="30px" 
                    Width="184px">
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="false" ForeColor="Blue" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
                    Text="Show Votes" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;Click Button For Winner&nbsp;</td>
            <td>
                <asp:Button ID="btnWin" runat="server" Height="30px" Text="Winner" 
                    Width="100px" onclick="btnWin_Click" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                <asp:Label ID="lblWinner" runat="server" Text="Label" Visible="False" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:SqlDataSource ID="dtsrcPartyName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    SelectCommand="SELECT party_name FROM votingdb.tblparty"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

