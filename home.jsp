<%@ include file="header.jsp" %> <!-- Including header.jsp -->

<!-- Hero Section with Static Background Image -->
<section class="hero-section" style="position: relative; background-image: url('assets/home.jpg'); background-position: center; background-size: cover; background-attachment: fixed; color: white; padding: 120px 0; text-align: left; border-bottom: 10px solid #DDA94B;">
    <!-- Dark overlay for better text visibility -->
    <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0, 0, 0, 0.6);"></div>
    <div class="container" style="position: relative; z-index: 1;">
        <div class="row align-items-center">
            <!-- Left-aligned Text Section -->
            <div class="col-md-6">
                <h1 style="font-size: 3.5rem; font-weight: 700; line-height: 1.2; color: #fff;">Welcome to What-To-Do</h1>
                <p style="font-size: 1.25rem; font-weight: 400; margin-top: 20px; line-height: 1.6; color: #fff;">Your ultimate task management tool to stay organized, productive, and focused every day.</p>
                <div class="mt-4">
                    <!-- Get Started Button -->
                    <a href="index.jsp" class="cta-button" style="background-color: #DDA94B; color: #1E4174; font-size: 1.2rem; padding: 12px 24px; border-radius: 30px; font-weight: 600; transition: background-color 0.3s ease; text-decoration: none; margin-right: 15px;" onmouseover="this.style.backgroundColor='#1E4174'; this.style.color='#fff';" onmouseout="this.style.backgroundColor='#DDA94B'; this.style.color='#1E4174';">
                        Get Started
                    </a>
                    <!-- About Us Button -->
                    <a href="about.jsp" class="cta-button" style="background-color: #1E4174; color: #fff; font-size: 1.2rem; padding: 12px 24px; border-radius: 30px; font-weight: 600; transition: background-color 0.3s ease; text-decoration: none;" onmouseover="this.style.backgroundColor='#DDA94B'; this.style.color='#1E4174';" onmouseout="this.style.backgroundColor='#1E4174'; this.style.color='#fff';">
                        About Us
                    </a>
                </div>
            </div>
            <!-- Right-aligned Empty Space (for balance) -->
            <div class="col-md-6">
                <!-- Empty space for balance and image coverage -->
            </div>
        </div>
    </div>
</section>

<!-- Our Features Section (Moved to Top) -->
<section class="card-section" style="padding: 80px 0; background-color: #20211a;">
    <div class="container">
        <h2 class="card-title" style="font-size: 2.5rem; font-weight: 700; color: #DDA94B; text-align: center; margin-bottom: 40px;">Our Features</h2>
        <div class="row justify-content-center">
            <!-- Feature 1 -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #fff; padding: 30px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                    <div class="text-center mb-4">
                        <i class="fas fa-tasks fa-3x" style="color: #DDA94B;"></i>
                    </div>
                    <h5 class="card-title" style="font-size: 1.5rem; font-weight: 600;">Task Organization</h5>
                    <p class="card-text" style="font-size: 1rem; font-weight: 400;">Easily create, prioritize, and track your tasks to stay organized and focused throughout the day.</p>
                </div>
            </div>
            <!-- Feature 2 -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #fff; padding: 30px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                    <div class="text-center mb-4">
                        <i class="fas fa-sync-alt fa-3x" style="color: #DDA94B;"></i>
                    </div>
                    <h5 class="card-title" style="font-size: 1.5rem; font-weight: 600;">Real-Time Sync</h5>
                    <p class="card-text" style="font-size: 1rem; font-weight: 400;">Access your tasks on multiple devices, with real-time synchronization ensuring you're always up to date.</p>
                </div>
            </div>
            <!-- Feature 3 -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #fff; padding: 30px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                    <div class="text-center mb-4">
                        <i class="fas fa-calendar-check fa-3x" style="color: #DDA94B;"></i>
                    </div>
                    <h5 class="card-title" style="font-size: 1.5rem; font-weight: 600;">Intuitive Calendar</h5>
                    <p class="card-text" style="font-size: 1rem; font-weight: 400;">View and manage your tasks directly on an intuitive, easy-to-use calendar interface.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Customer Reviews Section -->
    <section class="card-section" style="padding: 80px 0; background-color: #DDA94B; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <div class="container">
            <h2 class="card-title" style="font-size: 2.5rem; font-weight: 700; color: #1E4174; text-align: center; margin-bottom: 40px;">Customer Reviews</h2>
            <div class="row justify-content-center">
                <div class="col-md-4 mb-4">
                    <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #20211a; transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                        <div class="card-body">
                            <img src="assets/review2.jpg" class="rounded-circle mb-3" style="width: 80px; height: 80px; object-fit: cover;">
                            <h5 class="card-title" style="font-size: 1.25rem; font-weight: 600; color: #DDA94B;">John Doe</h5>
                            <p class="card-text" style="font-size: 1rem; font-weight: 400; color: #fff;">"What-To-Do has completely transformed the way I organize my tasks. It's intuitive and keeps me on track every day!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #20211a; transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                        <div class="card-body">
                            <img src="assets/review1.jpg" class="rounded-circle mb-3" style="width: 80px; height: 80px; object-fit: cover;">
                            <h5 class="card-title" style="font-size: 1.25rem; font-weight: 600; color: #DDA94B;">Jane Smith</h5>
                            <p class="card-text" style="font-size: 1rem; font-weight: 400; color: #fff;">"I love how easy it is to prioritize tasks and stay productive. Highly recommend this tool for anyone looking to stay organized!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #20211a; transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                        <div class="card-body">
                            <img src="assets/review3.jpg" class="rounded-circle mb-3" style="width: 80px; height: 80px; object-fit: cover;">
                            <h5 class="card-title" style="font-size: 1.25rem; font-weight: 600; color: #DDA94B;">Michael Brown</h5>
                            <p class="card-text" style="font-size: 1rem; font-weight: 400; color: #fff;">"The real-time sync feature is a game-changer. I can keep track of my tasks across devices without any hassle!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #20211a; transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                        <div class="card-body">
                            <img src="assets/review4.jpeg" class="rounded-circle mb-3" style="width: 80px; height: 80px; object-fit: cover;">
                            <h5 class="card-title" style="font-size: 1.25rem; font-weight: 600; color: #DDA94B;">Emily Davis</h5>
                            <p class="card-text" style="font-size: 1rem; font-weight: 400; color: #fff;">"It's exactly what I needed to stay productive. The intuitive design makes it so easy to use!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-lg" style="border-radius: 15px; border: none; background-color: #20211a; transition: transform 0.3s ease, box-shadow 0.3s ease;" onmouseover="this.style.transform='scale(1.05)'; this.style.boxShadow='0 12px 24px rgba(0, 0, 0, 0.15)';" onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 8px rgba(0, 0, 0, 0.1)';">
                        <div class="card-body">
                            <img src="assets/review5.jpg" class="rounded-circle mb-3" style="width: 80px; height: 80px; object-fit: cover;">
                            <h5 class="card-title" style="font-size: 1.25rem; font-weight: 600; color: #DDA94B;">William Johnson</h5>
                            <p class="card-text" style="font-size: 1rem; font-weight: 400; color: #fff;">"I love the clean design and seamless functionality. It makes task management a breeze!"</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


<!-- Back to Top Button -->
<a href="#" id="back-to-top" title="Back to Top" style="display: none;">
    <i class="fas fa-arrow-up"></i>
</a>

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
