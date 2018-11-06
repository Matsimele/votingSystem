using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Configuration;

public partial class UpdateVoter : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["connUpdate"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        conn.Open();

        string Checkemail = "SELECT voter_id FROM tblvoter WHERE voter_Email ='" + txtEmailUp.Text + "'";

        OdbcDataAdapter adapt = new OdbcDataAdapter(Checkemail, conn);
        DataSet dts = new DataSet();
        adapt.Fill(dts);


        if (dts.Tables[0].Rows.Count > 0)
        {
            lble.Visible = true;
            lble.Text = "Sorry Your E-Mail address is not registered"; 
        }
        else
        {
                
                OdbcCommand cmd = new OdbcCommand("Update tblvoter set voter_name = '" + txtNameUp.Text + "', province = '" + DropListP.SelectedItem.ToString()+ "', city = '" + txtCity.Text + "', code ='" + txtCodeU.Text+ "', voter_phoneNo = '" + txtPhoneUp.Text + "', voter_Email = '"
                + txtEmailUp.Text  + "', area_name = '" + DropDownAUp.SelectedItem.ToString()  + "' where voter_id = '" + txtId.Text + "'",conn);
                cmd.ExecuteNonQuery();
                lblMassege.Visible = true;
                lblMassege.Text = "Successfully Updated Your Profile";
        }
        
        conn.Close();
    }
}