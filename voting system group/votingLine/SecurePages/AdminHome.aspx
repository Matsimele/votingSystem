<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="SecurePages_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: xx-large;
            color: #009900;
            width: 298px;
        }
        .style4
        {
            width: 298px;
        }
        .style5
        {
            width: 306px;
        }
        .style6
        {
            width: 306px;
            color: #009900;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px; margin-right: 0px;" align="center" 
        width="1000">
        <tr>
            <td class="style3">
                <strong>Admin Home</strong></td>
            <td class="style6">
                <strong>Choose Function</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="btnRegParty" runat="server" Height="30px" Text="Add Party" 
                    Width="150px" onclick="btnRegParty_Click" />
            </td>
            <td class="style5">
                <asp:Button ID="Button2" runat="server" Height="30px" Text="Update Party Profile" 
                    Width="150px" onclick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Height="30px" Text="Delete Party Profile" 
                    Width="150px" onclick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="btnCandi" runat="server" Height="30px" Text="Add Candidate" 
                    Width="150px" onclick="btnCandi_Click" />
            </td>
            <td class="style5">
                <asp:Button ID="btnCandi0" runat="server" Height="30px" Text="Update Candidate Profile" 
                    Width="150px" onclick="btnCandi0_Click" />
            </td>
            <td>
                <asp:Button ID="btnCandi1" runat="server" Height="30px" Text="Delete Candidate Profile" 
                    Width="150px" onclick="btnCandi1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="btnPartyV" runat="server" Height="30px" Text="View Results" 
                    Width="150px" onclick="btnPartyV_Click" />
            </td>
            <td class="style5">
                <asp:Button ID="btnReport" runat="server" Height="30px" Text="Generate Reports" 
                    Width="150px" onclick="btnReport_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

