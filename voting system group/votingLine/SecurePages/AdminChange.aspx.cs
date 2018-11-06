using System;
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

public partial class Admin_AdminChange : System.Web.UI.Page
{
     OdbcConnection connect = new OdbcConnection(ConfigurationManager.ConnectionStrings["connUpdate"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
         OdbcConnection connect = new OdbcConnection(ConfigurationManager.ConnectionStrings["connUpdate"].ConnectionString);
                connect.Open();

                string changePass = "select count(*) from tbladmin where ad_id= '" + txtAId.Text +"'";
                OdbcCommand cmd = new OdbcCommand(changePass, connect);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                connect.Close();
                if (temp == 1)
                {
                    connect.Open();
                    OdbcCommand cmb = new OdbcCommand("update tbladmin set ad_password = '" + txtAId1.Text +"', ad_confP = '" + txtAId2.Text + "' where ad_id = '" + txtAId.Text +
                       "'", connect);
                    cmb.ExecuteNonQuery();
                    labelC.Visible = true;
                    labelC.Text = "Successfully Updated your password";
                    connect.Close();

                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Your Admin Id Does not exists";
                
                }

        
    }
  
}