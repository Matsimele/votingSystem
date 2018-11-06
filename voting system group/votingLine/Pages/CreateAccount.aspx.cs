using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CreateAccount : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["connReg"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void BtnCreate_Click(object sender, EventArgs e)
    {
        conn.Open();

        string CheckVA = "SELECT voter_id FROM tbluser WHERE voter_id ='" + txtVoter.Text + "'";

        OdbcDataAdapter adapt = new OdbcDataAdapter(CheckVA, conn);
        DataSet dts = new DataSet();
        adapt.Fill(dts);


        if (dts.Tables[0].Rows.Count > 0)
        {
            lblerr.Visible = true;
            lblerr.Text = "Sorry you already have an account";
        }
        else
        {

            string addAcc = "INSERT INTO tbluser(voter_id,user_name,user_password,User_role) VALUES('" + txtVoter.Text + "','" + txtUserN.Text + "','" + txtPass.Text + "','" + DropRole.SelectedItem.ToString() + "')";
            OdbcCommand cmd = new OdbcCommand(addAcc, conn); 
            cmd.ExecuteNonQuery();
            lblsuc.Visible = true;
            lblsuc.Text = "Account successfully Registered";

        }

        conn.Close();
    }
}