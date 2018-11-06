<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="deleteParty.aspx.cs" Inherits="party_deleteParty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
           .ctable
             {
                 padding:10px;
                 background:white;
             }
        .style2
        {
            width: 356px;
        }
        .style3
        {
            width: 241px;
        }
    .style4
    {
        width: 38%;
    }
    .style5
    {
        width: 38%;
        height: 68px;
    }
    .style6
    {
        width: 241px;
        height: 68px;
    }
    .style7
    {
        height: 68px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td colspan="3" 
                
                style="font-weight: 700; font-size: x-large; text-align: center; background-color: #800000;">
                <asp:Label ID="Label1" runat="server" Text="Delete Political Party"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" 
                style="font-weight: 700; font-size: large; text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Party Id" style="color: #009900"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="dropId" runat="server" Height="30px" Width="185px" 
                    DataSourceID="dtsrcDeleteP" DataTextField="party_id" DataValueField="party_id">
                    <asp:ListItem>Select Item</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lblsucc" runat="server" Text="label" Visible="false" ForeColor="Green"></asp:Label>
                <asp:Label ID="lblerr" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Delete" 
                    Width="75px" onclick="Button1_Click" />
            </td>
            <td>
                <asp:SqlDataSource ID="dtsrcDeleteP" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:partyDel %>" 
                    ProviderName="<%$ ConnectionStrings:partyDel.ProviderName %>" 
                    SelectCommand="SELECT party_id FROM votingdb.tblparty"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

