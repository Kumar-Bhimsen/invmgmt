using BAL;
using BOM;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryMgmt.Admin
{
    public partial class AddEditUser : System.Web.UI.Page
    {
        RegistrationDetails bobj = new RegistrationDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int UserId=Convert.ToInt32( Request.QueryString["UserId"]);
                if(UserId > 0)
                {
                    btnSubmit.Text = "UPDATE";
                    DataTable dt = new DataTable();
                    dt = bobj.GetUserDetialById(UserId);

                    txtFullName.Text = Convert.ToString(dt.Rows[0]["FullName"]);
                    txtFaterh.Text = Convert.ToString(dt.Rows[0]["FathersName"]);
                    txtEmail.Text= Convert.ToString(dt.Rows[0]["EmailId"]);
                    txtMobile.Text = Convert.ToString(dt.Rows[0]["Mobile"]);
                    txtAadhar.Text = Convert.ToString(dt.Rows[0]["Aadhaar"]);
                    ddlGender.SelectedValue = Convert.ToString(dt.Rows[0]["GenderId"]);
                    txtPassword.Text= Convert.ToString(dt.Rows[0]["Pwd"]);
                }

            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            User obj = new User();
            obj.FullName = txtFullName.Text;
            obj.FathersName = txtFaterh.Text;
            obj.EmailId = txtEmail.Text;
            obj.Mobile = txtMobile.Text;
            obj.Pwd = txtPassword.Text;
            obj.Aadhaar = txtAadhar.Text;
            obj.GenderId = Convert.ToInt32(ddlGender.SelectedValue);
        

            int UserId = Convert.ToInt32(Request.QueryString["UserId"]);
            if (UserId > 0)
            {
                obj.UserId = UserId;
                int retval = bobj.UpdateUser(obj);
                if (retval == 1)
                {

                    lblMsg.Text = "Record Updated Successfully.";
                }
                else
                {
                    lblMsg.Text = "Oops! Something went wrong, please try again.";
                }
            }
            else
            {


                int retval = bobj.AddNewRegistration(obj);
                if (retval == 1)
                {

                    lblMsg.Text = "Record added successfully.";
                }
                else
                {
                    lblMsg.Text = "Oops! Something went wrong, please try again.";
                }
            }




        }
    }
}