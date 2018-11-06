<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="RecoverPassV.aspx.cs" Inherits="Pages_RecoverPassV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .ctable
             {
                 padding:10px;
                 background:white;
             }
        .style3
        {
            width: 361px;
            font-weight: bold;
            text-align: center;
        }
        .style4
        {
            font-weight: 700;
            text-align: center;
            font-size: x-large;
        }
        .style5
        {
            width: 223px;
        }
        #Reset1
        {
            height: 30px;
            width: 100px;
            margin-left: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td class="style4" colspan="3">
                Recover Password</td>
        </tr>
        <tr>
            <td class="style3">
                E-Mail</td>
            <td class="style5">
                <asp:TextBox ID="txtRecP" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtRecP" ErrorMessage="Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter Correct E-Mail Format" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtRecP"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="lblPass" runat="server" Text="Label" Visible="false" ForeColor="Green"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Submit" 
                    Width="100px" onclick="Button1_Click" />
                <input id="Reset1" type="reset" value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

