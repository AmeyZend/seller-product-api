<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Product Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            min-height: 100vh;
        }

        .sidebar {
            height: 100vh;
            background: #343a40;
            color: #fff;
        }

        .sidebar a {
            color: #fff;
            display: block;
            padding: 10px;
            text-decoration: none;
        }

        .sidebar a:hover {
            background: #495057;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .user-info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }
    </style>
</head>

<body>
    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar p-3">
            <h3 class="text-center">LOGO</h3>
            <hr>
            <a href="#" onclick="showUsers()">Users</a>
            <a href="#" onclick="showProducts()">Products</a>
        </div>

        <!-- Main content -->
        <div class="flex-grow-1 p-3">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light mb-3">
                <div class="container-fluid">
                    <span class="navbar-brand">Dashboard</span>
                    <div class="d-flex ms-auto user-info">
                        <img src="https://via.placeholder.com/40" alt="user">
                        <div>
                            <div id="loggedUser">Not logged in</div>
                            <button class="btn btn-sm btn-danger" onclick="logout()">Logout</button>
                        </div>
                    </div>
                </div>
            </nav>

            <!-- Content -->
            <div id="content">
                <h4>Login</h4>
                <form id="loginForm" class="mb-3">
                    <div class="mb-2">
                        <input type="email" id="email" class="form-control" placeholder="Email" required>
                    </div>
                    <div class="mb-2">
                        <input type="password" id="password" class="form-control" placeholder="Password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>

                <div id="usersTable" class="d-none">
                    <h4>Users List</h4>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Sr No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone No</th>
                                <th>Gender</th>
                                <th>Role</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody id="usersBody"></tbody>
                    </table>
                    <nav>
                        <ul class="pagination" id="usersPagination"></ul>
                    </nav>
                </div>

                <div id="productsTable" class="d-none">
                    <h4>Products List</h4>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Sr No</th>
                                <th>Product Name</th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody id="productsBody"></tbody>
                    </table>
                    <nav>
                        <ul class="pagination" id="productsPagination"></ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <script>
        let token = '';
        let role = '';

        document.getElementById('loginForm').addEventListener('submit', async function (e) {
            e.preventDefault();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            const res = await fetch('http://127.0.0.1:8000/api/seller/login', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ email, password })
            });
            const data = await res.json();
            if (data.token) {
                token = data.token;
                role = data.role;
                document.getElementById('loggedUser').innerText = `${email} (${role})`;
                document.getElementById('loginForm').classList.add('d-none');
            } else {
                alert(data.message || 'Login failed');
            }
        });

        function logout() {
            token = '';
            role = '';
            document.getElementById('loggedUser').innerText = 'Not logged in';
            document.getElementById('loginForm').classList.remove('d-none');
            document.getElementById('usersTable').classList.add('d-none');
            document.getElementById('productsTable').classList.add('d-none');
        }

        async function showUsers(page = 1) {
            document.getElementById('usersTable').classList.remove('d-none');
            document.getElementById('productsTable').classList.add('d-none');
            const res = await fetch(`http://127.0.0.1:8000/api/admin/sellers?page=${page}`, {
                headers: { Authorization: 'Bearer ' + token }
            });
            const data = await res.json();
            const tbody = document.getElementById('usersBody');
            tbody.innerHTML = '';
            data.data.forEach((user, index) => {
                tbody.innerHTML += `<tr>
                <td>${index + 1}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.mobile || '-'}</td>
                <td>-</td>
                <td>${user.role}</td>
                <td><button class="btn btn-sm btn-danger" onclick="deleteUser(${user.id})">Delete</button></td>
            </tr>`;
            });
        }

        async function showProducts(page = 1) {
            document.getElementById('productsTable').classList.remove('d-none');
            document.getElementById('usersTable').classList.add('d-none');
            const res = await fetch(`http://127.0.0.1:8000/api/seller/products?page=${page}`, {
                headers: { Authorization: 'Bearer ' + token }
            });
            const data = await res.json();
            const tbody = document.getElementById('productsBody');
            tbody.innerHTML = '';
            data.data.forEach((product, index) => {
                const totalPrice = product.brands.reduce((a, b) => a + parseFloat(b.price), 0);
                tbody.innerHTML += `<tr>
                <td>${index + 1}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${totalPrice}</td>
                <td><a href="http://127.0.0.1:8000/api/seller/products/${product.id}/pdf" target="_blank" class="btn btn-sm btn-primary">Download PDF</a></td>
            </tr>`;
            });
        }

        async function deleteUser(id) {
            if (!confirm('Are you sure?')) return;
            await fetch(`http://127.0.0.1:8000/api/admin/sellers/${id}`, {
                method: 'DELETE',
                headers: { Authorization: 'Bearer ' + token }
            });
            showUsers();
        }
    </script>
</body>

</html>