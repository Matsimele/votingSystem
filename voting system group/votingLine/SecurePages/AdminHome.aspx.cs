using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecurePages_AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegParty_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/RegParty.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/UpdateParty.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/deleteParty.aspx");
    }
    protected void btnCandi_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/AddCandidate.aspx");
    }
    protected void btnCandi0_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/UpdCandi.aspx");
    }
    protected void btnCandi1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/DelCandi.aspx");
    }
    
    protected void btnPartyV_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/ResultsWin.aspx");
    }
   
    protected void btnReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecurePages/chooseReport.aspx");
    }
}