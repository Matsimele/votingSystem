<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UpdateParty.aspx.cs" Inherits="party_UpdateParty" %>

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
            height: 45px;
        }
        .style2
        {
            width: 374px;
            text-align: right;
            height: 42px;
        }
        .style10
        {
            width: 275px;
            height: 30px;
        }
        .style11
        {
            height: 30px;
        }
        .style15
        {
        width: 319px;
        text-align: right;
        color: #009900;
        height: 60px;
    }
        .style16
        {
            width: 275px;
            height: 60px;
        }
        .style17
        {
            height: 60px;
        }
    .style18
    {
        width: 319px;
        text-align: right;
        height: 30px;
    }
        .style19
        {
            width: 319px;
            text-align: right;
            color: #009900;
            height: 45px;
        }
        .style20
        {
            width: 275px;
            height: 45px;
        }
        .style21
        {
            height: 45px;
        }
        .style22
        {
            width: 319px;
            text-align: right;
            color: #009900;
            height: 50px;
        }
        .style23
        {
            width: 275px;
            height: 50px;
        }
        .style24
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align="center" width="1000">
        <tr>
            <td class="style1" colspan="3" style="background-color: #800000">
                <strong>Update Party Information</strong></td>
        </tr>
        <tr>
            <td class="style19">
                <strong>
                <br />
                Party Id&nbsp;&nbsp;&nbsp;&nbsp; <br />
                </strong></td>
            <td class="style20">
                <asp:DropDownList ID="DropPI" runat="server" DataSourceID="dtsrcParty" 
                    DataTextField="party_id" DataValueField="party_id" Height="30px" 
                    Width="184px" style="margin-left: 10px">
                </asp:DropDownList>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
            </td>
            <td class="style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</b><strong style="text-align: right">Party Name<br />
&nbsp;</strong></td>
            <td class="style16">
                <asp:TextBox ID="txtPN" runat="server" Height="30px" Width="180px" 
                    style="margin-left: 10px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
            </td>
            <td class="style17">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtPN" ErrorMessage="Enter The Party Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style22">
                <strong>Total Votes<br />
                <br />
                <br />
                </strong></td>
            <td class="style23">
                <asp:TextBox ID="txtVotes" runat="server" Height="30px" Width="180px" 
                    style="margin-left: 10px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lbls" runat="server" Text="success" Visible="False" ForeColor="Green"></asp:Label>
                <br />
                <asp:Label ID="lbler" runat="server" Text="error" Visible="False" ForeColor="Red"></asp:Label>
                <br />
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtVotes" ErrorMessage="Enter the Total votes" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtVotes" ErrorMessage="Enter Numbers Only No Alphabets" 
                    ForeColor="Red" ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
&nbsp;<br />
                <br />
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td class="style18">
                </td>
            <td class="style10">
                <asp:Button ID="btnUpdate" runat="server" Height="30px" 
                    onclick="btnUpdate_Click" style="margin-left: 10px" Text="Update Profile" 
                    Width="100px" />
            </td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PartyUpd %>" 
                    ProviderName="<%$ ConnectionStrings:PartyUpd.ProviderName %>" 
                    SelectCommand="SELECT party_id, party_name, party_tot_vote FROM votingdb.tblparty" 
                    UpdateCommand="UPDATE votingdb.tblparty SET party_name =?, party_tot_vote =?">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dtsrcParty" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connLogInV %>" 
                    ProviderName="<%$ ConnectionStrings:connLogInV.ProviderName %>" 
                    SelectCommand="SELECT party_id, party_name FROM votingdb.tblparty">
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

