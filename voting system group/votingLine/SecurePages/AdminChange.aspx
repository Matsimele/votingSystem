<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AdminChange.aspx.cs" Inherits="Admin_AdminChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .ctable
             {
                 padding:10px;
                 background:white;
             }
        .style2
        {
            font-size: x-large;
        }
        .style4
        {
            width: 310px;
        }
        #Reset1
        {
            height: 30px;
            width: 75px;
            margin-left: 14px;
        }
        .style5
        {
            width: 165px;
            font-weight: 700;
            text-align: right;
        }
        .style7
        {
            width: 159px;
            font-weight: 700;
            text-align: right;
        }
        .style8
        {
            width: 165px;
            font-weight: 700;
            text-align: right;
            height: 56px;
        }
        .style9
        {
            width: 310px;
            height: 56px;
        }
        .style10
        {
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td class="style2" colspan="4" 
                style="background-color: #800000; text-align: center;">
                <strong>Change Password</strong></td>
        </tr>
        <tr>
            <td class="style7" rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="266px" 
                    ImageUrl="~/Pictures/Building.jpg" Width="160px" />
            </td>
            <td class="style8">
                &nbsp;Admin Id</td>
            <td class="style9">
                <asp:TextBox ID="txtAId" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtAId" ErrorMessage="Enter Admin Id " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                New Password</td>
            <td class="style4">
                <asp:TextBox ID="txtAId1" runat="server" Height="30px" Width="180px" 
               TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAId1" ErrorMessage="Enter New Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtAId1" ErrorMessage="Password Must Be 4 to 6 Characters" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{4,6}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Confirm Password</td>
            <td class="style4">
                <asp:TextBox ID="txtAId2" runat="server" Height="30px" Width="180px" 
                    TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtAId1" ControlToValidate="txtAId2" 
                    ErrorMessage="Password Must Match " ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="labelC" runat="server" Text="Label" ForeColor="Green" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="lblError" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            &nbsp;&nbsp;<br />
                If changed Your Password <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogIn.aspx">Go To Login</asp:HyperLink>
            &nbsp;<br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnChange" runat="server" Height="30px" 
                    style="margin-left: 5px" Text="Change" Width="75px" 
                    onclick="btnChange_Click" />
&nbsp;<input id="Reset1" type="reset" value="reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
