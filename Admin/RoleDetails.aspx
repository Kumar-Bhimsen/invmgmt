<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleDetails.aspx.cs" Inherits="InventoryMgmt.Admin.RoleDetails" %>

<%@ Register Src="~/Admin/CommonControl.ascx" TagPrefix="uc1" TagName="CommonControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Enventory Management</title>
    <link rel="shortcut icon" type="image/png" href="./assets/images/logos/favicon.png" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <link href="../css/styles.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <!--  Body Wrapper -->
        <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
            data-sidebar-position="fixed" data-header-position="fixed">
            <uc1:CommonControl runat="server" ID="CommonControl" />

            <!--  Main wrapper -->
            <div class="body-wrapper">
                <!--  Header Start -->
                <header class="app-header">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <ul class="navbar-nav">
                            <li class="nav-item d-block d-xl-none">
                                <a class="nav-link sidebartoggler " id="headerCollapse" href="javascript:void(0)">
                                    <i class="ti ti-menu-2"></i>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link " href="javascript:void(0)" id="drop1" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="ti ti-bell"></i>
                                    <div class="notification bg-primary rounded-circle"></div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-animate-up" aria-labelledby="drop1">
                                    <div class="message-body">
                                        <a href="javascript:void(0)" class="dropdown-item">Item 1
                  </a>
                                        <a href="javascript:void(0)" class="dropdown-item">Item 2
                  </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
                            <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">

                                <li class="nav-item dropdown">
                                    <a class="nav-link " href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        <img src="./assets/images/profile/user-1.jpg" alt="" width="35" height="35" class="rounded-circle">
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop2">
                                        <div class="message-body">
                                            <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                                                <i class="ti ti-user fs-6"></i>
                                                <p class="mb-0 fs-3">My Profile</p>
                                            </a>
                                            <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                                                <i class="ti ti-mail fs-6"></i>
                                                <p class="mb-0 fs-3">My Account</p>
                                            </a>
                                            <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                                                <i class="ti ti-list-check fs-6"></i>
                                                <p class="mb-0 fs-3">My Task</p>
                                            </a>
                                            <a href="./authentication-login.html" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>
                <!--  Header End -->
                <div class="body-wrapper-inner">
                    <div class="container-fluid">
                        <!--  Row 1 -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card w-100">
                                    <div class="card-body">
                                        <div class="alert alert-info" role="alert">
                                            <h3 style="color: darkblue; width: 200px;">User Details</h3>

                                           

                                              <div class="alert alert-info" role="alert" style="height:60px;">
                                                  <asp:Label ID="lblMsg" ForeColor="Red" runat="server"></asp:Label>
                                                   <asp:Button ID="btnAdd" runat="server" Text="Add New User" CssClass="btn btn-primary float-right" OnClick="btnAdd_Click" />
                                              </div>
                                            <table class="table table-striped">
                                                <tr>
                                                    <th>RoleName</th>
                                                    <th>IsActive</th>                                                   
                                                    <th>Action</th>
                                                </tr>
                                                <asp:Repeater ID="rptrUser" runat="server">
                                                    <ItemTemplate>
                                                        <tr>

                                                            <td><%#Eval("RoleName")%></td>
                                                            <td><%#Eval("IsActive")%></td>
                                                          
                                                            <td style="width: 200px">

                                                                <asp:HiddenField ID="hdnRoleId" runat="server" Value='<%# Eval("RoleId") %>' />
                                                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Edit" OnClick="btnEdit_Click" />
                                                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Delete" OnClick="btnDelete_Click" />

                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>


                                                </asp:Repeater>
                                            </table>
                                            <%--<table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">First</th>
                                                    <th scope="col">Last</th>
                                                    <th scope="col">Handle</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td>@mdo</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">2</th>
                                                    <td>Jacob</td>
                                                    <td>Thornton</td>
                                                    <td>@fat</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">3</th>
                                                    <td>Larry</td>
                                                    <td>the Bird</td>
                                                    <td>@twitter</td>
                                                </tr>
                                            </tbody>
                                        </table>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                        <div class="py-6 px-6 text-center">
                            <p class="mb-0 fs-4">
                                Design and Developed by <a href="#"
                                    class="pe-1 text-primary text-decoration-underline">www.bitscomputercenter.com</a> Distributed by <a href="www.bitscomputercenter.com" target="_blank">Bits Websoft</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="../js/jquery.min.js"></script>


        <script src="../js/bootstrap.bundle.min.js"></script>
        <script src="../js/sidebarmenu.js"></script>
        <script src="../js/app.min.js"></script>
        <script src="../js/dashboard.js"></script>
        <script src="../js/apexcharts.min.js"></script>
        <script src="../js/sidebarmenu.js"></script>

        <%-- <script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="./assets/js/sidebarmenu.js"></script>
  <script src="./assets/js/app.min.js"></script>
  <script src="./assets/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="./assets/libs/simplebar/dist/simplebar.js"></script>
  <script src="./assets/js/dashboard.js"></script>--%>
        <!-- solar icons -->
        <script src="https://cdn.jsdelivr.net/npm/iconify-icon@1.0.8/dist/iconify-icon.min.js"></script>
    </form>

</body>
</html>
