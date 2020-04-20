<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.io.FileInputStream"%>
<%@page import="jxl.Workbook"%>
<%@page import="jxl.Sheet"%> <html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard Project</title>
<style>
*{
margin:0px;
padding:0px;
}
.menu{
background-image:url('download.jpg');
background-size: 100%,150%;
width:100%;
height :100%;
}
.leftmenu{
width:25%;
line-height:80px;
float:left;
}
.rightmenu{
width:75px;
height:100px;
float:right;

}
.rightmenu ul li {
font-family:'Montserrat',sans-serif;
display:inline-block;
list-style:none;
font-size:15px;
color:white;
font-weight:bold;
line-height:100px;
margin-left:40px;
}
h1   {color: blue;
         font-size: 30px;}
p {
   color: red;
  font-family: Quire Sans;
  
  
}

#table1 {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 40%;
}

#table1 td, #table1 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#table1 tr:nth-child(even){background-color: #f2f2f2;}

#table1 tr:hover {background-color: #ddd;}

#table1 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}


</style>
</head>
<body>
     <div class="menu">

<div class ="leftmenu">
<img alt="logo" src="Acc_Logo_Black_Purple_RGB_calogo_0.png" width="130" height="30%"/>

</div>
<div class ="rightmenu">
<ul>
<li>home</li>
<!-- <li>ASIS Training materials</li> -->

</ul>
</div>
<h1 style="text-align: Center;"> Accenture <br>
Scientific Informatics Services</h1>

</div>

<div class="text1: right;">
<p>
     The Strategic intent behind ASIS is to harness synergies between lab answers and accenture
     to create a world class research ,scientific and lab consulting and technology organization.
</p>
<p>
   The world's leading,vendor-independent scientific informatics consultancy.
   </p>
  

</div>
     
    <table id ="table1" border="" width="100%">

 
<%
try{


  String FilePath = "C:\\Users\\Chaithra.govindan\\Documents\\Clients.xls";
 //  String FilePath = Common_Things.document_upload_path+"/"+name;

FileInputStream fs = new FileInputStream(FilePath);
Workbook wb = Workbook.getWorkbook(fs);
 
// TO get the access to the sheet
Sheet sh = wb.getSheet("Sheet1");

// To get the number of rows present in sheet
int totalNoOfRows = sh.getRows();

// To get the number of columns present in sheet
int totalNoOfCols = sh.getColumns();

for (int row = 0; row < 8000; row++) {


%>
<tr>

<%
for (int col = 0,i=0; col < totalNoOfCols; col++) {
//out.println(sh.getCell(col, row).getContents()+ "" );
//System.out.println(""+totalNoOfCols);
%>


<%
if(col==i){ i++;
%>
<td>
<%=sh.getCell(col, row).getContents() %>
</td>
<% 
}
%>  


<% 

}
%>
</tr>
<%

}
}catch (Exception e) {
System.out.println(e);
}

%>

</table> 
    </body>
</html>
