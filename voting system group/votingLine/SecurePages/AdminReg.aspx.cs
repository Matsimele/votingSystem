using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminReg : System.Web.UI.Page
{
    OdbcConnection connect = new OdbcConnection(ConfigurationManager.ConnectionStrings["connReg"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        try
        {
            connect.Open();
            string query = "insert into tbladmin(ad_name,ad_username,ad_password,area_id) values('" + txtname.Text + "','" 
                + txtUserN.Text + "','" + txtpass.Text + "','" + DropDownArea.SelectedItem.ToString() + "')";

            OdbcCommand cmd = new OdbcCommand(query, connect);
            cmd.ExecuteNonQuery();
            lblsuc.Visible = true;
            lblsuc.Text = "Admin successfully Registered";
           
        }
        catch (OdbcException error)
        {
            Response.Write(error.Message);
            lblerr.Visible = true;
            lblerr.Text = "You could Not Register Try Again!";

        }
        connect.Close();
    }
}