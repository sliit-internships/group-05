<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('../assets/img1.jpg');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}
</style>
<body>

<div class="containerr">
 <h1>Feedback</h1>	
  <form action="Feedback" method="post">
  <div class="row">
    <div class="col-25">
      <label for="fname">Feedback ID</label>
    </div>
    <div class="col-75">
      <input type="text" id="Fid" name="Fid"  required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Customer Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="Fname" name="Fname"  required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Date</label>
    </div>
    <div class="col-75">
      <input type="date" id="Fdate" name="Fdate"  required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="Femail" name="Femail"  required>
    </div>
  </div>
   <div class="row">
    <div class="col-25">
      <label for="lname">Description</label>
    </div>
    <div class="col-75">
      <input type="text" id="Fdes" name="Fdes"  required>
    </div>
  </div>
  
<br>

  <div class="row">
    <input type="submit" value="Submit">
  </div>
  </form>
</div>

</body>
</html>
