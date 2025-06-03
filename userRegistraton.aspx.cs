using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOM;
using BAL;





namespace InventoryMgmt
{
    public partial class userRegistraton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


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

            RegistrationDetails bobj = new RegistrationDetails();
            //if (Regid > 0)
            //{
            //    obj.RegId = Regid;
            //    int retval = bobj.UpdateNewRegistration(obj);
            //}
            //else
            //{
                int retval = bobj.AddNewRegistration(obj);
            //}

        }
    }

   
}