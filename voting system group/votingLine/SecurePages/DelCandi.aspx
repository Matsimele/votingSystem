<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="DelCandi.aspx.cs" Inherits="SecurePages_DelCandi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 54px;
            font-weight: bold;
        }
        .style4
        {
            width: 320px;
            font-weight: bold;
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td class="style3" colspan="2" 
                style="background-color: #800000; font-size: x-large; text-align: center;">
                Delete The Candidate Profile</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Candidate Id</td>
            <td>
                <asp:DropDownList ID="DropDel" runat="server" Height="30px" Width="184px" 
                    DataSourceID="dtsrcCanId" DataTextField="can_id" DataValueField="can_id">
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblS" runat="server" Text="Label" Visible="false" ForeColor="Green"></asp:Label>
                <br />
                <asp:Label ID="lblE" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:SqlDataSource ID="dtsrcCanId" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    SelectCommand="SELECT can_id FROM votingdb.tblcandidate">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="btnDel" runat="server" Height="30px" Text="Delete" 
                    Width="75px" onclick="btnDel_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

