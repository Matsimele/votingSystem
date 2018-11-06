using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecurePages_SecurePages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //Get Session Variable Values in the SecurePages
        lbluser.Text = HttpContext.Current.Session["logged"].ToString();
        lblrole.Text = HttpContext.Current.Session["role"].ToString();


    }
}