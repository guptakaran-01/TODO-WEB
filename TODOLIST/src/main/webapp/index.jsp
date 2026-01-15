<!doctype html>
<html lang="en">
  <head>
   
   
   <%@include file="all_js_css.jsp" %>
   <title>Note Taker</title>
   <style>
        .hero-section {
            min-height: 85vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
        }

        .hero-img {
            max-width: 350px;
        }

        .feature-card {
            transition: transform 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-8px);
        }
    </style>
   
  </head>
    <body>
    
    <div class="container-fluid p-0 m-0">
    <%@include file="Navbar.jsp" %>
    </div>
    
      <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <div class="row align-items-center">

                <!-- Text -->
                <div class="col-md-6 text-center text-md-start">
                    <h1 class="display-4 fw-bold">Note Taker</h1>
                    <p class="lead">
                        A simple and powerful way to write, manage, and organize your notes.
                    </p>
                    <a href="addNote.jsp" class="btn btn-light btn-lg mt-3">
                         Add New Note
                    </a>
                </div>

                <!-- Image -->
                <div class="col-md-6 text-center mt-4 mt-md-0">
                    <img src="img/note.png" class="img-fluid hero-img" alt="Note Image">
                </div>

            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="container my-5">
        <h2 class="text-center mb-4 fw-bold">Why Use Note Taker?</h2>

        <div class="row g-4">

            <div class="col-md-4">
                <div class="card feature-card shadow-sm text-center p-3">
                    <h5 class="fw-bold"> Easy Notes</h5>
                    <p>Create and edit notes quickly with a clean interface.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card shadow-sm text-center p-3">
                    <h5 class="fw-bold"> Organized</h5>
                    <p>Keep all your notes neatly organized in one place.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card shadow-sm text-center p-3">
                    <h5 class="fw-bold"> Fast & Secure</h5>
                    <p>Built using JSP, Hibernate & MySQL for speed and safety.</p>
                </div>
            </div>

        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-light text-center py-3">
        <p class="mb-0">
             2026 Note Taker | Built with using JSP & Bootstrap
        </p>
    </footer>
        
  
  </body>
</html>