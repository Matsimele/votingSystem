using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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

public partial class CastVote : System.Web.UI.Page
{
    OdbcConnection connect = new OdbcConnection(ConfigurationManager.ConnectionStrings["connLogInV"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
            

    }
    protected void btnVote_Click(object sender, EventArgs e)
    {
        connect.Open();

        string CheckVote = "SELECT voter_id FROM tblvote WHERE voter_id ='" + txtVoterIdCast.Text + "'";

        OdbcDataAdapter adapt = new OdbcDataAdapter(CheckVote, connect);
        DataSet dts = new DataSet();
        adapt.Fill(dts);


        if (dts.Tables[0].Rows.Count > 0)
        {
            //Response.Write("Sorry the party is already registered");
            lblVotS.Visible = false;
            lblVote.Visible = true;
            lblVote.Text = "Sorry You Have Already Voted";
        }
        else
        {
            string addVote = "insert into tblvote(party_name,area_name,voter_id) values('" + DropParty.SelectedItem.ToString() + "','" + DropArea.SelectedItem.ToString() + "','" + txtVoterIdCast.Text + "')";
            OdbcCommand cmd = new OdbcCommand(addVote, connect);
            cmd.ExecuteNonQuery();
            lblVote.Visible = false;
            lblVotS.Visible = true;
            lblVotS.Text = "Thank You For Your Time, Your Vote was casted!";

        }

        connect.Close();
        
    }

}