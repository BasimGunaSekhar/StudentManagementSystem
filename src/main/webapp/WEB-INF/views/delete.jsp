<!DOCTYPE html>
<html>
<head>
    <title>Delete Student</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        body {
            background: #f4f7fb;
            animation: fadeIn 1s ease-in-out;
        }

        .delete-box {
            background: white;
            padding: 35px;
            border-radius: 16px;
            max-width: 420px;
            margin: auto;
            margin-top: 70px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            animation: fadeUp 1.1s ease-in-out;
        }

        h2 {
            font-weight: bold;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.1);
            animation: slideDown 0.9s ease-in-out;
        }

        input.form-control {
            border-radius: 10px;
        }

        .btn-delete {
            background-color: #dc3545;
            color: white;
            width: 150px;
            font-size: 18px;
            border-radius: 10px;
            padding: 10px;
            box-shadow: 0 4px 10px rgba(220,53,69,0.5);
            transition: 0.3s ease-in-out;
        }

        .btn-delete:hover {
            transform: scale(1.1);
            box-shadow: 0 6px 18px rgba(220,53,69,0.7);
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

    <div class="delete-box">

        <h2 class="text-center mb-4">Delete Student</h2>

        <h4 class="text-success text-center">${msg}</h4>

        <form action="delete" method="post">

            <label>User ID:</label>
            <input type="number" class="form-control" name="id" required><br>

            <div class="text-center">
                <input type="submit" class="btn btn-delete" value="Delete">
            </div>

        </form>
    </div>

</body>
</html>
