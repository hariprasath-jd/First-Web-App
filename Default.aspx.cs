using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_Web_App
{
    public partial class _Default : Page
    {
        DataBase db = new DataBase();
        object[] info;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserMsg.Visible = false;
                PassMsg.Visible = false;
            }
            
        }

        protected void login_Click(object sender, EventArgs e)
        {
            //Console.WriteLine("Clicked");
            Debug.WriteLine("Clicked");
            string user = UserName.Text;
            string pass = userps.Text;
            info = db.LoginValidate(user, pass);
            if (info != null)
            {
                if (user == (string)info[1])
                {
                    if (pass == (string)info[2])
                    {
                        object[] sam = db.EditBasicInfo((int)info[0]);
                        Session["Eid"] = info[0];
                        Session["username"] = sam[1].ToString();
                        if (Request.Cookies["user"] == null)
                        {
                            HttpCookie ex = new HttpCookie("user");
                            ex.Value = sam[1].ToString();
                            Response.Cookies.Add(ex);
                        }
                        Response.Redirect("Home_Page");
                    }
                    else
                    {
                        UserMsg.Visible = true;
                        UserMsg.ForeColor = Color.Green;
                        UserMsg.Text = "Looks Good...........";
                        PassMsg.Visible = true;
                    }
                }
                else
                {
                    UserMsg.Visible = true;
                    UserMsg.ForeColor = Color.Red;
                    UserMsg.Text = "User Din't Match";
                }
            }
            else
            {
                UserMsg.Visible = true;
                UserMsg.ForeColor = Color.Red;
                UserMsg.Text = "User Din't Match";
            }
            
        }
    }
}