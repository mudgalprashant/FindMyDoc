<%-- 
    Document   : index
    Created on : 4 Apr, 2021, 6:31:11 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor-Finder</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;900&family=Ubuntu:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="public/css/style.css">
  <script src="https://use.fontawesome.com/releases/v5.15.2/js/all.js" data-auto-replace-svg="nest"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand" href="#">Doctor-Finder</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav ml-auto ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.jsp"><span>Home</span> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#about-us"><span>About us</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#testimonials"><span>Testimonials</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#social"><span>Contact us</span></a>
                  </li>
                <%
                    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
                %>
                  <li class="nav-item">
                    <a class="nav-link" href="register.jsp"><span>Register</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="login.jsp"><span>Login</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="doc-register.jsp"><span>Register as Doctor</span></a>
                  </li>
                <%} else {
                %>
                <li class="nav-item">
                    <a class="nav-link"><span>Logged in as <%=session.getAttribute("email")%></span></a>
                  </li>
                <li class="nav-item">
                    
                    <form action = "logout.jsp">
                        <span><button class="nav-link btn" type = "submit">Logout</button></span>
                    </form>
                  </li>
                <%
                    if (session.getAttribute("email").toString().equals("admin@gmail.com")) {
                %>
                <li class="nav-item">
                    <a class="nav-link" href = "patients.jsp"><span>View Patients</span></a>
                 </li>
                <%
                    }}
                %>
              </ul>
            </div>
          </nav>
    <section id="heading">
        <div class="heading-class ">
            <h1>Hello Hola   </h1>
            <br>
            <h1>नमस्ते!</h1>
            
        </div>
        <h2 class="heading-h2" >            We believe in reassuring your wellness
        </h2>
        
    </section>
    <section id="about-us">
        <h2 class="about-us-heading">About Us</h2>
        <div class="row">
            <div class="col-lg-4">
                <img src="https://wallpapercave.com/wp/wp2655110.jpg" alt="" srcset="" class="doc-img">
            </div>
            <div class="col-lg-8">
                <h2>Caring for the growing needs of our community.</h2>
                <p class="about-us-p">
                    <strong><em>Best of Care, as close as home...</em></strong>
                    <br>


                    We believe a healthy body is the dweller of a sound mind. India recognized as one of the best healthcare providers in the world. Medical tourism in India includes health care treatments like Oncology, Cosmetic Surgery, Cardiology, Organ Transplant and IVF. It provides contemporary medical treatment by the highly acclaimed medical professionals considering your health and wellness.
    
                </p>
                <p class="about-us-p">
                    If you are ready to go then click button below!.
                </p>
                <form action="/aboutus" method="post">
                    
                    <button type="submit" class="btn btn-primary btn-lg">Read more</button>
                    
                    
                </form>
            </div>
        </div>
    </section>
    <section id="services" style = "margin-top:-200px; margin-bottom: -200px;">
        <h2 class="about-us-heading">services</h2>
        <p class="about-us-p">Book your Appointment</p>


        
        <div class="row">
            <div class="col-lg-6">
                <img src="public/img/book-logo.png" alt="" srcset="" class="book-img">
            </div>
            <div class="col-lg-6">
                <form  action="appointment-handle.jsp" method="post"  >

                    <button type="submit" class="btn btn-primary btn-dark">Find your Doctor here!</button>
                </form>
            </div>
        </div>
        <p class="about-us-p">If you are New User then Register our webpage to know about our services</p>
        
    </section>
      <!-- Testimonials -->

      
      <section id="testimonials">
        <h2 class="about-us-heading">Testimonials</h2>
          
          <div class="testi">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
                <img  class="testo-img " src="https://media-exp1.licdn.com/dms/image/C4D03AQF0hRBfNphoug/profile-displayphoto-shrink_400_400/0/1593172209232?e=1620259200&v=beta&t=HbU0WO9RXkKFodjQQRGeZsIOeNkM5j0CLMnRBF81cZA" alt="" srcset="">
              <h3>Thank you Find your doctor platform for solving my problem i would recommend it to every one .Thank you for such amazing website.</h3>
        <em>AKshay Patidar</em>
        <em>Ujjain</em>
     
             
            </div>
            <div class="carousel-item">
                <img  class="testo-img " src="https://media-exp1.licdn.com/dms/image/C5103AQHV8GK9w43K-Q/profile-displayphoto-shrink_400_400/0/1563116884541?e=1620259200&v=beta&t=F9KuHT9r7KBKrkaCG3y4HwqbwFUNDxej9A_cHSvm4UI" alt="" srcset="">
                <h3>Thank you Find your doctor platform for solving my problem i would recommend it to every one .Thank you for such amazing website.</h3>
        <em>Pratham Kushwah</em>
        <em>Jabalpur</em>
     
              
            </div>
            <div class="carousel-item">
                <img  class="testo-img " src="https://media-exp1.licdn.com/dms/image/C5103AQGMNAfz2jh8Tw/profile-displayphoto-shrink_400_400/0/1545846181158?e=1620259200&v=beta&t=FG4f6uPEgBEWJX8AQWlZYSfTHfaORFYAI_ZFw9trv1w" alt="" srcset="">
                <h3>Thank you Find your doctor platform for solving my problem i would recommend it to every one .Thank you for such amazing website.</h3>
        <em>Prince Patidar</em>
        <em>Indore</em>
     
              
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    
        </div>
        
    
    
    
      </section>
  <section id="social">
    <h2>Contact us</h2>
    <section class="mb-4">
        
        <h5 class="text-center w-responsive mx-auto mb-5 about-us-p"> Please do not hesitate to contact us directly. Our team will come back to you within
            a matter of hours to help you.</h5>
    
        <div class="row">

            <div class="col-md-9 mb-md-0 mb-5">
                <form  action="" method="post"  >

                    <div class="row">
    
                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <input type="text" id="name" name="name" class="form-control" autocomplete="off">
                                <label for="name" class="">Your name</label>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <input type="text" id="email" name="email" class="form-control" autocomplete="off">
                                <label for="email" class="">Your email</label>
                            </div>
                        </div>
    
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="md-form mb-0">
                                <input type="text" id="subject" name="subject" class="form-control" autocomplete="off">
                                <label for="subject" class="">Subject</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-12">
    
                            <div class="md-form">
                                <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                                <label for="message">Your message</label>
                            </div>
    
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Send</button>
    
                </form>
            </div>
            <div class="col-md-3 text-center">
                <ul class="list-unstyled mb-0">
                    <li><i class="fas fa-map-marker-alt fa-2x"></i>
                        <p> SGSITS, Indore</p>
                    </li>
    
                    <li><i class="fas fa-phone mt-4 fa-2x"></i>
                        <p>+91 8718959305</p>
                    </li>
    
                    <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                        <p></p>
                    </li>
                </ul>
            </div>
    
        </div>
    
    </section>
  
            
 
      
    
    </section>
    <footer>
                   
        <div class="icon-div">
            <a href=""><i  class=" icon-img fab fa-github fa-2x"></i></a>
            <a href=""><i class="icon-img fab fa-instagram fa-2x"></i></a>
            <a href=""><i class="icon-img fab fa-facebook-square fa-2x"></i></a>
            <a href=""><i  class="icon-img fab fa-linkedin fa-2x"></i></a>
            <p >
                <!--copyright @SGSITS 2021-->
            </p>

        </div>
    </footer>

    
</body>
</html>
