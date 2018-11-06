using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Odbc;

public partial class party_UpdateParty : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["PartyUpd"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        
        try
        {
                conn.Open();
                
                OdbcCommand cmd = new OdbcCommand("update tblparty set party_name = '" + txtPN.Text  + "' ,party_tot_vote = '" + txtVotes.Text +
                "' WHERE party_id = '" + DropPI.SelectedValue + "'",conn);
                cmd.ExecuteNonQuery();

                lbls.Visible = true;
                lbls.Text = "Successfully Updated";
                conn.Close();


        }
        catch (OdbcException ee)
        {

            Response.Write(ee.Message);
            lbler.Visible=true;
            lbler.Text="Could Not Update";
        }
    }

}
