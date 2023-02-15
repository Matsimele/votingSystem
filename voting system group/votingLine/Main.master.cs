using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

            //Check if User is Logged In
            if (Session["logged"] != null && Session["role"] != null)
            {
                lblLogin.Visible = true;
                LinkButton1.Text = "Log Out";
                //Redirecting Accordingly
                if (HttpContext.Current.Session["role"].ToString() == "Voter")
                {
                    HyperLinkCast.Visible = true;
                    HyperLinkV.Visible = true;
                }
                else if (HttpContext.Current.Session["role"].ToString() == "Admin")
                {
                    HyperLinkAdmin.Visible = true;
                    HyperLinkAdmin2.Visible = true;
                }
            }
            else //This Would mean the User is not Logged IN
            {
                lblLogin.Visible = false;
                LinkButton1.Text = "LogIn";
            }
        
    }

    
    protected void ImageButtonGmail_Click(object sender, ImageClickEventArgs e)
    {
        System.Diagnostics.Process.Start("www.gmail.com");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        System.Diagnostics.Process.Start("www.facebook.com");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        System.Diagnostics.Process.Start("www.twitter.com");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "LogIn")
        {
            Response.Redirect("~/Pages/Login.aspx");
        }
        else
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
            Response.Redirect("~/Pages/Index.aspx");

        }
    }
}
