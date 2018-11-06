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


public partial class voterReg : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["connReg"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
      
        

    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        
            conn.Open();

        string CheckV = "SELECT voter_id FROM tblvoter WHERE voter_IdNo ='" + txtVId.Text + "'";

        OdbcDataAdapter adapt = new OdbcDataAdapter(CheckV, conn);
        DataSet dts = new DataSet();
        adapt.Fill(dts);


        if (dts.Tables[0].Rows.Count > 0)
        {
            lblerr.Visible = true;
            lblerr.Text = "Sorry the provided Id Number is already registered"; 
        }
        else
        {

            string addvoter = "insert into tblvoter(voter_name,voter_IdNo,province,city,code,voter_phoneNo,voter_Email,area_name) VALUES('" + txtVName.Text + "','" + txtVId.Text + "','" + DropDownProv.SelectedItem.ToString() + "','" + txtVAdd.Text + "','" + txtCode.Text + "','" + txtPhoneN.Text + "','" + txtEmail.Text + "','" + DropDownArea.SelectedItem.ToString() + "')";
            OdbcCommand cmd = new OdbcCommand(addvoter, conn);
            cmd.ExecuteNonQuery();
            lblsuccess.Visible = true;
            lblsuccess.Text = "Voter successfully Registered";
            
        }
        
        conn.Close();
        }

}