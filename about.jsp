<%@ include file="header.jsp" %>

<style>
    /* Change the entire page background color */
    body {
        background-color: #DDA94B; /* Set background color to #DDA94B */
    }

    /* Modern bold font for the title */
    .about-title {
        font-family: 'Arial', sans-serif; /* You can replace this with any modern bold font you prefer */
        font-weight: bold;
        color: black; /* Black color for the About Us title */
    }

    /* Set the color of 'What-To-Do' to #1E4174 */
    .brand-name {
        color: #1E4174; /* Set color to #1E4174 */
        font-weight: bold; /* Bold text for better emphasis */
    }

    /* Change the "How It Works" title text color to black */
    .how-it-works-title {
        color: black; /* Set text color to black */
    }

    /* Add hover effect for cards in "How It Works" section */
    .hover-card {
        transition: transform 0.3s ease, box-shadow 0.3s ease; /* Add transition for smooth hover effect */
    }

    /* On hover, make the card pop out and add a shadow */
    .hover-card:hover {
        transform: translateY(-10px); /* Lift the card */
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2); /* Add a shadow */
    }

    
</style>

<div class="container mt-5">
    <!-- About Us Section -->
    <div class="text-center mb-5">
        <h1 class="display-4 about-title" style="color: #20211a;">About Us</h1>
        <p class="lead mt-3" style="color: #20211a;">
            Welcome to <span class="font-weight-bold brand-name" style="color: #1E4174;">What-To-Do</span>, your ultimate productivity partner! <br>
            Our platform is designed to simplify task management, increase efficiency, and help you stay on top of your goals. Whether you're working on personal tasks, collaborating with a team, or managing a complex project, we are here to help you get things done effortlessly. We believe that great things happen when people can focus on what truly matters - their work and goals.
        </p>
        <div class="card shadow-sm mb-5" style="border-radius: 15px; background-color: #20211a;">
            <img src="https://koblesystems.com/hubfs/Blog/MyTasks_Banner.jpg" class="img-fluid rounded-top" alt="About Us Image">
            <div class="card-body">
                <p style="color: #fff;">
                    <span class="font-weight-bold brand-name" style="color: #DDA94B;">What-To-Do</span> is more than just a tool; it's a comprehensive productivity solution. We have built an intuitive, easy-to-use interface that allows you to organize your to-dos, track progress, and achieve success without feeling overwhelmed. Our features have been crafted with one goal in mind: to help you perform at your best, in both your personal and professional life.
                </p>
                <p style="color: #fff;">
                    At <span class="font-weight-bold brand-name" style="color: #DDA94B;">What-To-Do</span>, we believe that small wins add up to big successes. By breaking down large goals into manageable tasks and tracking progress, you can achieve anything you set your mind to. Join thousands of users who are already making the most of their time and productivity. With <span class="font-weight-bold brand-name" style="color: #DDA94B;">What-To-Do</span>, you will find that success is not a distant dream but a reality within your reach.
                </p>
            </div>
        </div>
    </div>



   <!-- Mission & Vision Section (Side by Side with Split Cards) -->
<div class="row text-center mb-5" style="background-color: #20211a; padding: 40px 20px; border-radius: 15px;">
    <!-- Our Mission Card -->
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm h-100 border-0" style="border-radius: 15px; background-color: #20211a;">
            <div class="card-body">
                <h3 class="font-weight-bold mb-3" style="color: #DDA94B;">Our Mission</h3>
                <p style="color: #FFF;">
                    Our mission is to provide a seamless task management experience that fosters productivity, collaboration, and personal growth. We aim to empower individuals and teams to achieve their goals more efficiently, without the stress of missing deadlines or losing track of tasks. With our platform, we hope to transform how people manage their time and responsibilities, enabling them to work smarter, not harder.
                </p>
            </div>
        </div>
    </div>

    <!-- Our Vision Card -->
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm h-100 border-0" style="border-radius: 15px; background-color: #20211a;">
            <div class="card-body">
                <h3 class="font-weight-bold mb-3" style="color: #DDA94B;">Our Vision</h3>
                <p style="color: #FFF;">
                    Our vision is to create a world where productivity is not a challenge but an empowering, natural part of everyday life. We envision a future where every individual, no matter their role, can manage their tasks effectively, reach their personal and professional goals, and feel confident in their ability to manage time efficiently.
                </p>
            </div>
        </div>
    </div>
