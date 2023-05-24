using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_Web_App
{
    public partial class Salary : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        object[] data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string name = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("Default");
            }
            int id = (int)Session["Eid"];
            data = db.ShowSalaryResult(id);
            int days = db.GetLeaveDays(id);
            if (data != null)
            {
                lbLeaveCount.Text = days.ToString();
                lbCTCPackage.Text = (string)data[1].ToString();
                int workingday = DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month);
                double perdaysalary = Convert.ToDouble(data[2]) / workingday;

                lbThisMonthDispatch.Text = (Convert.ToDouble(data[2]) - (perdaysalary * days)).ToString("N2");
            }
            else
            {
                lbLeaveCount.Text = "NA";
                lbCTCPackage.Text = "NA";
                lbThisMonthDispatch.Text = "NA";
            }
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default");
        }
    }
}