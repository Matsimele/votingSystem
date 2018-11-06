<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UpdateVoter.aspx.cs" Inherits="UpdateVoter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .ctable
        {
                 padding:10px;
                 background:white;
        }
        .style1
        {
            text-align: center;
            font-size: x-large;
        }
    #Reset1
    {
        height: 30px;
        width: 80px;
        margin-left: 22px;
    }
    .style3
    {
        height: 66px;
    }
    .style4
    {
            width: 374px;
            font-weight: bold;
            text-align: right;
        }
    .style5
    {
        width: 374px;
        text-align: right;
    }
    .style6
    {
            width: 273px;
        }
        .style10
        {
            width: 374px;
            font-weight: bold;
            text-align: right;
            height: 57px;
        }
        .style11
        {
            width: 273px;
            height: 57px;
        }
        .style12
        {
            height: 57px;
        }
        .style13
        {
            width: 374px;
            font-weight: bold;
            text-align: right;
            height: 64px;
        }
        .style14
        {
            width: 273px;
            height: 64px;
        }
        .style15
        {
            height: 64px;
        }
        </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td class="style1" colspan="3" style="background-color: #800000">
                <strong>Update Information</strong></td>
        </tr>
        <tr>
            <td class="style4">
                <br />
                <br />
                <br />
                Voter Id</td>
            <td class="style6">
                <strong>
                <br />
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
                &nbsp;<asp:Label ID="Label12" runat="server" ForeColor="Blue" 
                    Text="Indicates Required Fields"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtId" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </strong>
            </td>
            <td>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtId" ErrorMessage="Enter Your Voter Id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <br />
                Name</td>
            <td class="style6">
                <asp:TextBox ID="txtNameUp" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtNameUp" ErrorMessage="Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtNameUp" ErrorMessage="Enter Alphabets Only" 
                    ForeColor="Red" ValidationExpression="[a-zA-Z\-'\s]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Province</td>
            <td class="style11">
                <asp:DropDownList ID="DropListP" runat="server" Height="30px" Width="184px">
                    <asp:ListItem>Select Province</asp:ListItem>
                    <asp:ListItem>Mpumalanga</asp:ListItem>
                    <asp:ListItem>Limpopo</asp:ListItem>
                    <asp:ListItem>Gauteng</asp:ListItem>
                    <asp:ListItem>KZN</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label23" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropListP" ErrorMessage="Select Your Province" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style10">
                City</td>
            <td class="style11">
                <asp:TextBox ID="txtCity" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="Enter Your Home Town" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style10">
                Code</td>
            <td class="style11">
                <asp:TextBox ID="txtCodeU" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label25" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtCodeU" ErrorMessage="Enter Your Town Code" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style13">
                Phone No</td>
            <td class="style14">
                <asp:TextBox ID="txtPhoneUp" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPhoneUp" ErrorMessage="Enter Phone Number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Phone Number should be 10 Digits" 
                    ControlToValidate="txtPhoneUp" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{10,10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Email</td>
            <td class="style6">
                <asp:TextBox ID="txtEmailUp" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtEmailUp" ErrorMessage="Enter E-Mail Address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmailUp" ErrorMessage="Enter correct Email Format" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>Area Name<br />
                <br />
                <br />
                </strong></td>
            <td class="style6">
                <asp:DropDownList ID="DropDownAUp" runat="server" DataSourceID="dtsrcName" 
                    DataTextField="area_name" DataValueField="area_name" Height="30px" 
                    Width="184px">
                </asp:DropDownList>
                <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="lblMassege" runat="server" Text="Label" ForeColor="Green" Visible="False"></asp:Label>
                <asp:Label ID="lble" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="style3" style="background-color: #0000FF">
                <asp:Button ID="btnUpdate" runat="server" style="margin-left: 352px" 
                    Text="Update Info" Height="30px" Width="80px" onclick="btnUpdate_Click" />
                <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" /><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connUpdate %>" 
                    ProviderName="<%$ ConnectionStrings:connUpdate.ProviderName %>" 
                    SelectCommand="SELECT voter_name, voter_address, voter_phoneNo, voter_Email, voter_username, voter_password, voter_confP, area_id FROM votingdb.tblvoter" 
                    UpdateCommand="UPDATE votingdb.tblvoter SET voter_name =?, voter_address =?, voter_phoneNo =?, voter_Email =?, voter_username =?, voter_password =?, voter_confP =?, area_id =?">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dtsrcName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT area_name FROM votingdb.tblarea"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

