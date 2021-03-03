using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignmentProject
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            List<Proc_CheckLogin_Result> user = null;
            ReleaseManagementEntities dbReleaseManagementObject = new ReleaseManagementEntities();
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            user = dbReleaseManagementObject.Proc_CheckLogin(username, password).ToList();
            if(user.Count > 0)
            {
                string role = user[0].role;
                if(role == "manager")
                {
                    Response.Redirect("ManagerAddProject.aspx");
                }
                if(role == "teamlead")
                {
                    Response.Redirect("TeamLeadHomePage.aspx");
                }
                if(role == "developer")
                {
                    Response.Redirect("DeveloperHomePage.aspx");
                }
                if(role == "tester")
                {
                    Response.Redirect("TesterHomePage.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Invalid Username or Password !! Please Try Again";
            }
        }
    }
}