<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="CastVote.aspx.cs" Inherits="CastVote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                 .ctable
        {
                 padding:10px;
                 background:white;
                 height: 20px;
        }
     
        #rstVote
        {
            height: 30px;
            width: 75px;
            margin-left: 11px;
        }
        .style1
        {
            text-align: right;
            font-size: x-large;
            font-weight: bold;
            height: 22px;
        }
        .style2
        {
            font-size: x-large;
            text-align: center;
            height: 70px;
        }
        .style6
        {
            text-align: right;
            width: 251px;
            font-size: x-large;
            font-weight: bold;
            height: 16px;
        }
        .style7
        {
            width: 212px;
            height: 16px;
        }
        .style8
        {
            height: 16px;
        }
        .style12
        {
            height: 62px;
            padding: 10px;
            background: white;
        }
        .style14
        {
            padding: 10px;
            background: white;
        }
        .style15
    {
        padding: 10px;
        background: white;
        width: 251px;
    }
    .style16
    {
        height: 62px;
        padding: 10px;
        background: white;
        width: 251px;
    }
    .style17
    {
        padding: 10px;
        background: white;
        width: 212px;
    }
    .style18
    {
        height: 62px;
        padding: 10px;
        background: white;
        width: 212px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" align="center" style="height:392px" width="1000">  
        <tr>
            <td class="style2" colspan="3" style="background-color: #800000">
                <strong>Vote Page </strong></td>
        </tr>
        <tr>
            <td style="background-image: none" class="style6">
                <br />
                Party Name<br />
                <br />
            </td>
            <td style="background-image: none" class="style7">
                <asp:DropDownList ID="DropParty" runat="server" DataSourceID="dtsrcParty" 
                    DataTextField="party_name" DataValueField="party_name" Height="30px" 
                    Width="180px">
                </asp:DropDownList>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td style="background-image: none" class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropParty" ErrorMessage="Party Name Can't be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style15" 
                
                style="background-image: none; font-weight: 700; font-size: x-large; text-align: right;">
                <br />
                &nbsp;&nbsp;&nbsp;Area Name<br />
                <br />
            </td>
            <td class="style17" style="background-image: none">
                <asp:DropDownList ID="DropArea" runat="server" DataSourceID="dtsrcName" 
                    DataTextField="area_name" DataValueField="area_name" Height="30px" 
                    Width="180px">
                    <asp:ListItem>Select Item</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            <td class="style14" style="background-image: none">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropArea" ErrorMessage="Choose Your Area Id" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="background-image: none; font-weight: 700; font-size: x-large; text-align: right;" 
                class="style16">
                Voter Id<br />
&nbsp; </td>
            <td style="background-image: none" class="style18">
                <asp:TextBox ID="txtVoterIdCast" runat="server" Height="30px" Width="180px" ></asp:TextBox>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblVote" runat="server" ForeColor="Red" Text="" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblVotS" runat="server" Text="Label" ForeColor="Green" Visible="False"></asp:Label>
            </td>
            <td style="background-image: none" class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtVoterIdCast" ErrorMessage="Enter Your Voter Id" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td colspan="3" style="background-color: #0000FF" class="ctable">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnVote" runat="server" Height="30px" 
                    style="margin-left: 282px" Text="Vote" Width="75px" 
                    onclick="btnVote_Click" />
                
                <br />
                <asp:SqlDataSource ID="dtsrcParty" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT party_name FROM votingdb.tblparty">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dtsrcName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT area_name FROM votingdb.tblarea"></asp:SqlDataSource>
                <br />
                
                </td>
        </tr>
    </table>
</asp:Content>

 