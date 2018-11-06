<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="RegParty.aspx.cs" Inherits="party_RegParty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .ctable
        {
                 padding:10px;
                 background:white;
        }
        .style1
        {
            font-size: x-large;
            text-align: center;
            height: 50px;
        }
        .style2
        {
            width: 368px;
        }
        .style3
        {
        width: 272px;
    }
        #Reset1
        {
            height: 30px;
            width: 75px;
            margin-left: 26px;
        }
        .style5
        {
            width: 350px;
            text-align: right;
            height: 52px;
            color: #009900;
        }
        .style6
        {
            width: 272px;
            height: 52px;
        }
        .style7
        {
            height: 52px;
        }
        .style8
        {
        width: 350px;
        text-align: right;
        color: #009900;
    }
    .style9
    {
        width: 350px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align="center" width="1000">
        <tr>
            <td class="style1" colspan="3" style="background-color: #800000">
                <strong>Add New Political Party</strong></td>
        </tr>
        <tr>
            <td class="style8">
                <strong>Party Name</strong></td>
            <td class="style3">
                <asp:TextBox ID="txtPartyN" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtPartyN" ErrorMessage="Party Name Is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong style="text-align: right">Party Logo</strong></td>
            <td class="style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="210px" />
            </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                <asp:Image ID="Image1" runat="server" Height="124px" />
                <asp:Button ID="btnSaveIma" runat="server" Height="30px" 
                    style="margin-left: 25px" Text="Upload" Width="75px" 
                    onclick="btnSaveIma_Click" />
                <br />
                <asp:Label ID="lblImage" runat="server" ForeColor="#996633" Text="lblImage" Visible="false"></asp:Label>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <strong>Total Candidate</strong></td>
            <td class="style3">
                <asp:TextBox ID="txtPartyCan" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPartyCan" ErrorMessage="Enter Total Number Of Candidate" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <strong>Candidate Id</strong></td>
            <td class="style3">
                <asp:DropDownList ID="DropCan" runat="server" Height="30px" Width="180px" 
                    DataSourceID="dtsrcCanId" DataTextField="can_id" DataValueField="can_id">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <strong>Area Id</strong></td>
            <td class="style3">
                <asp:DropDownList ID="DropArea" runat="server" Height="30px" Width="180px" 
                    DataSourceID="dtsrcArea" DataTextField="area_id" DataValueField="area_id">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:SqlDataSource ID="dtsrcCanId" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PartyReg %>" 
                    ProviderName="<%$ ConnectionStrings:PartyReg.ProviderName %>" 
                    SelectCommand="SELECT can_id FROM votingdb.tblcandidate">
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:Label ID="lblSuc" runat="server" Text="success" Visible = "False" ForeColor="Green"></asp:Label>
                <br />
                <asp:Label ID="lblerr" runat="server" Text="error"  Visible = "False"  ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:SqlDataSource ID="dtsrcArea" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PartyReg %>" 
                    ProviderName="<%$ ConnectionStrings:PartyReg.ProviderName %>" 
                    SelectCommand="SELECT area_id FROM votingdb.tblarea"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style9" style="background-color: #0000FF">
                &nbsp;</td>
            <td class="style3" style="background-color: #0000FF">
                <asp:Button ID="btnRegP" runat="server" Height="30px" style="margin-left: 0px" 
                    Text="Register" Width="75px" onclick="btnRegP_Click" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td style="background-color: #0000FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PartyReg %>" 
                    InsertCommand="INSERT INTO votingdb.tblparty(party_name, party_logo, party_tot_candidate, party_tot_vote, can_id, area_id) VALUES (?,?,?,?,?,?)" 
                    ProviderName="<%$ ConnectionStrings:PartyReg.ProviderName %>" 
                    SelectCommand="SELECT party_id, party_name, party_logo, party_tot_candidate, party_tot_vote, can_id, area_id FROM votingdb.tblparty"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

