<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
</head>
<body>

    <!-- Main Content -->
    <div class="container mt-5">
        <h1>Task List</h1>

        <!-- Card with Table -->
        <div class="card">
            <div class="card-header">
                <h2>All Tasks</h2>
                <!-- Create New Task Button (Positioned in the top-right of the card body) -->
                <a href="createTask.jsp" class="btn btn-primary btn-sm position-absolute top-0 end-0" style="margin-top: 10px; margin-right: 10px;">
                    Create New Task
                </a>
            </div>
            <div class="card-body position-relative">

                <!-- Table -->
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Task</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <jsp:include page="TaskServlet" />
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
