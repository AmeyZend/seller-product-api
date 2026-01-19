document.addEventListener("DOMContentLoaded", function () {
    document
        .getElementById("loginForm")
        .addEventListener("submit", async function (e) {
            e.preventDefault();

            let email = document.getElementById("email").value;
            let password = document.getElementById("password").value;

            console.log(email, password);

            try {
                let response = await fetch("http://127.0.0.1:8000/api/login", {
                    method: "POST",

                    headers: {
                        "Content-Type": "application/json",
                        Accept: "application/json",
                    },

                    body: JSON.stringify({
                        email: email,
                        password: password,
                    }),
                });

                let data = await response.json();

                console.log(data);

                if (response.ok) {
                    localStorage.setItem("token", data.token);
                    localStorage.setItem("role", data.role);

                    alert("Login Success");

                    window.location.href = "dashboard.html";
                } else {
                    alert(data.message || "Invalid Credentials");
                }
            } catch (error) {
                console.log(error);
                alert("Server error");
            }
        });
});
