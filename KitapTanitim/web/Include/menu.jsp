
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.menu ul {
   margin:0;
   padding:0;
   list-style:none;
   width:200px;
   }
.menu li {
   position:relative;
   background-color:"red";}
.menu li ul {
   position:absolute;
   list-style:none;
   left:199px;
   width:150px;
   display:none;
   top:0; }
   .menu li ul li ul {
   position:absolute;
   list-style:none;
   left:149px;
   width:160px;
   display:none;
   top:0; }
.menu li a { 
   display:block;
   text-decoration:none;
   color:black;
   background-color:#999999;
   font:bold 20px ;
   padding:15px;
   border:1px solid "red" "italic";
   border:1px solid white; 
   -webkit-border-radius: 10px;
   -moz-border-radius: 10px;
    border-radius: 10px;}
.menu li a:hover{
   background-color:"red";
   color:red;
   border:"red" 5px solid;
   background-color:#333;
   color:#F0F;
   }
   ul.menu li {
    margin: 0 0 .5em 0;
    border: 5px solid red;
}
li:hover ul {
   display:block;
   }
   li ul li:hover ul {display:block;}
* html ul li {
   float:left;
   height:1%; }
</style>
</head>
<body background="Images/kitap.jpg">
<div class="menu">
<ul>
<li ><a href="giris.jsp">Anasayfa</a></li>
<li><a href="#">Kitap Çeşitleri</a>
   <ul>
   <li><a href="./menujsp/macera.jsp">Macera Kitapları</a></li>
   <li><a href="./menujsp/gerilim.jsp">Gerilim Kitapları</a></li>
   <li><a href="./menujsp/bilim.jsp">Bilim Kitapları</a></li>
   <li><a href="./menujsp/cizgi.jsp">Çizgi Roman Kitapları </a></li>
   <li><a href="./menujsp/siir.jsp">Şiir Kitapları</a></li>
   <li><a href="./menujsp/tarih.jsp">Tarihi Kitaplar</a></li>
   </ul>
   <li ><a href="kayitislem.jsp">Kayıt Ol</a></li>
   <li><a href="iletisim.jsp">İletişim</a>
   <li><a href="hakkımızda.jsp">Hakkımızda</a></li>
 
</div>
	
</body>
</html>

