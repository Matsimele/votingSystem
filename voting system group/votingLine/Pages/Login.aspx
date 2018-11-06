<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 519px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="ctable" style="height:100px" align ="center" width="1000" >
        <tr>
            <td class="style3">
                <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    Font-Size="0.8em" ForeColor="#333333" Height="241px" 
                    onauthenticate="Login1_Authenticate" Width="315px">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                        ForeColor="White" />
                </asp:Login>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="209px" 
                    ImageUrl="~/Pictures/Building.jpg" Width="430px" />
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Pages/RecoverPassV.aspx">Forget Password</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/Pages/ChangePass.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

