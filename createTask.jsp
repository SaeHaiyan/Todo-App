<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New Task</title>
    
    <!-- Google Fonts for Poppins Light -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
    <style>
        body {
            background-color: #dda94b; /* Set background color to #dda94b */
            font-family: 'Poppins', sans-serif; /* Apply Poppins font */
            font-weight: 300; /* Use light weight for Poppins */
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px; /* Set max width of card */
            margin: 0 auto; /* Center the card horizontally */
        }

        .btn-success {
            background-color: #1E4174;
            border-color: #1E4174;
        }

        .btn-secondary {
            background-color: #DDA94B;
            border-color: #DDA94B;
        }

        .mb-3 {
            margin-bottom: 20px;
        }

        .form-control, .form-select {
            border-radius: 8px;
        }

        .container {
            margin-top: 50px;
        }

        .btn-group {
            display: flex;
            gap: 10px; /* Adds space between buttons */
            justify-content: space-between; /* Ensures the buttons are aligned on opposite sides */
        }

        .btn-group .btn {
            width: 48%;
        }

        .btn-group .btn:hover {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            background-color: #20211a; /* Change background color to blue on hover */
            border-color: #20211a; /* Border color on hover */
        }

        /* Add margin below the select dropdown for spacing */
        .form-select {
            margin-bottom: 30px; /* Added margin to create space */
        }
    </style>
</head>
<body>

    <div class="container">
        <h1 class="text-center my-4" style="font-size: 2.5rem;">Create New Task</h1>
        
        <!-- Task Form Card without Card Header -->
        <div class="card">
            <div class="card-body">
                <form action="CreateTaskServlet" method="post">
                    <div class="mb-3">
                        <label for="task" class="form-label">Task</label>
                        <input type="text" id="task" name="task" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea id="description" name="description" class="form-control" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="status" class="form-label">Status</label>
                        <select id="status" name="status" class="form-select" required>
                            <option value="pending">Pending</option>
                            <option value="completed">Completed</option>
                        </select>
                    </div>

                    <!-- Separate buttons with adjusted alignment -->
                    <div class="btn-group">
                        <a href="index.jsp" class="btn btn-secondary">Back to Task List</a>
                        <button type="submit" class="btn btn-success">Create Task</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
