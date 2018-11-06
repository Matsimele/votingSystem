using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.Odbc;
using System.Data; //


public partial class Pages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        OdbcConnection conLogin = new OdbcConnection(ConfigurationManager.ConnectionStrings["connLogInV"].ConnectionString);

        try
{
//OPEN connection to DATABASE
conLogin.Open();
//Decalere ODBC COMMAND
OdbcCommand cmdLogin = new OdbcCommand
{
Connection = conLogin,
//SELECT Statment from database to Check if the User Exists in the Database
CommandText = @"SELECT user_name, user_role FROM tbluser WHERE user_name = '"+Login1.UserName+"' AND user_password = '"+Login1.Password+"'"
};
//Declare ODBC DATA READER to get Values from comming from database
OdbcDataReader readLogin = cmdLogin.ExecuteReader();
if (readLogin.Read()) //Database Select Statement Retrieves any Results
{
//SUCCESSFUL LOGIN
//DECLARE SESSION VARIABLES TO STORE IF THE USER IS LOGGED IN AND THIER ROLES TO GIVE ACCESS TO THE CORRECT FOLDER AND PAGE
Session["logged"] = readLogin[0]; //Place user_name in Logged Session Variable
Session["role"] = readLogin[1]; //Place Role Name in role Session Variable
//DERICT USER TO THE Secure Page in the Secure Pages Folder
//NB: Remember we stored Where the SYstem Rediect the User to if they have been Authenticated in the Web.Config file
FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet); // The Login1.RememberMeSet is to Create A Persistent Cookie WHich will save the users credentials so save time of loggin in the next time they access the system
}
else //Database Select did not Retrieve any Values
{
    Login1.FailureText = "Invalid username and/or password"; //Never tell the User if they Username or Password is incorrect as hackers wil take advantage of the system if they know which is right
}
readLogin.Close(); //Close the ODBC Data Reader to Improve System Performace **Good Coding Practice
cmdLogin.Dispose(); //Dispose the ODBC Command to Improve System Performace **Good Coding Practice
//Close Connection to Database
conLogin.Close();
}
        catch (Exception excName) //This will catch an error if you have a DataBase Error
        {
            Response.Write("Database Error </b> Unable to Check Database </br>" + excName.Message); //Displays the Database Error to the Screen
            conLogin.Close(); //Close Database Connection
        }
    }
}