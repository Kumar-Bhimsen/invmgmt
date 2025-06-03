using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using BOM;

namespace InventoryMgmt
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User usr = new User();
            usr.EmailId = txtUser.Value;
            usr.Pwd = txtPasswrd.Value;
            DataTable dt = new DataTable();

            RegistrationDetails ur = new RegistrationDetails();
            dt = ur.GetLoginDetails(usr);
            if (dt.Rows.Count > 0)
            {
                Session["UserName"] = Convert.ToString(dt.Rows[0]["FullName"]);
                Session["Pwd"] = Convert.ToString(dt.Rows[0]["Pwd"]);
                Session["EmailId"] = Convert.ToString(dt.Rows[0]["EmailId"]);
                Response.Redirect("/Admin/AdminDashboard.aspx");
            }
            else
            {
                lblMsg.Text = "Your UserId/Password is incorrect.";
            }

        }
    }
}