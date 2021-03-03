using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignmentProject
{
    public partial class ManagerAddProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddProject_Click(object sender, EventArgs e)
        {
            string projectID = txtProjectId.Text;
            string projectName = txtProjectName.Text;
            string projectDescription = txtProjectDescription.Text;
            string projectRequirements = txtProjectRequirements.Text;
            string projectStatus = txtProjectStatus.Text;
            using(var addProjectItems = new ReleaseManagementEntities())
            {
                var addProjectId = new SqlParameter
                {
                    ParameterName = "@pid",
                    Value = projectID
                };
                var addProjectName = new SqlParameter
                {
                    ParameterName = "@pname",
                    Value = projectName
                };
                var addProjectDescription = new SqlParameter
                {
                    ParameterName = "@pdesc",
                    Value = projectDescription
                };
                var addProjectRequirements = new SqlParameter
                {
                    ParameterName = "@preq",
                    Value = projectRequirements
                };
                var addProjectStatus = new SqlParameter
                {
                    ParameterName = "@pstatus",
                    Value = projectStatus
                };
                var addProjectQuery = addProjectItems.Database.ExecuteSqlCommand("exec InsertProjectProd @pid,@pname,@pdesc,@preq,@pstatus", addProjectId, addProjectName, addProjectDescription, addProjectRequirements, addProjectStatus);
                lblAddProjMessage.Text = "Project Added Successfully";
            }
        }
    }
}