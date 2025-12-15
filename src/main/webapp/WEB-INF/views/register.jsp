<!DOCTYPE html>
<html>
<head>
    <title>Register Student</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        body {
            background: #f4f7fb; /* Light background */
            animation: fadeIn 1s ease-in-out;
            color: #333;
        }

        .register-box {
            background: white;
            padding: 35px;
            border-radius: 16px;
            max-width: 450px;
            margin: auto;
            margin-top: 70px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            animation: fadeUp 1.1s ease-in-out;
        }

        h2 {
            font-weight: bold;
            animation: slideDown 0.8s ease-in-out;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.1);
        }

        input.form-control {
            border-radius: 10px;
        }

        .btn-submit {
            background-color: #4caf50;
            color: white;
            width: 150px;
            font-size: 18px;
            border-radius: 10px;
            padding: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            transition: 0.3s ease-in-out;
        }

        .btn-submit:hover {
            transform: scale(1.1);
            box-shadow: 0 6px 16px rgba(0,0,0,0.25);
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to   { opacity: 1; }
        }

        @keyframes fadeUp {
            from { transform: translateY(40px); opacity: 0; }
            to   { transform: translateY(0); opacity: 1; }
        }

        @keyframes slideDown {
            from { transform: translateY(-20px); opacity: 0; }
            to   { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>

<body>

    <!-- Registration Form -->
    <div class="register-box">

        <h2 class="text-center mb-3">Register Student</h2>

        <h4 class="text-center text-success">${msg}</h4>

        <form action="register" method="post">

            <label>ID:</label>
            <input type="number" class="form-control" name="id" required><br>

            <label>Name:</label>
            <input type="text" class="form-control" name="name" required><br>

            <label>Age:</label>
            <input type="number" class="form-control" name="age" required><br>

            <div class="text-center">
                <input type="submit" class="btn btn-submit" value="Register">
            </div>

        </form>
    </div>

</body>
</html>
