<%@ include file="header.jsp" %>

<style>
    /* Change the background color of the page */
    body {
        background-color: #DDA94B; /* Change to gold */
    }

    /* Add styles for search and filter area */
    .search-filter-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }

    .search-bar {
        width: 60%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    .filter-select {
        width: 35%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        background-color: #fff;
    }

    /* Style the table */
    .table {
        background-color: #fff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
    }

    .table thead {
        background-color: #20211a;
        color: #DDA94B;
    }

    .table th, .table td {
        text-align: center;
        padding: 15px;
        vertical-align: middle;
    }

    .table tbody tr:nth-child(odd) {
        background-color: #f9f9f9;
    }

    .table tbody tr:hover {
        background-color: #f1f1f1;
        cursor: pointer;
    }

    .table th {
        font-weight: bold;
        text-transform: uppercase;
    }

    /* Button styles */
    .create-task-btn {
        background-color: #1E4174;
        color: #fff;
        padding: 10px 20px;
        width: 100%;
        text-align: center;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s ease;
        box-shadow: none;
    }

    .create-task-btn:hover {
        background-color: #DDA94B;
    }

    /* Add margin-bottom for the content area */
    .content-area {
        margin-bottom: 50px;
    }

    /* Pagination Styles */
    #pagination {
        display: flex;
        justify-content: flex-end; /* Align pagination to the right */
        gap: 10px; /* Space between the buttons */
        margin-top: 20px;
    }

    #pagination button {
        padding: 8px 16px;
        border: 1px solid #DDA94B;
        background-color: #fff;
        color: #1E4174;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    #pagination button:hover {
        background-color: #1E4174;
        color: #fff;
    }

    #pagination button.active {
        background-color: #1E4174; /* Dark Blue when active */
        color: #fff;
    }

    #pagination button.active:hover {
        background-color: #DDA94B; /* Change to gold on hover */
    }

    /* Add these styles to the existing CSS */
    .status-pending {
        color: red; /* Red color for Pending */
    }

    .status-completed {
        color: green; /* Green color for Completed */
    }

    /* Back to Top Button */
    #backToTop {
        position: fixed;
        bottom: 20px;
        right: 20px;
        background-color: #1E4174;
        color: #DDA94B;
        padding: 10px 15px;
        border-radius: 50%;
        font-size: 20px;
        display: none; /* Hidden initially */
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    #backToTop:hover {
        background-color: #1E4174;
        color: #fff;
    }

    #backToTop i {
        font-size: 24px; /* Increase icon size */
    }
</style>

<div class="container mt-5 content-area">
    <h1>Task List</h1>
    
    <!-- Search and Filter Section -->
    <div class="search-filter-container">
        <!-- Search Bar -->
        <input 
            type="text" 
            id="searchBar" 
            class="search-bar" 
            placeholder="Search tasks..." 
            onkeyup="filterTable()"
        >
        
        <!-- Filter Dropdown -->
        <select id="filterSelect" class="filter-select" onchange="filterTable()">
            <option value="all">All</option>
            <option value="pending">Pending</option>
            <option value="completed">Completed</option>
        </select>
    </div>
    
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
            <table class="table table-striped" id="taskTable">
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
            
            <!-- Pagination -->
            <div id="pagination"></div>
        </div>
    </div>
    
    <!-- Success Alert -->
    <% 
    String success = request.getParameter("success"); 
    if ("true".equals(success)) { 
    %>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        Task created successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% } %>

    <!-- Update Success Alert -->
    <% 
    String update = request.getParameter("update"); 
    if ("true".equals(update)) { 
    %>
    <div class="alert alert-info alert-dismissible fade show" role="alert">
        Task updated successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% } %>
</div>

<%@ include file="footer.jsp" %>

<!-- Add Font Awesome for Icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<script>
    let currentPage = 1;
    const rowsPerPage = 8;  // Set to display 8 rows per page
    let filteredData = [];

    function filterTable() {
        const searchValue = document.getElementById('searchBar').value.toLowerCase();
        const filterValue = document.getElementById('filterSelect').value.toLowerCase();
        const table = document.getElementById('taskTable');
        const rows = table.getElementsByTagName('tr');
        
        filteredData = [];

        // First, remove status classes from all rows
        for (let i = 1; i < rows.length; i++) {
            const cells = rows[i].getElementsByTagName('td');
            if (cells[3]) { // Status column
                cells[3].classList.remove('status-pending', 'status-completed');
            }
        }

        // Filter the rows based on search and filter values
        for (let i = 1; i < rows.length; i++) {
            const cells = rows[i].getElementsByTagName('td');
            const task = cells[1]?.innerText.toLowerCase() || ''; // Task column
            const status = cells[3]?.innerText.trim().toLowerCase() || ''; // Status column with trimming

            // Check for search and filter conditions
            const matchesSearch = task.includes(searchValue);
            const matchesFilter = (filterValue === 'all') || (status === filterValue);

            // Add the row if it matches both search and filter
            if ((searchValue === '' || matchesSearch) && matchesFilter) {
                // Add class for status color
                if (status === 'pending') {
                    cells[3].classList.add('status-pending'); // Red color for Pending
                } else if (status === 'completed') {
                    cells[3].classList.add('status-completed'); // Green color for Completed
                }
                filteredData.push(rows[i]);
            }
        }

        // Reset pagination to the first page
        currentPage = 1;
        displayPage(currentPage);
    }

    function displayPage(page) {
        const start = (page - 1) * rowsPerPage;
        const end = start + rowsPerPage;

        // Hide all rows first
        const table = document.getElementById('taskTable');
        const rows = table.getElementsByTagName('tr');
        for (let i = 1; i < rows.length; i++) {
            rows[i].style.display = 'none';
        }

        // Display filtered rows based on the page
        for (let i = start; i < end && i < filteredData.length; i++) {
            filteredData[i].style.display = '';
        }

        // Update pagination buttons
        updatePagination();
    }

    function updatePagination() {
        const pageCount = Math.ceil(filteredData.length / rowsPerPage);
        const pagination = document.getElementById('pagination');
        pagination.innerHTML = '';

        // Create pagination buttons
        for (let i = 1; i <= pageCount; i++) {
            const button = document.createElement('button');
            button.textContent = i;
            button.classList.add('page-item');
            if (i === currentPage) {
                button.classList.add('active');
            }
            button.onclick = () => {
                currentPage = i;
                displayPage(currentPage);
            };
            pagination.appendChild(button);
        }
    }

    // Back to Top Button
    window.onscroll = function () {
        const backToTopButton = document.getElementById('backToTop');
        if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
            backToTopButton.style.display = 'block';
        } else {
            backToTopButton.style.display = 'none';
        }
    };

    function scrollToTop() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }

    // Initial display
    filterTable();
</script>

<!-- Back to Top Button -->
<button id="backToTop" onclick="scrollToTop()">
    <i class="fas fa-arrow-up"></i>
</button>

