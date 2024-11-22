<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>What-To-Do</title>
    <!-- Google Fonts for Modern Typography -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
    <style>
        /* Custom styling for the header */
        body {
            font-family: 'Poppins', sans-serif; /* Apply Poppins font globally */
            margin: 0;
            padding: 0;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #20211a; /* Dark background color for the navbar */
            padding: 8px 0; /* Reduced padding to make the navbar shorter */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
        }

        .navbar-brand {
            font-weight: 600;
            font-size: 1.4rem; /* Slightly smaller title text */
            color: #FBEAEB; /* Light text color */
            display: flex;
            align-items: center;
            transition: color 0.3s ease;
        }

        .navbar-brand:hover {
            color: #FFD700; /* Gold hover color */
        }

        .navbar-brand img {
            height: 35px; /* Adjusted logo size for smaller navbar */
            margin-right: 12px; /* Space between logo and text */
        }

        /* Navbar links */
        .navbar-nav .nav-link {
            color: #DDA94B !important; /* Light gold color */
            font-weight: 500;
            font-size: 1.1rem; /* Slightly larger text for navigation */
            margin-right: 20px;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .navbar-nav .nav-link:hover {
            color: #FFD700 !important; /* Lighter gold color on hover */
            text-decoration: none;
            transform: translateY(-3px); /* Small hover effect for a dynamic feel */
        }

        /* Mobile Menu Button */
        .navbar-toggler {
            border-color: #DDA94B; /* Light gold border for toggler */
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28128,128,128,1%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        /* Adjusting Navbar Items for Larger Screens */
        @media (min-width: 992px) {
            .navbar-nav {
                margin-left: auto; /* Aligns the nav items to the right */
            }
        }
    </style>
</head>
<body>
    <header>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <!-- Logo and Brand Name -->
                <a class="navbar-brand" href="home.jsp">
                    <img src="assets/logo.png" alt="What-To-Do Logo"> <!-- Ensure the logo is in the correct path -->
                    What-To-Do
                </a>
                <!-- Mobile Menu Toggle -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Navbar Links -->
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto"> <!-- Aligns the links to the right -->
                        <li class="nav-item">
                            <a class="nav-link" href="home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Task List</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Include Bootstrap JS and Popper.js (make sure these are at the end) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    
</body>
</html>
