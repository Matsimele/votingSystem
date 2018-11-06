
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Odbc;

public partial class party_deleteParty : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["partyDel"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {
            conn.Open();

            OdbcCommand cmd = new OdbcCommand("DELETE FROM tblparty  WHERE party_id = '" + dropId.SelectedValue + "'", conn);
            cmd.ExecuteNonQuery();

            lblsucc.Visible = true;
            lblsucc.Text = " Successfully deleted";
            conn.Close();
         }
             catch (OdbcException ee)
        {

            Response.Write(ee.Message);
            lblerr.Visible = true;
            lblerr.Text = "could Not delete the record!!!";
        }

        }

    }
