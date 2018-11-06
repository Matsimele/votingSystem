using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Odbc;

public partial class SecurePages_DelCandi : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["ConnReg"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDel_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();

            OdbcCommand cmd = new OdbcCommand("delete from tblcandidate where can_id = '" + DropDel.SelectedItem.ToString() + "'", conn);
            cmd.ExecuteNonQuery();


            lblS.Visible = true;
            lblS.Text = "Successfully Deleted";
            conn.Close();


        }
        catch (OdbcException ee)
        {

            Response.Write(ee.Message);
            lblE.Visible = true;
            lblE.Text = "Could Not Delete!";
        }
   

           
    }
}