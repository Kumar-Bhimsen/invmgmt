using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOM;
using BAL;
using System.Configuration;
using System.Data.SqlClient;

namespace InventoryMgmt.Admin
{
    public partial class RoleDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
              
              

            }

        }

        public void BindRepeater()
        {
            DataTable dt = new DataTable();
            RegistrationDetails boj = new RegistrationDetails();
          
            dt = boj.GetAllRoleDetails();
            rptrUser.DataSource = dt;
            rptrUser.DataBind();

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).Parent as RepeaterItem;
            int UserId = int.Parse((item.FindControl("hdnUserId") as HiddenField).Value);
            Response.Redirect("AddEditUser.aspx?UserId="+ UserId);

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).Parent as RepeaterItem;

            int UserId = int.Parse((item.FindControl("hdnUserId") as HiddenField).Value);

            int Retval = -1;
            RegistrationDetails boj = new RegistrationDetails();
            Retval = boj.DeleteUserByUserId(UserId);
            if(Retval==1)
            {
                lblMsg.Text = "Record Deleteed Successfully";
                BindRepeater();
            }
            else
            {
                lblMsg.Text = "OOps! Somthing went wrong, Please try again.";

            }

          

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEditUser.aspx");
        }

      
    }
}