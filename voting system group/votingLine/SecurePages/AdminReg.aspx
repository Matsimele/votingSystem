<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AdminReg.aspx.cs" Inherits="AdminReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .ctable
             {
                 padding:10px;
                 background:white;
           
        }
        
        .style2
        {
            width: 232px;
            padding: 10px;
            background: white;
        }
        .style6
        {
            font-size: large;
        }
        .style8
        {
            width: 284px;
            height: 48px;
            padding: 10px;
            background: white;
            text-align: right;
        }
        .style9
        {
            width: 232px;
            height: 48px;
            padding: 10px;
            background: white;
        }
        .style12
        {
            height: 48px;
            padding: 10px;
            background: white;
        }
        #Reset1
        {
            height: 30px;
            width: 75px;
            margin-left: 29px;
        }
        .style15
        {
            height: 50px;
        }
        .style16
    {
        height: 75px;
        padding: 10px;
        background: white;
    }
        
        .style20
        {
            font-weight: normal;
            font-style: normal;
        }
        .style22
        {
            font-style: normal;
        }
        
        .style23
        {
            text-align: left;
            height: 50px;
            padding: 10px;
            background: white;
        }
        .style24
        {
            width: 232px;
            height: 50px;
            padding: 10px;
            background: white;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000">
        <tr>
            <td colspan="3" bgcolor="#CC0000" class="style12" 
                style="background-color: #800000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; text-align: center; font-size: x-large" Text="Administrator Registration"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="ctable">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<span 
                    class="ctable"><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" style="font-weight: 700" Text="Name" Visible="true"></asp:Label>
                </span></b></td>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:Label ID="Label12" runat="server" ForeColor="Blue" 
                    Text="Indicates Required Fields"></asp:Label>
                <br />
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <span class="ctable">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label17" runat="server" style="font-weight: 700" Text="UserName" Visible="true"></asp:Label>
                </span></td>
            <td class="style9">
                <asp:TextBox ID="txtUserN" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="ctable">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtUserN" ErrorMessage="Username is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="ctable">
                <span class="ctable">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span 
                    class="ctable">&nbsp;</span><span class="ctable"><strong class="ctable"><span 
                    class="ctable">&nbsp;</span></strong><span class="style20">&nbsp;&nbsp;&nbsp; <asp:Label 
                    ID="Label19" runat="server" style="font-weight: 700" Text="Password" Visible="true"></asp:Label>
                </span></span></td>
            <td class="ctable">
                <asp:TextBox ID="txtpass" runat="server" Height="30px" Width="180px" 
                    TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Password Field Can't be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                <span class="ctable">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong><span class="ctable"><asp:Label 
                    ID="Label20" runat="server" style="font-weight: 700; font-size: large;" 
                    Text="Area Id" Visible="true"></asp:Label>
                </span> <span 
                    class="style6"><i class="style22"><br />
                <br />
                </i>
                </span></strong> </span></td>
            <td class="style24">
                <asp:DropDownList ID="DropDownArea" runat="server" Height="30px" Width="184px" 
                    DataSourceID="dtsrcArea" DataTextField="area_id" DataValueField="area_id">
                    <asp:ListItem>Select Area</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <asp:Label ID="lblsuc" runat="server" ForeColor ="Green"  Text="Label" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblerr" runat="server" ForeColor ="Red"  Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style15">
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownArea" ErrorMessage="Choose Area Id" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style16" style="background-color: #0000FF">
                <asp:Button ID="btnAdmin" runat="server" Height="30px" 
                    style="margin-left: 311px" Text="Submit" Width="75px" 
                    onclick="btnAdmin_Click" />
                <input id="Reset1" type="reset" value="Reset" /><asp:SqlDataSource 
                    ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connReg %>" 
                    InsertCommand="INSERT INTO votingdb.tbladmin(ad_name, ad_username, ad_password, area_id) VALUES (?,?,?,?)" 
                    ProviderName="<%$ ConnectionStrings:connReg.ProviderName %>" 
                    SelectCommand="SELECT ad_name, ad_username, ad_password, area_id FROM votingdb.tbladmin"></asp:SqlDataSource>
                <asp:SqlDataSource ID="dtsrcArea" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    InsertCommand="INSERT INTO votingdb.tbladmin(area_id) VALUES (?)" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT area_id FROM votingdb.tblarea"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

