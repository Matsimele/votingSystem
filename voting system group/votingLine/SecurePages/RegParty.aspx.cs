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

public partial class party_RegParty : System.Web.UI.Page
{
    static string imagepath;
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["PartyReg"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegP_Click(object sender, EventArgs e)
    {

        conn.Open();

        string CheckV = "SELECT party_id FROM tblparty WHERE party_name='" + txtPartyN.Text + "'";

        OdbcDataAdapter adapt = new OdbcDataAdapter(CheckV, conn);
        DataSet dts = new DataSet();
        adapt.Fill(dts);


        if (dts.Tables[0].Rows.Count > 0)
        {
            //Response.Write("Sorry the party is already registered");
            lblerr.Visible = true;
            lblerr.Text = "Sorry the party is already registered"; 
        }
        else
        {

            string addParty = "INSERT INTO tblparty(party_name,party_logo, party_tot_candidate,can_id,area_id) VALUES('" + txtPartyN.Text + "','" + FileUpload1.FileName + "','" + txtPartyCan.Text + "','" + DropCan.SelectedItem.ToString() + "','" + DropArea.SelectedItem.ToString() + "')";
            OdbcCommand cmd = new OdbcCommand(addParty, conn);
            cmd.ExecuteNonQuery();
            lblSuc.Visible = true;
            lblSuc.Text = "Party successfully Registered";
            
        }
        
        conn.Close();
    }

    protected void btnSaveIma_Click(object sender, EventArgs e)
    {
         try
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
                string filePath = FileUpload1.FileName;
                //imagepath = "~//image//" + filePath.ToString();
                imagepath = "~//Image1//" + filePath.ToString();
                lblImage.Visible = true;
                lblImage.Text = "Image successfully Uploaded";
            }
            conn.Open();
            string command = "INSERT INTO tblparty(party_name,party_logo, party_tot_candidate,can_id,area_id) VALUES('" + txtPartyN.Text + "','" + FileUpload1.FileName + "','" + txtPartyCan.Text + "','" + DropCan.SelectedItem.ToString() + "','" + DropArea.SelectedItem.ToString() + "')";
            OdbcCommand cmd = new OdbcCommand(command, conn);
            cmd.ExecuteNonQuery();
            string getID = "SELECT party_name FROM tblparty WHERE party_name ='" + txtPartyN.Text + "'";
            OdbcCommand cmd2 = new OdbcCommand(getID, conn);
            OdbcDataReader read = cmd2.ExecuteReader();

            /*int partyCode = 0;
            while (read.Read())
            {
                partyCode = Convert.ToInt32(read[0].ToString());
            }*/
        }
        catch (OdbcException ee)
        {
            Response.Write(ee.Message);
        }
    }
 }
