<!DOCTYPE html>
<html>
<head>
<title>SMS APP</title>

<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>
    body {
        background: #f4f7fb; /* Light background */
        height: 100vh;
        color: #333;
        animation: fadeIn 1s ease-in-out;
    }

    h1 {
        font-weight: bold;
        animation: slideDown 1s ease-in-out;
        text-shadow: 1px 1px 3px rgba(0,0,0,0.2);
    }

    .menu-container {
        animation: fadeUp 1.2s ease-in-out;
    }

    .btn-custom {
        width: 150px;
        padding: 12px;
        font-size: 18px;
        border-radius: 12px;
        transition: 0.3s ease-in-out;
        font-weight: 600;
        box-shadow: 0 4px 8px rgba(0,0,0,0.15);
    }

    .btn-custom:hover {
        transform: scale(1.12);
        box-shadow: 0px 0px 18px rgba(0,0,0,0.2);
    }

    /* Button Colors */
    .btn-register { background-color: #4caf50; color: white; }
    .btn-login    { background-color: #ffc107; color: black; }
    .btn-update   { background-color: #03a9f4; color: white; }
    .btn-delete   { background-color: #f44336; color: white; }
    .btn-view     { background-color: #7e57c2; color: white; }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to   { opacity: 1; }
    }

    @keyframes slideDown {
        from { transform: translateY(-40px); opacity: 0; }
        to   { transform: translateY(0); opacity: 1; }
    }

    @keyframes fadeUp {
        from { transform: translateY(40px); opacity: 0; }
        to   { transform: translateY(0); opacity: 1; }
    }
</style>
</head>

<body class="container mt-5">

    <h1 class="text-center mb-4">Welcome to SMS APP</h1>

    <div class="d-flex justify-content-center gap-4 menu-container">

        <a href="register" class="btn btn-custom btn-register">Register</a>
        <a href="login" class="btn btn-custom btn-login">Login</a>
        <a href="update" class="btn btn-custom btn-update">Update</a>
        <a href="delete" class="btn btn-custom btn-delete">Delete</a>
        <a href="fetch" class="btn btn-custom btn-view">View All</a>

    </div>

</body>
</html>
