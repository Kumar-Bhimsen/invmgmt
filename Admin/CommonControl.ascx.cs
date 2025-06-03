using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryMgmt.Admin
{
    public partial class CommonControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["UserName"]) != null && Convert.ToString(Session["Pwd"]) != null)
            {
                lblName.Text = Convert.ToString(Session["UserName"]);
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}