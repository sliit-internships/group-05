<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>
    <%@ page import="javax.sql.*" %>     
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supervisor Registration Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 32px;
      color: #fff;
      z-index: 2;
      }
      h2 {
      font-weight: 400;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 50%;
      padding: 20px;
      border-radius: 6px;
      background: rgb(255, 255, 255);
      box-shadow: 0 0 20px 0 #095484; 
      }
      .banner {
      position: relative;
      height: 210px;
      background-image: url("images/Picture13.jpg");  
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder, a {
      color: #095484;
      }
      .item input:hover, .item select:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #095484;
      color: #095484;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #a9a9a9;
      }
      .item i {
      right: 2%;
      top: 30px;
      z-index: 1;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      input[type=checkbox]  {
      display: none;
      }
      label.check {
      position: relative;
      display: inline-block;
      margin: 5px 20px 10px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      span.required {
      margin-left: 0;
      color: red;
      }
      label.check:before {
      content: "";
      position: absolute;
      top: 2px;
      left: 0;
      width: 16px;
      height: 16px;
      border-radius: 2px;
      border: 1px solid #095484;
      }
      input[type=checkbox]:checked + .check:before {
      background: #095484;
      }
      label.check:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 4px;
      width: 8px;
      height: 4px;
      border: 3px solid rgb(255, 255, 255);
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=checkbox]:checked + label:after {
      opacity: 1;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      .btn-next {
      margin-top: 10px;
      text-align: right;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #095484;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #0666a3;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input {
      width: calc(50% - 20px);
      }
      .city-item select {
      width: calc(50% - 8px);
      }
      }
    </style>
  </head>
  <body>
  <div style="background-image:url('images/bg.jpg');">
    <div class="testbox">
      <form action="SupRegister" method="post">
        <div class="banner">
          <h1>Supervisor Details</h1>
        </div>
        
        
        <p>1.Supervisor Name<span class="required"> *</span></p>
          <div class="item">
              <input type="text" name="name" required>
         
          </div>
        
        <div class="item">
          <p>2.Supervisor Email<span class="required"> *</span></p>
            <input type="email" name="email"  required>
        </div>
        
        <div class="item">
          <p>3.Contact number<span class="required"> *</span></p>
             <input type="tel" id="phone" name="number" pattern="[0-9]{10}" required><br>
             <small>Format: 0123456789</small>
        </div>
        
        <div class="item">
          <p>4.Supervisor Title (Organizational Designation)<span class="required"> *</span></p>
            <input type="text" name="title" required>
        </div>
        <div class="item">
        <p>5.Company Name <span class="required"> *</span></p>
				
            <select name="company"id="country"
						 required> 
						 <option value="">None</option>
          <%
							try {
								String Query = "select * from approrved_company";
								Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
								Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
								Statement stmt = conn.createStatement();
								ResultSet rs = stmt.executeQuery(Query);
								while (rs.next()) {
							%>
							
<option><%=rs.getString("Company_Registered_Name")%></option>
							<%
							}
							} catch (Exception ex) {
							ex.printStackTrace();
							}
							%>
					</select>
					
					
        </div>
        
        
       

      <div class="question">
          <p>Your Agreement <span class="required"> *</span></p>
          <div class="question-answer checkbox-item">
            <div>
              <input type="checkbox" value="none" id="check_1" name="check" required/>
              <label for="check_1" class="check"><span>I certify above information is correct and take the full responsibility of the information provided</span></label>
            </div>
          </div>
        </div>
        <div class="btn-block">
          <button type="submit" href="/">Submit</button>
        </div>
        
        
        
        
      </form>
    </div>
  </body>
</html>