using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_Web_App
{
    public partial class Leave_Info : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string name = Session["username"].ToString();
                bdName.Text = name;
            }
            else
            {
                Response.Redirect("Default");
            }
            LoadLeave();
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default");
        }

        private void LoadLeave()
        {
            DataTable dt = db.LoadEmployee(Session["Eid"].ToString());
            LeaveInfo.DataSource = dt;
            LeaveInfo.DataBind();
        }
    }
}