using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignmentProject
{
    public partial class AddTeamleadAndAssignProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAssignProject_Click(object sender, EventArgs e)
        {
            string teamID = txtTeamID.Text;
            string teamName = txtTeamName.Text;
            string projectID = txtProjectID.Text;
            string teamleadID = txtTeamLeadID.Text;
            using (var assignProjectItems = new ReleaseManagementEntities())
            {
                var addTeamId = new SqlParameter
                {
                    ParameterName = "@teamid",
                    Value = teamID
                };
                var addteamName = new SqlParameter
                {
                    ParameterName = "@teamname",
                    Value = teamName
                };
                var addProjectID = new SqlParameter
                {
                    ParameterName = "@pid",
                    Value = projectID
                };
                var addProjectTeamleadID = new SqlParameter
                {
                    ParameterName = "@teamleadid",
                    Value = teamleadID
                };
                var addProjectQuery = assignProjectItems.Database.ExecuteSqlCommand("exec assignProjectToTL @teamid,@teamname,@pid,@pid", addTeamId, addteamName, addProjectID, addProjectTeamleadID);
                lblAssignProjectMessage.Text = "Project Assigned to Teamlead Successfully";
            }
        }
    }
}