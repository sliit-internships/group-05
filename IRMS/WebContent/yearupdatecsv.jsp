<%@ page session = "false" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "jakarta.servlet.*" %>

<%  HttpSession sess=request.getSession(true);%>

<%

if(sess!=null)
{
String resp=null;
PrintWriter outresp=response.getWriter();

resp="<!DOCTYPE html>\r\n" + 
		"<html>\r\n" + 
		"<head>\r\n" + 
		"<title>Bulk</title>\r\n" + 
		"<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n" + 
		"<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\" />\r\n" + 
		"<link rel=\"icon\" type=\"image/ico\" href=\"images/icon.png\" />\r\n" + 
		"<link rel=\"stylesheet\"\r\n" + 
		"	href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n" + 
		"\r\n" + 
		"<script\r\n" + 
		"	src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n" + 
		"<script\r\n" + 
		"	src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\r\n" + 
		"\r\n" + 
		"<script type=\"text/javascript\"\r\n" + 
		"	src=\"https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/xlsx.full.min.js\"></script>\r\n" + 
		"<script type=\"text/javascript\"\r\n" + 
		"	src=\"https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/jszip.js\"></script>\r\n" + 
		"\r\n" + 
		"\r\n" + 
		"<style>\r\n" + 
		".w3-sidebar {\r\n" + 
		"	height: 100%;\r\n" + 
		"	width: 5%;\r\n" + 
		"	position: fixed;\r\n" + 
		"	z-index: 1;\r\n" + 
		"	top: 0;\r\n" + 
		"	left: 0;\r\n" + 
		"	background-color: #08a88d;\r\n" + 
		"	overflow-x: hidden;\r\n" + 
		"	padding: 0px;\r\n" + 
		"	padding-top: 4%;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		".btn {\r\n" + 
		"	background-color: #08a88d;\r\n" + 
		"	color: white;\r\n" + 
		"	padding-left: 0px;\r\n" + 
		"	border: #08a88d;\r\n" + 
		"	margin-bottom: 25px;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		".sidenav .glyphicon {\r\n" + 
		" margin-left: 50%;"+
		  "transform: translateX(-50%);"+
		"	color: white;\r\n" + 
		"	font-size: 20px;\r\n" + 
		" padding-top : 30px;"+
        " padding-bottom : 30px;"+
		"}\r\n" + 
	
		"\r\n" + 
		".dropdown-menu {\r\n" + 
		"	background-color: #c2c2d6;\r\n" + 
		"	font-size: 12x;\r\n" + 
		"	margin-left: -11%;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		".dropdown-menu li {\r\n" + 
		"	padding: 5px 0px;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		".dropdown-menu li a:hover {\r\n" + 
		"	background-color: #ddd;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		".mainpage {\r\n" + 
		"	margin-left: 5%;\r\n" + 
		"	width: 95%;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		"#div1 {\r\n" + 
		"	width: 40%;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		"#div2 {\r\n" + 
		"	width: 100%;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		"@media only screen and (max-width: 600px) {\r\n" + 
		"	.w3-sidebar {\r\n" + 
		"		width: 10%;\r\n" + 
		"	}\r\n" + 
		"	.mainpage {\r\n" + 
		"		margin-left: 10%;\r\n" + 
		"		width: 90%;\r\n" + 
		"	}\r\n" + 
		"	#deldevice{width : 100%;}"+
		"}\r\n" + 
		"\r\n" + 
		"@media only screen and (max-width: 750px) {\r\n" + 
		"	.w3-sidebar {\r\n" + 
		"		width: 5%;\r\n" + 
		"	}\r\n" + 
		"	.mainpage {\r\n" + 
		"		margin-left: 5%;\r\n" + 
		"		width: 90%;\r\n" + 
		"	}\r\n" + 
		"	#deldevice{width : 90%;}"+
		"}\r\n" + 
		"\r\n" + 
		"@media only screen and (max-width: 850px) {\r\n" + 
		"	.w3-sidebar {\r\n" + 
		"		width: 10%;\r\n" + 
		"	}\r\n" + 
		"	.mainpage {\r\n" + 
		"		margin-left: 10%;\r\n" + 
		"		width: 90%;\r\n" + 
		"	}\r\n" + 
		"	#deldevice{width : 90%;}"+
		"}\r\n" + 
		"\r\n" + 
		".dropdown:hover .dropdown-menu {\r\n" + 
		"	display: block;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		"button {\r\n" + 
		"	background: none;\r\n" + 
		"	border: none;\r\n" + 
		"	border: #08A88D 1px solid;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		".btn {\r\n" + 
		"	border: none;\r\n" + 
		"	color: white;\r\n" + 
		"}\r\n" + 
		"\r\n" + 
		"@media only screen and (max-width: 600px) {\r\n" + 
		"	#btn1 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 12px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" + 
		"	#btn2 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 12px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" + 
		"   #btn3 {\r\n" + 
			"		width: 100%;\r\n" + 
			"		font-size: 12px;\r\n" + 
			"		margin-bottom: 5px;\r\n" + 
			"	}\r\n" +
		"}\r\n" + 
		"\r\n" + 
		"@media only screen and (max-width: 750px) {\r\n" + 
		"	#btn1 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 15px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" + 
		"	#btn2 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 15px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" + 
		"	#btn3 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 15px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" +
		"}\r\n" + 
		"\r\n" + 
		"@media only screen and (max-width: 850px) {\r\n" + 
		"	#btn1 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 15px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" + 
		"	#btn2 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 15px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" + 
		"	#btn3 {\r\n" + 
		"		width: 100%;\r\n" + 
		"		font-size: 15px;\r\n" + 
		"		margin-bottom: 5px;\r\n" + 
		"	}\r\n" + 
		"}\r\n" + 
		"</style>\r\n" + 
		"\r\n" + 

		"</head>\r\n" + 
		"<body>\r\n" + 

		"	<!-- Page Content -->\r\n" + 
		"	<div class=\"mainpage\">\r\n" + 
		"		<div class=\"w3-container\">\r\n" + 
		"<br>\r\n" + 
	 


		"\r\n" + 
		"\r\n" + 
		"			<div id=\"div2\" >\r\n" + 
		"					<div class=\"form-group\">\r\n" + 
		"						<label for=\"title\"></label> <input type=\"file\" id=\"fileUpload\"\r\n" + 
		"							name=\"fileUpload\" />\r\n" + 
		"					</div>\r\n" + 
		"					<div class=\"form-group\">\r\n" + 
		"						<input type=\"button\" class=\"btn btn-default form-control\"\r\n" + 
		"							id=\"upload\" value=\"Upload\" style=\"width: 20%;\"\r\n" + 
		"							onclick=\"uploadFile()\" />\r\n" + 
		"					</div>\r\n" + 
		"				<div id=\"dvExcel\"></div>\r\n" + 
		"			</div>\r\n" +
				
		

		"\r\n" + 
		"\r\n" + 
		"			<div id=\"div2\" >\r\n" + 
		"					<div class=\"form-group\">\r\n" + 
		"					<a	href=\"studentDetails.jsp\">\r\n					" +			
		"						<input type=\"button\" class=\"btn btn-default form-control\"\r\n" + 
		
		"							id=\"upload\" value=\"Back\" style=\"width: 20%;\"\r\n" + 
		
		"							 />\r\n" + 
		"						</a>														"+
		
		"					</div>\r\n" + 
		"				<div id=\"dvExcel\"></div>\r\n" + 
		"			</div>\r\n" +

		
		"		</div>\r\n" + 
		"	</div>\r\n" + 
		"\r\n" + 
		"	<script type=\"text/javascript\">\r\n" + 
		"      function uploadFile(){\r\n" + 
		"          //Reference the FileUpload element.\r\n" + 
		"          var fileUpload = $(\"#fileUpload\")[0];\r\n" + 
		"\r\n" + 
		"          //Validate whether File is valid Excel file.\r\n" + 
		"          var regex = /^([a-zA-Z0-9\\s_\\\\.\\-:])+(.xls|.xlsx)$/;\r\n" + 
		"          if (regex.test(fileUpload.value.toLowerCase()))\r\n" + 
		"    {\r\n" + 
		"              if (typeof (FileReader) != \"undefined\") \r\n" + 
		"      {\r\n" + 
		"                  var reader = new FileReader();\r\n" + 
		"\r\n" + 
		"                  //For Browsers other than IE.\r\n" + 
		"                  if (reader.readAsBinaryString)\r\n" + 
		"        {\r\n" + 
		"                      reader.onload = function (e)\r\n" + 
		"          {\r\n" + 
		"                          ProcessExcel(e.target.result);\r\n" + 
		"                      };\r\n" + 
		"                      reader.readAsBinaryString(fileUpload.files[0]);\r\n" + 
		"                  } \r\n" + 
		"        else\r\n" + 
		"        {\r\n" + 
		"                      //For IE Browser.\r\n" + 
		"                      reader.onload = function (e) \r\n" + 
		"          {\r\n" + 
		"                          var data = \"\";\r\n" + 
		"                          var bytes = new Uint8Array(e.target.result);\r\n" + 
		"                          for (var i = 0; i < bytes.byteLength; i++) \r\n" + 
		"            {\r\n" + 
		"                              data += String.fromCharCode(bytes[i]);\r\n" + 
		"                          }\r\n" + 
		"                          ProcessExcel(data);\r\n" + 
		"                      };\r\n" + 
		"                      reader.readAsArrayBuffer(fileUpload.files[0]);\r\n" + 
		"                  }\r\n" + 
		"              }\r\n" + 
		"      else\r\n" + 
		"      {\r\n" + 
		"                  alert(\"This browser does not support HTML5.\");\r\n" + 
		"              }\r\n" + 
		"          } \r\n" + 
		"    else {\r\n" + 
		"              alert(\"Please upload a valid Excel file.\");\r\n" + 
		"          }\r\n" + 
		"      };\r\n" + 
		"      function ProcessExcel(data) {\r\n" + 
		"          //Read the Excel File data.\r\n" + 
		"          var workbook = XLSX.read(data, {\r\n" + 
		"              type: 'binary'\r\n" + 
		"          });\r\n" + 
		"\r\n" + 
		"          //Fetch the name of First Sheet.\r\n" + 
		"          var firstSheet = workbook.SheetNames[0];\r\n" + 
		"\r\n" + 
		"          //Read all rows from First Sheet into an JSON array.\r\n" + 
		"          var excelRows = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[firstSheet]);\r\n" + 
		"    console.log(excelRows);\r\n" + 
		"    console.log(excelRows.length);\r\n" + 
		"          //Create a HTML Table element.\r\n" + 
		"          var table = $(\"<table />\");\r\n" + 
		"          table[0].border = \"1\";\r\n" + 
		"\r\n" + 
		"          //Add the header row.\r\n" + 
		"          var row = $(table[0].insertRow(-1));\r\n" + 
		"\r\n" + 
		"          //Add the header cells.\r\n" + 
		"          var headerCell = $(\"<th />\");\r\n" + 
		"          headerCell.html(\"Company Registered Number\");\r\n" + 
		"          row.append(headerCell);\r\n" + 
		"    \r\n" + 
		"    var headerCell = $(\"<th />\");\r\n" + 
		"          headerCell.html(\"Company NAME\");\r\n" + 
		"          row.append(headerCell);\r\n" + 
		"    \r\n" + 
		"    var headerCell = $(\"<th />\");\r\n" + 
		"          headerCell.html(\"Company Address\");\r\n" + 
		"          row.append(headerCell);\r\n" + 
		"    var headerCell = $(\"<th />\");\r\n" + 
		"          headerCell.html(\"Company Start Date\");\r\n" + 
		"          row.append(headerCell);\r\n" + 

		"\r\n" + 
		"          //Add the data rows from Excel file.\r\n" + 
		"          for (var i = 0; i < excelRows.length; i++) {\r\n" + 
		"              //Add the data row.\r\n" + 
		"              var row = $(table[0].insertRow(-1));\r\n" + 
		"\r\n" + 
		"              //Add the data cells.\r\n" + 
		"              var cell = $(\"<td />\");\r\n" + 
		"              cell.html(excelRows[i].id);\r\n" + 
		"              row.append(cell);\r\n" + 
		"\r\n" + 
		"              cell = $(\"<td />\");\r\n" + 
		"              cell.html(excelRows[i].name);\r\n" + 
		"              row.append(cell);\r\n" + 
		"\r\n" + 
		"              cell = $(\"<td />\");\r\n" + 
		"              cell.html(excelRows[i].email);\r\n" + 
		"              row.append(cell);\r\n" + 
		"      cell = $(\"<td />\");\r\n" + 
		"              cell.html(excelRows[i].year);\r\n" + 
		"              row.append(cell);\r\n" + 
		"      \r\n" + 
	
		"          }\r\n" + 
		"\r\n" + 
		"          var dvExcel = $(\"#dvExcel\");\r\n" + 
		"          dvExcel.html(\"\");\r\n" + 
		"          dvExcel.append(table);\r\n" + 
		"       \r\n" + 
		"          \r\n" + 
		"          $.post(\"xlsheet\",\r\n" + 
		"          	    {\r\n" + 
		"          	      excel : JSON.stringify(excelRows)\r\n" + 
		"          	    },\r\n" + 
		"          	    function(data,status){\r\n" + 
		"          	      alert(data);\r\n" + 
		"          });          \r\n" + 
		"      };\r\n" + 
		"      \r\n" + 
		
		"      \r\n" + 
		"      </script>\r\n" + 
		"</body>\r\n" + 
		"</html>";
		
outresp.print(resp);
}
else
{
	response.sendRedirect("login.html");
}


%>