</div>


    <!-- How It Works Section -->
    <div class="text-center mb-5">
        <h2 class="how-it-works-title font-weight-bold mb-4">How It Works</h2>
        <div class="row justify-content-center">
            <!-- Create Task Card -->
            <div class="col-md-4 mb-4">
                <div class="card text-center shadow-sm hover-card" style="border-radius: 15px;">
                    <div class="card-body">
                        <i class="fas fa-plus-circle fa-3x mb-3" style="color: #1E4174;"></i>
                        <h5 class="card-title">Create Tasks</h5>
                        <p class="card-text text-muted">Start by creating tasks. You can add a title, description, set a deadline, and even assign priorities to help you stay organized.</p>
                    </div>
                </div>
            </div>

            <!-- Edit & Manage Task Card -->
            <div class="col-md-4 mb-4">
                <div class="card text-center shadow-sm hover-card" style="border-radius: 15px;">
                    <div class="card-body">
                        <i class="fas fa-edit fa-3x mb-3" style="color: #1E4174;"></i>
                        <h5 class="card-title">Edit & Manage Tasks</h5>
                        <p class="card-text text-muted">Modify your tasks at any time. Whether it's changing the due date, updating details, or prioritizing tasks – it's all at your fingertips.</p>
                    </div>
                </div>
            </div>

            <!-- Mark Tasks as Complete Card -->
            <div class="col-md-4 mb-4">
                <div class="card text-center shadow-sm hover-card" style="border-radius: 15px;">
                    <div class="card-body">
                        <i class="fas fa-check-circle fa-3x mb-3" style="color: #1E4174;"></i>
                        <h5 class="card-title">Mark Tasks as Complete</h5>
                        <p class="card-text text-muted">Once you've completed a task, simply mark it as done! This helps you track your progress and stay motivated.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4 justify-content-center">
            <!-- Stay Updated Card -->
            <div class="col-md-4 mb-4">
                <div class="card text-center shadow-sm hover-card" style="border-radius: 15px;">
                    <div class="card-body">
                        <i class="fas fa-sync-alt fa-3x mb-3" style="color: #1E4174;"></i>
                        <h5 class="card-title">Stay Updated</h5>
                        <p class="card-text text-muted">Get real-time updates on task progress and deadlines. You'll never miss an important deadline again!</p>
                    </div>
                </div>
            </div>

            <!-- Delete Task Card -->
            <div class="col-md-4 mb-4">
                <div class="card text-center shadow-sm hover-card" style="border-radius: 15px;">
                    <div class="card-body">
                        <i class="fas fa-trash-alt fa-3x mb-3" style="color: #1E4174;"></i>
                        <h5 class="card-title">Delete Tasks</h5>
                        <p class="card-text text-muted">If a task is no longer relevant, you can easily delete it from your list to keep things clutter-free and organized.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Back to Top Button -->
    <a href="#" id="back-to-top" title="Back to Top" style="display: none;">
        <i class="fas fa-arrow-up"></i>
    </a>
    
</div>

<%@ include file="footer.jsp" %> <!-- Including footer.jsp -->

<!-- Styles -->
<style>
    #back-to-top {
        position: fixed;
        bottom: 20px;
        right: 20px;
        background-color: #1E4174;
        color: #DDA94B;
        border-radius: 50%;
        width: 50px;
        height: 50px;
        text-align: center;
        line-height: 50px;
        font-size: 1.5rem;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        cursor: pointer;
        z-index: 1000;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    #back-to-top:hover {
        background-color: #1E4174;
        color: #fff;
        transform: scale(1.1);
    }
</style>

<!-- Scripts -->
<script>
    // Show/Hide Back to Top Button
    window.addEventListener("scroll", function () {
        const backToTopButton = document.getElementById("back-to-top");
        if (window.scrollY > 300) {
            backToTopButton.style.display = "block";
        } else {
            backToTopButton.style.display = "none";
        }
    });

    // Smooth Scroll to Top
    document.getElementById("back-to-top").addEventListener("click", function (e) {
        e.preventDefault();
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    });
</script>
