<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>About Us</title>
    <style type="text/css">
         .ctable
             {
                 padding:10px;
                 background:white;
             }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="ctable" width="1000" align="center" style="height: 200px">
        <tr>
            <td class="ctable">
            </td>
            <td>
                <h3>
                    About this website</h3>
                <p>
                    This online voting system is designed to help people to vote in an easy way,by just
                    registering and cast a vote. It prevents voters for standing long queues and also
                    will help the government to save money and resources. It saves times and it is simple
                    and easy to use!.
                    </p>
            </td>
            <td>
                <h3>
                    About Mission and Vission</h3>
                <p>
                    We Strive for excellence. We designed this Online Voting System because of 
                    the challenges that our voters faces during the voting days. We made sure that the system is 
                    user friendly and easy to use. Make your vote count, Let your voice be heard.Register and to 
                    vote and make a difference.
                    </p>
            </td>
        </tr>
    </table>
</asp:Content>
