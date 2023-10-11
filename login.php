<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aurelio WEB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container-fluid">
        <div class="container">
            <div class="card p-5 mt-5 bg-primary">
                <form action="login.php" method="post">
                    <div class="form-label"><h4 style="color: white;">Username</h4></div>
                    <input type="text" name="username" id="username" class="form-control my-3">
                    <div class="form-label"><h4 style="color: white;">Password</h4></div>
                    <input type="password" name="password" id="password" class="form-control my-3">
                    <button type="submit" class="btn btn-light form-control mt-3"><h5>Login</h5></button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>