<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddCandidate.aspx.cs" Inherits="SecurePages_AddCandidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .ctable
             {
                 padding:10px;
                 background:white;
             }
        .style3
        {
            width: 358px;
            font-weight: 700;
            font-size: large;
            text-align: center;
        }
        .style4
        {
            width: 233px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" align="center" style="height:392px" width="1000">
        <tr>
            <td colspan="3" 
                style="background-color: #800000; font-size: x-large; text-align: center;">
                <asp:Label ID="Label1" runat="server" Text="Register Candidate" 
                    style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Candidate Name</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Candidate Name Is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Candidate Party Name</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="184px" 
                    DataSourceID="dtsrcPartyName" DataTextField="party_name" 
                    DataValueField="party_name">
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Candidate Area Name</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="184px" 
                    DataSourceID="dtsrcName" DataTextField="area_name" 
                    DataValueField="area_name">
                </asp:DropDownList>
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Candidate Image</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="Upload File" Width="126px" 
                    onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Image Here</td>
            <td class="style4">
                <asp:Image ID="Image" runat="server" Height="85px" Width="126px" />
                <br />
                <br />
                <asp:Label ID="lblImage" runat="server" Text="Label" ForeColor="Green" Visible = "false"></asp:Label>
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Province</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownListPr" runat="server" Height="30px" 
                    Width="184px">
                    <asp:ListItem>Select Province</asp:ListItem>
                    <asp:ListItem>Mpumalanga</asp:ListItem>
                    <asp:ListItem>Limpopo</asp:ListItem>
                    <asp:ListItem>Gauteng</asp:ListItem>
                    <asp:ListItem>KZN</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                City/Town</td>
            <td class="style4">
                <asp:TextBox ID="txtCity" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="Enter The Town" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Code</td>
            <td class="style4">
                <asp:TextBox ID="txtCod" runat="server" Height="30px" 
                     Width="180px"></asp:TextBox>
                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtCod" ErrorMessage="Enter The Code" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblok" runat="server" Text="Label" ForeColor="Green" Visible = "false"></asp:Label>
                <br />
                <asp:Label ID="lblNot" runat="server" Text="Label" ForeColor="Red" Visible = "false"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:SqlDataSource ID="dtsrcName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT area_name FROM votingdb.tblarea"></asp:SqlDataSource>
            </td>
            <td class="style4">
                <asp:Button ID="btnRegCand" runat="server" Height="30px" Text="Register" 
                    Width="75px" onclick="btnRegCand_Click" />
                <asp:SqlDataSource ID="dtsrcPartyName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    SelectCommand="SELECT party_name FROM votingdb.tblparty">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    InsertCommand="INSERT INTO votingdb.tblcandidate(can_name, can_party, area_id, can_image) VALUES (?,?,?,?)" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    SelectCommand="SELECT can_name, can_party, area_id, can_image FROM votingdb.tblcandidate">
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

