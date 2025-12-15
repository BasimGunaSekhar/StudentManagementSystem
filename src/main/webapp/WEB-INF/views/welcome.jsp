<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #eef2f3;  /* Light soft grey */
        }
        .welcome-box {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 14px rgba(0,0,0,0.12);
            max-width: 480px;
            margin: auto;
            margin-top: 90px;
        }
        .navbar-custom {
            background: #0d6efd; /* Light blue navbar */
        }
    </style>
</head>

<body>

    <!-- Top Navbar -->
    <nav class="navbar navbar-custom">
        <div class="container-fluid">
            <span class="navbar-brand mb-0 h1 text-white">Student Management System</span>
            <a href="/" class="btn btn-outline-light">Home</a>
        </div>
    </nav>

    <!-- Welcome Box -->
    <div class="welcome-box text-center">

        <h1 class="text-primary">Welcome, ${name}!</h1>

        <p class="lead mt-3">
            You have successfully logged in.
        </p>

        <a href="/" class="btn btn-success mt-3">Go to Home</a>

    </div>

</body>
</html>
