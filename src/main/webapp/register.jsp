<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Doctor-Finder</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <link rel="stylesheet" href="css/styles.css">
</head>

<body>

<div class="container mt-5">
  <h1>Register</h1>

  <div class="row">
    <div class="col-sm-8">
      <div class="card">
        <div class="card-body">
          <!-- Makes POST request to /register route -->
          <form action="register-handle.jsp" name="f1" method="POST" >
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" class="form-control" name="name"  required >
            </div>
              <div class="form-group">
              <label for="email">Email</label>
              <input type="email" class="form-control" name="email"  required>
            </div>
              <div class="form-group">
              <label for="mobile">Mobile No.</label>
              <input type="text" class="form-control" name="mobile" onblur = "return(validateMobile());" required>
            </div>
              <div class="form-group">
              <label for="address">Address</label>
              <input type="text" class="form-control" name="address">
            </div>
            <div class="form-group">
              <label for="gender">Gender( Choose between 'M' or 'F' or 'T')</label>
              <input type="text" class="form-control" name="gender" onblur="ValidationGender()" required>
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" name="password"  required>
            </div>
              <div class="form-group">
              <label for="password">Confirm Password</label>
              <input type="text" class="form-control" name="password2" onblur = "return(validatePassword());" required>
            </div>
            <button type="submit" class="btn btn-dark">Register</button>
          </form>

        </div>
      </div>
    </div>


  </div>
</div>


<script type="text/javascript" src="validateform.js"></script>
<style>
    body{
        background-color: rgba(200,200,200,1);
    }
</style>
</body>
</html>