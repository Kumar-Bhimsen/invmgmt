<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2c3e50;
            --accent-color: #e74c3c;
            --light-bg: #f8f9fa;
            --dark-bg: #343a40;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
        }

        .sidebar {
            background-color: var(--secondary-color);
            color: white;
            height: 100vh;
            position: fixed;
            padding-top: 20px;
            transition: all 0.3s;
        }

            .sidebar .nav-link {
                color: rgba(255, 255, 255, 0.8);
                padding: 15px 20px;
                border-radius: 5px;
                margin: 5px 10px;
                transition: all 0.3s;
            }

                .sidebar .nav-link:hover, .sidebar .nav-link.active {
                    background-color: rgba(255, 255, 255, 0.1);
                    color: white;
                }

                .sidebar .nav-link i {
                    margin-right: 10px;
                    width: 20px;
                    text-align: center;
                }

        .main-content {
            margin-left: 250px;
            padding: 20px;
            transition: all 0.3s;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            margin-bottom: 20px;
        }

            .card:hover {
                transform: translateY(-5px);
            }

        .stat-card {
            padding: 20px;
            border-radius: 10px;
            color: white;
        }

        .bg-primary-gradient {
            background: linear-gradient(45deg, #3498db, #2980b9);
        }

        .bg-success-gradient {
            background: linear-gradient(45deg, #2ecc71, #27ae60);
        }

        .bg-warning-gradient {
            background: linear-gradient(45deg, #f39c12, #e67e22);
        }

        .bg-danger-gradient {
            background: linear-gradient(45deg, #e74c3c, #c0392b);
        }

        .stat-icon {
            font-size: 40px;
            opacity: 0.8;
        }

        .table-container {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .table th {
            background-color: var(--light-bg);
            border-color: #dee2e6;
        }

        .action-btn {
            padding: 5px 10px;
            margin: 0 2px;
        }

        .search-container {
            position: relative;
        }

            .search-container i {
                position: absolute;
                top: 12px;
                left: 15px;
                color: #6c757d;
            }

        .search-input {
            padding-left: 40px;
            border-radius: 20px;
        }

        .navbar-brand img {
            height: 40px;
            margin-right: 10px;
        }

        .top-navbar {
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .user-profile {
            display: flex;
            align-items: center;
        }

            .user-profile img {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                margin-right: 10px;
            }

        @media (max-width: 768px) {
            .sidebar {
                width: 80px;
                text-align: center;
            }

                .sidebar .nav-link span {
                    display: none;
                }

                .sidebar .nav-link i {
                    margin-right: 0;
                    font-size: 1.2rem;
                }

            .main-content {
                margin-left: 80px;
            }
        }

        .chart-container {
            height: 300px;
            margin-bottom: 20px;
        }

        .progress {
            height: 10px;
            margin-bottom: 10px;
        }

        .notification-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            font-size: 0.6rem;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar d-flex flex-column flex-shrink-0 p-3 text-white" style="width: 250px;">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
            <i class="fas fa-boxes me-2"></i>
            <span class="fs-4">InvenTrack</span>
        </a>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
                <a href="#" class="nav-link active" aria-current="page">
                    <i class="fas fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>

                <a href="UserDetails.aspx" class="nav-link text-white">
                    <i class="fas fa-users"></i>
                    <span>Manage User</span>
                </a>
            </li>
            <li>

                <a href="RoleDetails.aspx" class="nav-link text-white">
                    <i class="fas fa-users"></i>
                    <span>Manage Role</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="fas fa-box"></i>
                    <span>Products</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="fas fa-warehouse"></i>
                    <span>Stock</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="fas fa-truck"></i>
                    <span>Orders</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="fas fa-users"></i>
                    <span>Suppliers</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="fas fa-chart-bar"></i>
                    <span>Reports</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="fas fa-cog"></i>
                    <span>Settings</span>
                </a>
            </li>
        </ul>
        <hr>
        <div class="dropdown">
            <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="https://via.placeholder.com/32" alt="User" width="32" height="32" class="rounded-circle me-2">
                <strong>Admin User</strong>
            </a>
            <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li><a class="dropdown-item" href="#">Settings</a></li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Sign out</a></li>
            </ul>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Top Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-white mb-4 rounded shadow-sm">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="search-container me-auto">
                        <i class="fas fa-search"></i>
                        <input class="form-control search-input" type="search" placeholder="Search inventory..." aria-label="Search">
                    </div>
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown me-3">
                            <a class="nav-link position-relative" href="#" id="notificationsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-bell"></i>
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger notification-badge">3
                                </span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="notificationsDropdown">
                                <li><a class="dropdown-item" href="#">Low stock alert: Product A</a></li>
                                <li><a class="dropdown-item" href="#">New order received</a></li>
                                <li><a class="dropdown-item" href="#">Shipment delayed</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="https://via.placeholder.com/32" alt="User" width="32" height="32" class="rounded-circle">
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">My Profile</a></li>
                                <li><a class="dropdown-item" href="#">Account Settings</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Dashboard Header -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="mb-0">Dashboard Overview</h2>
            <div>
                <button class="btn btn-outline-secondary me-2">
                    <i class="fas fa-download me-1"></i>Export
               
                </button>
                <button class="btn btn-primary">
                    <i class="fas fa-plus me-1"></i>Add Product
               
                </button>
            </div>
        </div>

        <!-- Stats Cards -->
        <div class="row mb-4">
            <div class="col-md-3">
                <div class="card">
                    <div class="stat-card bg-primary-gradient">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="mb-0">Total Products</h6>
                                <h2 class="mb-0 mt-2">1,254</h2>
                                <p class="mb-0 mt-2"><span class="text-white-50">+12% from last month</span></p>
                            </div>
                            <div class="stat-icon">
                                <i class="fas fa-box"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="stat-card bg-success-gradient">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="mb-0">In Stock</h6>
                                <h2 class="mb-0 mt-2">8,549</h2>
                                <p class="mb-0 mt-2"><span class="text-white-50">+5% from last month</span></p>
                            </div>
                            <div class="stat-icon">
                                <i class="fas fa-warehouse"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="stat-card bg-warning-gradient">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="mb-0">Pending Orders</h6>
                                <h2 class="mb-0 mt-2">42</h2>
                                <p class="mb-0 mt-2"><span class="text-white-50">-8% from last month</span></p>
                            </div>
                            <div class="stat-icon">
                                <i class="fas fa-clock"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="stat-card bg-danger-gradient">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="mb-0">Low Stock Items</h6>
                                <h2 class="mb-0 mt-2">15</h2>
                                <p class="mb-0 mt-2"><span class="text-white-50">+3 from last week</span></p>
                            </div>
                            <div class="stat-icon">
                                <i class="fas fa-exclamation-triangle"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Charts Row -->
        <div class="row mb-4">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Inventory Overview</h5>
                        <div class="chart-container">
                            <canvas id="inventoryChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Stock Distribution</h5>
                        <div class="chart-container">
                            <canvas id="distributionChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recent Activity and Low Stock -->
        <div class="row mb-4">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h5 class="card-title mb-0">Recent Activities</h5>
                            <a href="#" class="btn btn-sm btn-outline-primary">View All</a>
                        </div>
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">New shipment received</h6>
                                    <small>3 hours ago</small>
                                </div>
                                <p class="mb-1">Shipment #45892 from Supplier A has been received and processed.</p>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Order fulfilled</h6>
                                    <small>5 hours ago</small>
                                </div>
                                <p class="mb-1">Order #78945 has been packed and shipped to the customer.</p>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">Inventory adjustment</h6>
                                    <small>Yesterday</small>
                                </div>
                                <p class="mb-1">Manual adjustment made to Product B inventory due to damage.</p>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action">
                                <div class="d-flex w-100 justify-content-between">
                                    <h6 class="mb-1">New product added</h6>
                                    <small>2 days ago</small>
                                </div>
                                <p class="mb-1">Product C has been added to the inventory with initial stock of 100 units.</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h5 class="card-title mb-0">Low Stock Items</h5>
                            <a href="#" class="btn btn-sm btn-outline-danger">Reorder All</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Current Stock</th>
                                        <th>Reorder Level</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Product A</td>
                                        <td>5</td>
                                        <td>10</td>
                                        <td><span class="badge bg-danger">Critical</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-outline-primary">Reorder</button></td>
                                    </tr>
                                    <tr>
                                        <td>Product B</td>
                                        <td>12</td>
                                        <td>15</td>
                                        <td><span class="badge bg-warning text-dark">Low</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-outline-primary">Reorder</button></td>
                                    </tr>
                                    <tr>
                                        <td>Product C</td>
                                        <td>8</td>
                                        <td>10</td>
                                        <td><span class="badge bg-warning text-dark">Low</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-outline-primary">Reorder</button></td>
                                    </tr>
                                    <tr>
                                        <td>Product D</td>
                                        <td>3</td>
                                        <td>10</td>
                                        <td><span class="badge bg-danger">Critical</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-outline-primary">Reorder</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recent Products Table -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h5 class="card-title mb-0">Recent Products</h5>
                    <div>
                        <button class="btn btn-sm btn-outline-secondary me-2">
                            <i class="fas fa-filter me-1"></i>Filter
                       
                        </button>
                        <a href="#" class="btn btn-sm btn-outline-primary">View All Products</a>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Product Name</th>
                                <th>Category</th>
                                <th>Stock</th>
                                <th>Price</th>
                                <th>Last Updated</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#12345</td>
                                <td>Wireless Headphones</td>
                                <td>Electronics</td>
                                <td>45</td>
                                <td>$89.99</td>
                                <td>2023-06-15</td>
                                <td><span class="badge bg-success">In Stock</span></td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="btn btn-sm btn-outline-danger action-btn"><i class="fas fa-trash"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>#12346</td>
                                <td>Bluetooth Speaker</td>
                                <td>Electronics</td>
                                <td>28</td>
                                <td>$59.99</td>
                                <td>2023-06-14</td>
                                <td><span class="badge bg-success">In Stock</span></td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="btn btn-sm btn-outline-danger action-btn"><i class="fas fa-trash"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>#12347</td>
                                <td>Smartphone Case</td>
                                <td>Accessories</td>
                                <td>5</td>
                                <td>$19.99</td>
                                <td>2023-06-13</td>
                                <td><span class="badge bg-danger">Low Stock</span></td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="btn btn-sm btn-outline-danger action-btn"><i class="fas fa-trash"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>#12348</td>
                                <td>USB-C Cable</td>
                                <td>Accessories</td>
                                <td>120</td>
                                <td>$12.99</td>
                                <td>2023-06-12</td>
                                <td><span class="badge bg-success">In Stock</span></td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="btn btn-sm btn-outline-danger action-btn"><i class="fas fa-trash"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>#12349</td>
                                <td>Wireless Mouse</td>
                                <td>Computer</td>
                                <td>35</td>
                                <td>$24.99</td>
                                <td>2023-06-11</td>
                                <td><span class="badge bg-success">In Stock</span></td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="btn btn-sm btn-outline-danger action-btn"><i class="fas fa-trash"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-end">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <!-- Footer -->
        <footer class="bg-white text-center p-3 mt-4 rounded shadow-sm">
            <p class="mb-0">© 2023 InvenTrack Inventory Management System. All rights reserved.</p>
        </footer>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        // Inventory Chart
        const inventoryCtx = document.getElementById('inventoryChart').getContext('2d');
        const inventoryChart = new Chart(inventoryCtx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                datasets: [{
                    label: 'Total Stock',
                    data: [7500, 8200, 7800, 9000, 8600, 8549],
                    backgroundColor: 'rgba(52, 152, 219, 0.2)',
                    borderColor: 'rgba(52, 152, 219, 1)',
                    borderWidth: 2,
                    tension: 0.3
                },
                {
                    label: 'Orders',
                    data: [1200, 1350, 1100, 1450, 1300, 1250],
                    backgroundColor: 'rgba(46, 204, 113, 0.2)',
                    borderColor: 'rgba(46, 204, 113, 1)',
                    borderWidth: 2,
                    tension: 0.3
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    y: {
                        beginAtZero: false
                    }
                }
            }
        });

        // Distribution Chart
        const distributionCtx = document.getElementById('distributionChart').getContext('2d');
        const distributionChart = new Chart(distributionCtx, {
            type: 'doughnut',
            data: {
                labels: ['Electronics', 'Clothing', 'Food', 'Furniture', 'Other'],
                datasets: [{
                    data: [35, 25, 15, 15, 10],
                    backgroundColor: [
                        'rgba(52, 152, 219, 0.8)',
                        'rgba(46, 204, 113, 0.8)',
                        'rgba(243, 156, 18, 0.8)',
                        'rgba(231, 76, 60, 0.8)',
                        'rgba(155, 89, 182, 0.8)'
                    ],
                    borderColor: [
                        'rgba(52, 152, 219, 1)',
                        'rgba(46, 204, 113, 1)',
                        'rgba(243, 156, 18, 1)',
                        'rgba(231, 76, 60, 1)',
                        'rgba(155, 89, 182, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'bottom'
                    }
                }
            }
        });
    </script>
</body>
</html>
