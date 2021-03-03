using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignmentProject
{
    public partial class ManagerAddTester : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddTester_Click(object sender, EventArgs e)
        {
            string testerID = txtTesterID.Text;
            string testerName = txtTesterName.Text;
            string testerStatus = txtTesterStatus.Text;
            string teamID = txtTeamID.Text;
            using (var addTesterItems = new ReleaseManagementEntities())
            {
                var addtesterID = new SqlParameter
                {
                    ParameterName = "@tid",
                    Value = testerID
                };
                var addTesterName = new SqlParameter
                {
                    ParameterName = "@tname",
                    Value = testerName
                };
                var addTesterStatus = new SqlParameter
                {
                    ParameterName = "@tstaus",
                    Value = testerStatus
                };
                var addTeamID = new SqlParameter
                {
                    ParameterName = "@teamid",
                    Value = teamID
                };
                addTesterItems.Database.ExecuteSqlCommand("exec addTester @tid,@tname,@tstaus,@teamid", addtesterID, addTesterName, addTesterStatus, addTeamID);
                lblAddTesterMessage.Text = "Tester Added Successfully";
            }
        }
    }
}