<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Product Dashboard</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background: #f5f7fa;
            min-height: 100vh;
        }

        /* LOGIN */

        #loginBlock {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        #loginBlock form {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            width: 350px;
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.2);
        }

        /* DASHBOARD */

        #dashboardBlock {
            display: flex;
            min-height: 100vh;
        }

        /* SIDEBAR */

        .sidebar {
            width: 220px;
            background: linear-gradient(180deg, #007bff, #6610f2);
            padding: 20px;
            color: white;
        }

        .sidebar button {
            width: 100%;
            margin-bottom: 10px;
        }

        /* CONTENT */

        .form-section {
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            display: none;
        }

        .form-section.active {
            display: block;
        }

        /* FORM STEPS */

        .form-step {
            display: none;
        }

        .form-step.active {
            display: block;
        }

        /* BRAND BOX */

        .brand-item {
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 10px;
            margin-bottom: 10px;
            position: relative;
        }

        .remove-brand {
            position: absolute;
            top: 5px;
            right: 10px;
            color: red;
            cursor: pointer;
            font-weight: bold;
        }
    </style>

</head>

<body>

    <!-- LOGIN -->

    <div id="loginBlock">
        <form id="loginForm">

            <h4 class="text-center text-primary mb-3">Dashboard Login</h4>

            <select id="loginType" class="form-control mb-3">
                <option value="seller">Seller</option>
                <option value="admin">Admin</option>
            </select>

            <input type="email" id="email" class="form-control mb-2" placeholder="Email" required>
            <input type="password" id="password" class="form-control mb-3" placeholder="Password" required>

            <button type="submit" class="btn btn-primary w-100">Login</button>

        </form>
    </div>

    <!-- DASHBOARD -->

    <div id="dashboardBlock" class="d-none">

        <!-- SIDEBAR -->

        <div class="sidebar">

            <h4 class="text-center mb-4">LOGO</h4>

            <button id="usersBtn" class="btn btn-light" onclick="showSection('users')">Users</button>
            <button id="productsBtn" class="btn btn-light" onclick="showSection('products')">Products</button>

        </div>

        <!-- CONTENT -->

        <div class="flex-grow-1 p-4">

            <!-- NAVBAR -->

            <nav class="navbar bg-light mb-4 rounded shadow-sm p-2">

                <span class="fw-bold">Seller Product Dashboard</span>

                <div class="ms-auto d-flex align-items-center">

                    <span id="loggedUser" class="me-3"></span>

                    <button class="btn btn-danger btn-sm" onclick="logout()">Logout</button>

                </div>

            </nav>

            <!-- USERS -->

            <div id="usersSection" class="form-section">

                <h4 class="text-primary mb-3">Users List</h4>

                <table class="table table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody id="usersBody"></tbody>
                </table>

                <hr>

                <h5 class="text-success">Add Seller</h5>

                <div id="sellerForm">

                    <!-- STEP 1 -->

                    <div class="form-step step-1 active">

                        <input type="text" id="sellerName" class="form-control mb-2" placeholder="Name">

                        <select id="sellerGender" class="form-control mb-2">
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>

                        <input type="text" id="sellerPhone" class="form-control mb-2" placeholder="Phone">

                        <button type="button" class="btn btn-primary" onclick="nextStep(1)">Next</button>

                    </div>

                    <!-- STEP 2 -->

                    <div class="form-step step-2">

                        <div id="skillsContainer"></div>

                        <button type="button" class="btn btn-secondary mb-2" onclick="addSkill()">Add Skill</button><br>

                        <button type="button" class="btn btn-secondary" onclick="prevStep(2)">Back</button>
                        <button type="button" class="btn btn-primary" onclick="nextStep(2)">Next</button>

                    </div>

                    <!-- STEP 3 -->

                    <div class="form-step step-3">

                        <input type="email" id="sellerEmail" class="form-control mb-2" placeholder="Email">
                        <input type="password" id="sellerPassword" class="form-control mb-2" placeholder="Password">
                        <input type="password" id="sellerConfirmPassword" class="form-control mb-2"
                            placeholder="Confirm Password">

                        <button type="button" class="btn btn-secondary" onclick="prevStep(3)">Back</button>
                        <button type="button" class="btn btn-success" onclick="submitSeller()">Submit</button>

                    </div>

                </div>

            </div>

            <!-- PRODUCTS -->

            <div id="productsSection" class="form-section">

                <h4 class="text-primary mb-3">Products List</h4>

                <table class="table table-bordered">

                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Total Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody id="productsBody"></tbody>

                </table>

                <hr>

                <h5 class="text-success">Add Product</h5>

                <input type="text" id="productName" class="form-control mb-2" placeholder="Product Name">

                <textarea id="productDescription" class="form-control mb-2" placeholder="Description"></textarea>

                <div id="brandsContainer"></div>

                <button type="button" class="btn btn-secondary mb-2" onclick="addBrand()">Add Brand</button><br>

                <button type="button" class="btn btn-primary" onclick="submitProduct()">Submit Product</button>

            </div>

        </div>
    </div>

    <script>

        let token = "";
        let role = "";

        /* ---------------- LOGIN ---------------- */

        document.getElementById("loginForm").addEventListener("submit", async function (e) {

            e.preventDefault();

            const email = document.getElementById("email").value;
            const password = document.getElementById("password").value;
            const type = document.getElementById("loginType").value;

            let url = (type === "admin")
                ? "http://127.0.0.1:8000/api/admin/login"
                : "http://127.0.0.1:8000/api/seller/login";

            try {

                const res = await fetch(url, {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({ email, password })
                });

                const data = await res.json();

                if (data.token) {

                    token = data.token;
                    role = data.role;

                    document.getElementById("loggedUser").innerText =
                        email + " (" + role + ")";

                    document.getElementById("loginBlock").classList.add("d-none");
                    document.getElementById("dashboardBlock").classList.remove("d-none");
                    applyRoleVisibility();
                    showSection("products");

                } else {
                    alert(data.message || "Login Failed");
                }

            } catch (err) {
                console.log(err);
                alert("Server Error");
            }

        });

        /* ---------------- LOGOUT ---------------- */

        function logout() {
            token = "";
            role = "";
            resetUiState();
            dashboardBlock.classList.add("d-none");
            loginBlock.classList.remove("d-none");
        }

        /* ---------------- SECTION SWITCH ---------------- */

        function showSection(type) {

            usersSection.classList.remove("active");
            productsSection.classList.remove("active");

            if (type === "users") {
                if (role !== "ADMIN") {
                    alert("Only Admin Allowed");
                    return;
                }
                usersSection.classList.add("active");
                loadUsers();
            } else {
                productsSection.classList.add("active");
                loadProducts();
            }

        }

        /* ---------------- LOAD USERS ---------------- */

        async function loadUsers() {

            if (role !== "ADMIN") {
                alert("Only Admin Allowed");
                return;
            }

            const res = await fetch(
                "http://127.0.0.1:8000/api/admin/sellers?page=1",
                { headers: { Authorization: "Bearer " + token } }
            );

            const data = await res.json();

            usersBody.innerHTML = "";

            data.data.forEach((u, i) => {

                usersBody.innerHTML += `
<tr>
<td>${i + 1}</td>
<td>${u.name}</td>
<td>${u.email}</td>
<td>${u.mobile ?? "-"}</td>
<td>${u.role}</td>
<td>
<button class="btn btn-danger btn-sm"
onclick="deleteUser(${u.id})">Delete</button>
</td>
</tr>`;

            });

        }

        /* ---------------- DELETE USER ---------------- */

        async function deleteUser(id) {

            if (!confirm("Delete Seller?")) return;

            await fetch(
                `http://127.0.0.1:8000/api/admin/sellers/${id}`,
                {
                    method: "DELETE",
                    headers: { Authorization: "Bearer " + token }
                }
            );

            loadUsers();

        }

        /* ---------------- MULTI STEP ---------------- */

        function nextStep(step) {
            document.querySelector(".step-" + step).classList.remove("active");
            document.querySelector(".step-" + (step + 1)).classList.add("active");
        }

        function prevStep(step) {
            document.querySelector(".step-" + step).classList.remove("active");
            document.querySelector(".step-" + (step - 1)).classList.add("active");
        }

        /* ---------------- ADD SKILL ---------------- */

        function addSkill() {

            skillsContainer.innerHTML += `
<input type="text"
class="form-control mb-2 skill-input"
placeholder="Skill">`;

        }

        /* ---------------- CREATE SELLER ---------------- */

        async function submitSeller() {

            const skills =
                [...document.querySelectorAll(".skill-input")]
                    .map(x => x.value);

            if (sellerPassword.value !== sellerConfirmPassword.value) {
                alert("Password mismatch");
                return;
            }

            const payload = {
                name: sellerName.value,
                gender: sellerGender.value,
                mobile: sellerPhone.value,
                email: sellerEmail.value,
                password: sellerPassword.value,
                skills: skills
            };

            const res = await fetch(
                "http://127.0.0.1:8000/api/admin/sellers",
                {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                        Authorization: "Bearer " + token
                    },
                    body: JSON.stringify(payload)
                }
            );

            const data = await res.json();

            alert(data.message);
            loadUsers();

        }

        /* ---------------- LOAD PRODUCTS ---------------- */

        async function loadProducts() {

            const res = await fetch(
                "http://127.0.0.1:8000/api/seller/products?page=1",
                { headers: { Authorization: "Bearer " + token } }
            );

            const data = await res.json();

            productsBody.innerHTML = "";

            data.data.forEach((p, i) => {

                let total =
                    p.brands.reduce((a, b) => a + parseFloat(b.price), 0);

                productsBody.innerHTML += `
<tr>
<td>${i + 1}</td>
<td>${p.name}</td>
<td>${p.description}</td>
<td>${total}</td>
<td>
<button class="btn btn-primary btn-sm"
onclick="downloadPdf(${p.id})">PDF</button>
</td>
</tr>`;

            });

        }

        /* ---------------- ADD BRAND ---------------- */

        function addBrand() {

            brandsContainer.innerHTML += `
<div class="brand-item">

<input class="form-control mb-1 brand-name"
placeholder="Brand Name">

<input class="form-control mb-1 brand-detail"
placeholder="Detail">

<input type="number"
class="form-control mb-1 brand-price"
placeholder="Price">

<span class="remove-brand"
onclick="this.parentElement.remove()">×</span>

</div>`;

        }

        /* ---------------- SUBMIT PRODUCT ---------------- */

        async function submitProduct() {

            const brands =
                [...document.querySelectorAll(".brand-item")]
                    .map(b => ({
                        name: b.querySelector(".brand-name").value,
                        detail: b.querySelector(".brand-detail").value,
                        price: b.querySelector(".brand-price").value
                    }));

            const payload = {
                name: productName.value,
                description: productDescription.value,
                brands: brands
            };

            const res = await fetch(
                "http://127.0.0.1:8000/api/seller/products",
                {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                        Authorization: "Bearer " + token
                    },
                    body: JSON.stringify(payload)
                }
            );

            const data = await res.json();

            alert(data.message);
            loadProducts();

        }

        /* ---------------- ROLE / UI HELPERS ---------------- */

        function applyRoleVisibility() {
            if (role === "ADMIN") {
                usersBtn.classList.remove("d-none");
            } else {
                usersBtn.classList.add("d-none");
                // Make sure seller lands on products
                productsSection.classList.add("active");
                usersSection.classList.remove("active");
            }
        }

        function resetUiState() {
            // Clear dynamic lists and form fields to avoid cross-session data
            usersBody.innerHTML = "";
            productsBody.innerHTML = "";
            brandsContainer.innerHTML = "";
            skillsContainer.innerHTML = "";

            productName.value = "";
            productDescription.value = "";
            sellerName.value = "";
            sellerGender.value = "male";
            sellerPhone.value = "";
            sellerEmail.value = "";
            sellerPassword.value = "";
            sellerConfirmPassword.value = "";

            document.querySelectorAll(".form-step").forEach(f => f.classList.remove("active"));
            const firstStep = document.querySelector(".step-1");
            if (firstStep) firstStep.classList.add("active");

            usersSection.classList.remove("active");
            productsSection.classList.add("active");

            const loggedUserLabel = document.getElementById("loggedUser");
            if (loggedUserLabel) loggedUserLabel.innerText = "";
        }

        /* ---------------- PDF DOWNLOAD ---------------- */

        function downloadPdf(id) {

            fetch(
                `http://127.0.0.1:8000/api/seller/products/${id}/pdf`,
                { headers: { Authorization: "Bearer " + token } }
            )
                .then(res => res.blob())
                .then(blob => {

                    let url = URL.createObjectURL(blob);

                    let a = document.createElement("a");
                    a.href = url;
                    a.download = "product_" + id + ".pdf";
                    a.click();

                });

        }

    </script>


</body>

</html>