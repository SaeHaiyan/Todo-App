<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1>Create New Task</h1>
        <div class="card">
            <div class="card-header">
                <h2>Task Details</h2>
            </div>
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
                    <button type="submit" class="btn btn-success">Create Task</button>
                </form>
            </div>
        </div>
        <br>
        <a href="index.jsp" class="btn btn-secondary">Back to Task List</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6
