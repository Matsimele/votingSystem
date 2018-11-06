using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using System.Web;


public partial class SecurePages_UpdCandi : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["connReg"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();

            OdbcCommand cmd = new OdbcCommand("update tblcandidate set can_name = '" + txtNameU.Text + "' ,area_name = '" + dropArea.SelectedItem.ToString() + "' , can_image = '" + FileUpload1.FileName + "', province = '" +
                DropProv.SelectedItem.ToString() + "', City = '" + txtCiti.Text + "', Code = '" + txtKhodi.Text+
            "' WHERE can_id = '" + dropId.SelectedValue + "'", conn);
            cmd.ExecuteNonQuery();

            lblS.Visible = true;
            lblS.Text = "Successfully Updated Candidate's Profile";
            conn.Close();


        }
        catch (OdbcException ee)
        {

            Response.Write(ee.Message);
            lblE.Visible = true;
            lblE.Text = "Could Not Update ";
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();

        if (!FileUpload1.HasFile)
        {
            Lab.Visible = true;
            Lab.Text = "Please insert image ";
        }
        else
        {

            lblUp.Visible = true;
            int length = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

            lblUp.Text = "Uploaded";
        }

        Image imageModel = new Image();


        conn.Close();
    }
}