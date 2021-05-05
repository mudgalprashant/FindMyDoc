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
  <h1>Register As Doctor</h1>

  <div class="row">
    <div class="col-sm-8">
      <div class="card">
        <div class="card-body">

          <!-- Makes POST request to /register route -->
          <form action="doc-register-handle.jsp" method="POST">
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" class="form-control" name="name" required>
            </div>
              <div class="form-group">
              <label for="name">Email</label>
              <input type="email" class="form-control" name="email" required>
            </div>
              <div class="form-group">
              <label for="name">Mobile No.</label>
              <input type="text" class="form-control" name="mobile" required>
            </div>
              <div class="form-group">
              <label for="name">Address</label>
              <input type="text" class="form-control" name="address">
            </div>
            <div class="form-group">
              <label for="email">Gender</label>
              <input type="text" class="form-control" name="gender" required>
            </div>
              <div class="form-group">
              <label for="email">Age</label>
              <input type="number" class="form-control" name="age" required>
            </div>
              <div class="form-group">
              <label for="name">Specialization</label>
              <input type="text" class="form-control" name="spec" required>
            </div>
              <div class="form-group">
              <label for="email">Degree(s)</label>
              <input type="text" class="form-control" name="degree" required>
            </div>
              <div class="form-group">
              <label for="email">Experience (in Years)</label>
              <input type="number" class="form-control" name="experience">
            </div>
            <button type="submit" class="btn btn-dark">Register</button>
          </form>

        </div>
      </div>
    </div>
     <div class="col-sm-4" float="left">
      <div class="card">
        <div class="card-body">
          <img src="https://wallpapercave.com/wp/wp2655110.jpg" width="100%" height="550px">
        </div>
      </div>
    </div>

  </div>
</div>



</body>
</html>