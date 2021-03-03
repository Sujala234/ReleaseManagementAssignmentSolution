using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignmentProject
{
    public partial class ManagerAddDeveloper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddDeveloper_Click(object sender, EventArgs e)
        {
            string developerID = txtDeveloperID.Text;
            string developerName = txtDeveloperName.Text;
            string gitHubLink = txtGithubLink.Text;
            string teamID = txtTeamID.Text;
            using (var addDeveloperItems = new ReleaseManagementEntities())
            {
                var addDeveloperID = new SqlParameter
                {
                    ParameterName = "@devid",
                    Value = developerID
                };
                var addDeveloperName = new SqlParameter
                {
                    ParameterName = "@devname",
                    Value = developerName
                };
                var addGitHubLink = new SqlParameter
                {
                    ParameterName = "@githublink",
                    Value = gitHubLink
                };
                var addteamID = new SqlParameter
                {
                    ParameterName = "@teamid",
                    Value = teamID
                };
                addDeveloperItems.Database.ExecuteSqlCommand("exec addDeveloper @devid,@devname,@githublink,@teamid", addDeveloperID, addDeveloperName, addGitHubLink, addteamID);
                lblAddDeveloperMessage.Text = "Developer Added Successfully";
            }
        }
    }
}