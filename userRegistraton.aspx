<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userRegistraton.aspx.cs" Inherits="InventoryMgmt.userRegistraton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <link href="css/myStyle.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="row bottom">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <h1>User Registration</h1>
                </div>
                <div class="col-md-3"></div>
            </div>

            <div class="row bottom">
                <div class="col-md-6">
                    Full Name <span style="color: red">*</span>
                    <asp:TextBox ID="txtFullName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="col-md-6">
                    Father's Name <span style="color: red">*</span>
                    <asp:TextBox ID="txtFaterh" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


            </div>

            <div class="row bottom">
                <div class="col-md-6">
                    Email<span style="color: red">*</span>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="col-md-6">
                    Mobile :
            <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row bottom">
                <div class="col-md-6">
                    Gender :
   <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
       <asp:ListItem Text="--Select--" Value="0" Selected="True"></asp:ListItem>
       <asp:ListItem Text="Male" Value="1"></asp:ListItem>
       <asp:ListItem Text="Female" Value="2"></asp:ListItem>
       <asp:ListItem Text="Others" Value="3"></asp:ListItem>
   </asp:DropDownList>

                </div>
                <div class="col-md-6">
                    Aadhar No :
       <asp:TextBox ID="txtAadhar" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


            </div>

            <div class="row bottom">
                <div class="col-md-6">
                    Password<span style="color: red">*</span>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="col-md-6">
                    Confirm Password:
           <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


            </div>

            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="btnSubmit" Text="SUBMIT" runat="server" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                </div>
                <div class="col-md-6">
                </div>


            </div>

        </div>

        <script>

            $(document).ready(function () {

                $('#btnSubmit').click(function () {
                    if ($('#txtFullName').val() == '') {
                        alert('Enter Full Name');
                        return false;
                    }
                    if ($('#txtFaterh').val() == '') {
                        alert('Enter Father Name');
                        return false;
                    }
                    if ($('#txtEmail').val() == '') {
                        alert('Enter email Id');
                        return false;
                    }

                    if ($('#txtPassword').val() == '') {
                        alert('Enter Password');
                        return false;
                    }

                    if ($('#txtPassword').val() == $('#txtConfirmPassword').val()) {
                        return true;
                    }
                    else {
                        alert('Password doesnot matched.');
                        return false;
                    }


                })

            });


        </script>


    </form>
</body>
</html>
