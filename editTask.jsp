<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h3 class="card-title text-center">Edit Task</h3>
                    </div>
                    <div class="card-body">
                        <form action="UpdateTaskServlet" method="post">
                            <!-- Hidden ID Field -->
                            <input type="hidden" name="id" value="${requestScope.taskId}" />

                            <!-- Task Title -->
                            <div class="mb-3">
                                <label for="task" class="form-label">Task</label>
                                <input type="text" id="task" name="task" class="form-control" value="${requestScope.taskTitle}" required>
                            </div>

                            <!-- Description -->
                            <div class="mb-3">
                                <label for="description" class="form-label">Description</label>
                                <textarea id="description" name="description" class="form-control" rows="3" required>${requestScope.taskDescription}</textarea>
                            </div>

                            <!-- Status -->
                            <div class="mb-3">
                                <label for="status" class="form-label">Status</label>
                                <select id="status" name="status" class="form-select">
                                    <option value="pending" ${requestScope.taskStatus == "pending" ? "selected" : ""}>Pending</option>
                                    <option value="completed" ${requestScope.taskStatus == "completed" ? "selected" : ""}>Completed</option>
                                </select>
                            </div>

                            <!-- Buttons -->
                            <div class="d-flex justify-content-between">
                                <a href="index.jsp" class="btn btn-secondary">Back</a>
                                <button type="submit" class="btn btn-primary">Update Task</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
