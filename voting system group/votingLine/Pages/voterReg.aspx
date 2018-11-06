<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="voterReg.aspx.cs" Inherits="voterReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style1
        {
            text-align: center;
            font-size: x-large;
        height: 54px;
    }
        .style2
        {
            text-align: right;
            width: 357px;
        }
        .style3
        {
            font-weight: bold;
            text-align: right;
            width: 356px;
        }
        
        .style4
        {        height: 78px;
    }
                
        #Reset1
        {
            height: 30px;
            width: 75px;
            margin-left: 13px;
        }
        
        .style7
        {
            width: 327px;
        }
        
        .style8
        {
            text-align: right;
            width: 356px;
            height: 60px;
        }
        .style9
        {
            width: 327px;
            height: 60px;
        }
        .style10
        {
            height: 60px;
        }
        
        .style11
        {
            text-align: center;
            font-size: x-large;
            height: 54px;
        }
        
        .style12
        {
            text-align: right;
            width: 356px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px; width: 1000px;" align="center">
        <tr>
            <td class="style11" colspan="3" style="background-color: #800000">
                <strong>Voter Registration</strong></td>
        </tr>
        <tr>
            <td class="style12">
                <strong>
                <br />
                <br />
                Name</strong></td>
            <td class="style7">
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;<asp:Label ID="Label12" runat="server" ForeColor="Blue" Text="Indicates Required Fields"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtVName" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtVName" ErrorMessage="Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtVName" ErrorMessage="Enter Only Alphabets" 
                    ForeColor="Red" ValidationExpression="[a-zA-Z\-'\s]+"></asp:RegularExpressionValidator>
&nbsp;<br />
            </td>
        </tr>
        <tr>
            <td class="style12">
                <strong>Id Number</strong></td>
            <td class="style7">
                <asp:TextBox ID="txtVId" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtVId" ErrorMessage="Id No Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="txtVId" 
                    ErrorMessage="ID Number Must Be 13 Digits &amp; No Alphabets" ForeColor="Red" 
                    ValidationExpression="[0-9]{13,13}"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Province</td>
            <td class="style7">
                <asp:DropDownList ID="DropDownProv" runat="server" Height="30px" Width="184px">
                    <asp:ListItem>Select Province</asp:ListItem>
                    <asp:ListItem>Mpumalanga</asp:ListItem>
                    <asp:ListItem>Gauteng</asp:ListItem>
                    <asp:ListItem>Limpopo</asp:ListItem>
                    <asp:ListItem>KZN</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtCode" ErrorMessage="Select Province" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                City/Town</td>
            <td class="style7">
                <asp:TextBox ID="txtVAdd" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtVAdd" ErrorMessage="Enter Your Home Town" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Code</td>
            <td class="style7">
                <asp:TextBox ID="txtCode" runat="server" Height="30px" Width="180px" 
                    ></asp:TextBox>
                <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtCode" ErrorMessage="Enter Your Area Code" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Phone Number</td>
            <td class="style7">
                <asp:TextBox ID="txtPhoneN" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtPhoneN" ErrorMessage="Enter Your Phone Numbers" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtPhoneN" ErrorMessage="Phone Numer Should Be 10 Digits" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{10,10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email</td>
            <td class="style7">
                <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Enter E-Mail Address " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Enter correct email format" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;<br />
            </td>
        </tr>
        <tr>
            <td class="style8">
                <strong>Area Name<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                </strong></td>
            <td class="style9">
                <asp:DropDownList ID="DropDownArea" runat="server" Height="30px" Width="184px" 
                    DataSourceID="dtsrcName" DataTextField="area_name" 
                    DataValueField="area_name">
                </asp:DropDownList>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <br />
                <br />
    <asp:Label ID="lblerr" runat="server"
        Text="Label" Forecolor="Red" Visible="False" ></asp:Label>
                &nbsp;<br />
                <asp:Label ID="lblsuccess" runat="server" Text="Label" Visible = "False" ForeColor="Green"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="3" style="background-color: #0000FF">
                <asp:Button ID="btnReg" runat="server" Height="30px" style="margin-left: 410px" 
                    Text="Submit" Width="75px" onclick="btnReg_Click" />
                <input id="Reset1" type="reset" value="Reset" /><asp:SqlDataSource 
                    ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    
                    
                    SelectCommand="SELECT * FROM tblvoter">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dtsrcName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT area_name FROM votingdb.tblarea"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

