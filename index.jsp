<%@ include file="header.jsp" %>

<style>
    /* Change the background color of the page */
    body {
        background-color: #DDA94B;
    }

    /* Style the table */
    .table {
        background-color: #fff; /* White background for the table */
        border-radius: 10px; /* Rounded corners */
        overflow: hidden; /* Ensures that the table corners are rounded */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow for a subtle 3D effect */
        margin-bottom: 30px; /* Add space at the bottom of the table */
    }

    .table thead {
        background-color: #20211a; /* Dark background for the header */
        color: #DDA94B; /* Gold color for text in header */
    }

    .table th, .table td {
        text-align: center; /* Center-align the text */
        padding: 15px; /* Add some padding for better spacing */
        vertical-align: middle; /* Vertically align content */
    }

    .table tbody tr:nth-child(odd) {
        background-color: #f9f9f9; /* Light gray background for odd rows */
    }

    .table tbody tr:hover {
        background-color: #f1f1f1; /* Hover effect for rows */
        cursor: pointer; /* Change cursor to indicate interactivity */
    }

    .table th {
        font-weight: bold; /* Make header text bold */
        text-transform: uppercase; /* Capitalize header text */
    }

    /* Button styles */
    .create-task-btn {
        background-color: #1E4174; /* Set button color to #1E4174 */
        color: #fff; /* White text color */
        padding: 10px 20px; /* Adjust padding */
        width: 100%; /* Make the button fill the entire width */
        text-align: center; /* Center the button text */
        border-radius: 5px; /* Rounded corners for the button */
        font-size: 16px; /* Increase font size */
        transition: background-color 0.3s ease; /* Smooth transition on hover */
        box-shadow: none; /* Remove box shadow */
    }

    .create-task-btn:hover {
        background-color: #DDA94B; /* Change button color on hover */
    }

    /* Add margin-bottom for the content area to ensure space between table and footer */
    .content-area {
        margin-bottom: 50px; /* Add margin at the bottom */
    }

    .card-header {
        display: flex;
        flex-direction: column; /* Stack the elements vertically */
        align-items: flex-start; /* Align the elements to the left */
        padding: 15px 20px;
    }

    .card-header h2 {
        margin: 0; /* Remove any margin around the heading */
    }
</style>

<div class="container mt-5 content-area">
    <h1>Task List</h1>
    
    <!-- Card with Table -->
    <div class="card">
        <div class="card-header">
            <!-- Create New Task Button -->
            <a href="createTask.jsp" class="btn create-task-btn">
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
                    <!-- Dynamically include data rows from the TaskServlet -->
                    <jsp:include page="TaskServlet" />
                </tbody>
            </table>
        </div>
    </div>
</div>
<% 
    String success = request.getParameter("success"); 
    if ("true".equals(success)) { 
%>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        Task created successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<% } %>


<%@ include file="footer.jsp" %>
