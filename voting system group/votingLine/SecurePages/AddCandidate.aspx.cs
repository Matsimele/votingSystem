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



public partial class SecurePages_AddCandidate : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["connReg"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegCand_Click(object sender, EventArgs e)
    {
        conn.Open();

        string CheckV = "SELECT can_id FROM tblcandidate WHERE can_name ='" + TextBox1.Text + "'";

        OdbcDataAdapter adapt = new OdbcDataAdapter(CheckV, conn);
        DataSet dts = new DataSet();
        adapt.Fill(dts);


        if (dts.Tables[0].Rows.Count > 0)
        {
            //Response.Write("Sorry the party is already registered");
            lblNot.Visible = true;
            lblNot.Text = "Sorry the Candidate is already registered";
        }
        else
        {

            string addCandi = "INSERT INTO tblcandidate(can_name,can_party,area_name,can_image,province,City,Code) VALUES('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','" + FileUpload1.FileName  + "','" + DropDownListPr.SelectedItem.ToString() + "','" + txtCity.Text + "','"+ txtCod.Text +"')";
            OdbcCommand cmd = new OdbcCommand(addCandi, conn);
            cmd.ExecuteNonQuery();
            lblok.Visible = true;
            lblok.Text = "Candidate successfully Registered";

        }

        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();

        if (!FileUpload1.HasFile)
        {
            Label2.Visible = true;
            Label2.Text = "Please insert image ";
        }
        else
        {

            lblImage.Visible = true;
            int length = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

            lblImage.Text = "Uploaded";
        }

        Image imageModel = new Image();


        conn.Close();

    }
    
}