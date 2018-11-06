<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .ctable
             {
                 padding:10px;
                 background:white;
             }
    .style2
    {
            width: 363px;
        }
        .style3
        {
            width: 261px;
        }
        #Reset1
        {
            height: 30px;
            width: 75px;
            margin-left: 24px;
        }
        .style4
        {
            width: 333px;
            padding: 10px;
            background: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px; width: 1000px;" align="center">
        <tr>
            <td colspan="3" class="ctable">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; font-size: x-large; text-align: center" Text="Create LogIn Account"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" 
                style="text-align: right; font-weight: 700; font-size: large">
                Voter&nbsp; Id</td>
            <td class="style3">
                <asp:TextBox ID="txtVoter" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtVoter" ErrorMessage="Enter Your Voter Id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" 
                style="text-align: right; font-weight: 700; font-size: large">
                Role&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style3">
                <asp:DropDownList ID="DropRole" runat="server" Height="30px" Width="184px">
                    <asp:ListItem>Select Role</asp:ListItem>
                    <asp:ListItem>Voter</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" 
                style="text-align: right; font-weight: 700; font-size: large">
                Username</td>
            <td class="style3">
                <asp:TextBox ID="txtUserN" runat="server" Height="30px" Width="180px" ></asp:TextBox>
                <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtUserN" ErrorMessage="Enter Your Username " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" 
                style="text-align: right; font-size: large; font-weight: 700">
                Password<br />
                <br />
            </td>
            <td class="style3">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="30px" 
                    Width="180px"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblsuc" runat="server" Text="Label" Visible="False" ForeColor="Green"></asp:Label>
                <asp:Label ID="lblerr" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="Password Must be 4 to 6 Characters" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{4,6}$"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="BtnCreate" runat="server" Height="30px" Text="Create" 
                    Width="75px" onclick="BtnCreate_Click" style="margin-left: 4px" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    InsertCommand="INSERT INTO votingdb.tblvoter(user_name, user_password) VALUES (?,?)" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    SelectCommand="SELECT user_name, user_password FROM votingdb.tbluser">
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

