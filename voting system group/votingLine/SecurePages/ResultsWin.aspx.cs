using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Odbc;

public partial class SecurePages_ResultsWin : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["connReg"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lblWinner.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();

        string countValue = "SELECT  COUNT(party_name) FROM tblvote WHERE party_name ='" + DropDown.SelectedItem.ToString() + "'";


        OdbcCommand cmd = new OdbcCommand(countValue, conn);

        int count = Convert.ToInt32(cmd.ExecuteScalar());

        Label2.Visible = true;
        // lblResults.Text = " The total vote for " + DropPN.SelectedValue + " is " + count;
        Label2.Text = " The total votes for " + DropDown.SelectedItem.ToString() + "  =  " + count;


        conn.Close();
    }
    protected void btnWin_Click(object sender, EventArgs e)
    {
        DataTable winner = new DataTable();

        try
        {
            conn.Open();

            string countValue = "select count(vote_id) as 'votes', party_name " +
                                    "from tblvote " +
                                        "group by party_name " +
                                           "order by votes desc";


            OdbcCommand cmd = new OdbcCommand(countValue, conn);

            int count = Convert.ToInt32(cmd.ExecuteScalar());

            OdbcDataAdapter winnerAdapter = new OdbcDataAdapter(countValue, conn);
            winnerAdapter.Fill(winner);

            if (winner.Rows.Count < 0)
            {
                Response.Write("No Rows Found");
            }
            else
            {
                /*
                int winnerNumber ;
                string winnerName = "";
                string win = "";

                for (int w = 0; w < winner.Rows.Count; w++)
                {
                    winnerNumber = 0;
                    winnerName = "";

                    if (winnerNumber < Convert.ToInt32(winner.Rows[w]["votes"]))
                    {
                        win = winner.Rows[w]["votes"].ToString();
                        winnerName = winner.Rows[w]["party_name"].ToString();
                    }
                    else if (winnerNumber == Convert.ToInt32(winner.Rows[w]["votes"]))
                    {
                        Response.Write("Some Parties have equal Votes ");
                    }


                } */
                lblWinner.Visible = true;
                lblWinner.Text = " Winner is " + winner.Rows[0]["party_name"].ToString() + " With " + winner.Rows[0]["votes"].ToString() + " Votes";
            }
        }
        catch (Exception ex)
        {
            Response.Write("+ERROR " + ex);
        }
        conn.Close();
    }
}