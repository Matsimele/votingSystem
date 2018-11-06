<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UpdCandi.aspx.cs" Inherits="SecurePages_UpdCandi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 52px;
        }
        .style4
        {
            width: 341px;
            font-weight: 700;
            font-size: large;
            text-align: center;
        }
        .style5
        {
            width: 263px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td class="style3" colspan="3" 
                style="background-color: #800000; font-weight: 700; font-size: x-large; text-align: center;">
                Update Candidate Profile</td>
        </tr>
        <tr>
            <td class="style4">
                Candidate Id</td>
            <td class="style5">
                <asp:DropDownList ID="dropId" runat="server" DataSourceID="dtsrcCanId" 
                    DataTextField="can_id" DataValueField="can_id" Height="30px" Width="184px">
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Candidate Name</td>
            <td class="style5">
                <asp:TextBox ID="txtNameU" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNameU" ErrorMessage="Enter The Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Candidate Area Name</td>
            <td class="style5">
                <asp:DropDownList ID="dropArea" runat="server" DataSourceID="dtsrcName" 
                    DataTextField="area_name" DataValueField="area_name" Height="30px" 
                    Width="184px">
                </asp:DropDownList>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Candidate Image</td>
            <td class="style5">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="31px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Image ID="Image1" runat="server" Height="71px" Width="126px" />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Upload" Width="124px" 
                    onclick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="lblUp" runat="server" Text="Label" Visible="false" 
                    ForeColor="Green"></asp:Label>
            &nbsp;<asp:Label ID="Lab" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Province</td>
            <td class="style5">
                <asp:DropDownList ID="DropProv" runat="server" Height="30px" Width="184px">
                    <asp:ListItem>Select Province</asp:ListItem>
                    <asp:ListItem>Mpumalanga</asp:ListItem>
                    <asp:ListItem>Limpopo</asp:ListItem>
                    <asp:ListItem>Gauteng</asp:ListItem>
                    <asp:ListItem>KZN</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropProv" ErrorMessage="Select Province" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                City/Town</td>
            <td class="style5">
                <asp:TextBox ID="txtCiti" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtCiti" ErrorMessage="Enter Town" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Code</td>
            <td class="style5">
                <asp:TextBox ID="txtKhodi" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtKhodi" ErrorMessage="Enter Code" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="lblS" runat="server" Text="Label" Visible="false" ForeColor="Green"></asp:Label>
                <br />
                <asp:Label ID="lblE" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:SqlDataSource ID="dtsrcCanId" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    SelectCommand="SELECT can_id FROM votingdb.tblcandidate">
                </asp:SqlDataSource>
            </td>
            <td class="style5">
                <asp:Button ID="btnUpdate" runat="server" Height="30px" Text="Update Profile" 
                    Width="105px" onclick="btnUpdate_Click" />
            </td>
            <td>
                <asp:SqlDataSource ID="dtsrcName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT area_name FROM votingdb.tblarea"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

