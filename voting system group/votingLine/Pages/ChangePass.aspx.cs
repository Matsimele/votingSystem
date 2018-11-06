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

public partial class ChangePass : System.Web.UI.Page
{
    OdbcConnection connect = new OdbcConnection(ConfigurationManager.ConnectionStrings["connUpdate"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
                OdbcConnection connect = new OdbcConnection(ConfigurationManager.ConnectionStrings["connUpdate"].ConnectionString);
                connect.Open();

                string changePass = "select count(*) from tblvoter where voter_id= '" + txtVId.Text +"'";
                OdbcCommand cmd = new OdbcCommand(changePass, connect);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                connect.Close();
                if (temp == 1)
                {
                    connect.Open();
                    OdbcCommand cmb = new OdbcCommand("update tblvoter set voter_password = '" + txtVId1.Text +"', voter_confP = '" + txtVId2.Text + "' where voter_id = '" + txtVId.Text +
                       "'", connect);
                    cmb.ExecuteNonQuery();
                    labelC.Visible = true;
                    labelC.Text = "Successfully Updated your password";
                    connect.Close();

                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Your voter Id Does not exists";
                
                }

        
    }
    // System.Threading.Thread.Sleep(2000);  
 }
