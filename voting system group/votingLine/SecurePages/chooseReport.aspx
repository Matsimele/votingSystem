<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="chooseReport.aspx.cs" Inherits="SecurePages_chooseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 341px;
        }
        .style4
        {
            width: 249px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px; width: 1000px;" align="center">
        <tr>
            <td colspan="3" 
                style="font-weight: 700; text-align: center; font-size: x-large">
                Choose Report</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Voted Voters Report" 
                    Width="150px" onclick="Button1_Click" />
            </td>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" Height="30px" Text="Most Voted Party Report" 
                    Width="169px" onclick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="btnArea" runat="server" Height="30px" Text="Most Voting Area Report" 
                    Width="169px" onclick="btnArea_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

