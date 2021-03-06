<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
   <link rel="stylesheet" href="sub_style.css" type="text/css">
           <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
   
<title>login_form</title>

<style type="text/css">
a{
	text-decoration:none;
	color:black;
}

.artist{
	height: 47%;
	vertical-align: bottom;
}

.title{
	height: 30px;
	font-size: 20pt;
	font-weight: bold;
	vertical-align: top;
}

.b_play{
	width: 100px;	
}

#header intput[type=search]{
	margin-top:10;
}
	
.page{
	height: 100%;
	vertical-align: top;
	text-align: center;
}

.page a{
	text-decoration: none;
}
	
input[type=text]{
    border: none;
    border-bottom: 2px solid black;
    width: 300;
    height: 30;
}

input[type=password]{
    border: none;
    border-bottom: 2px solid black;
    width: 300;
    height: 30;
}


</style>

</head>
<body>
<div id="line"></div>
    
       <div id="header">
           <li class="home">
           <a href="index.html"><img src="main_logo.png"></a></li>
           <li class="left">
           <li class="left"><a href="http://70.12.109.117:8888/Day20/top10.do?action=chartList">CHARTS</a></li>
            <li class="left"><form method="get" action="/search" id="search">
            <input name="q" type="search" size="50" placeholder="Search for artists, bands, tracks"/></li>
        </form>
           </li>
         
        <c:if test="${empty sessionScope.loginId }">
        <li class="right"><a href="http://70.12.109.117:8888/Day20/join_form1.jsp"><button>JOIN US</button></a></li>
        <li class="right"><a href="login_form.jsp">LOGIN</a></li>
                 </c:if>
         <c:if test="${not empty sessionScope.loginId }">
        <li class="right"><a href="logout.jsp">LOGOUT</a></li>
        <li class="right"><a href="http://70.12.109.117:8888/Day20/upload_form.jsp">UPLOAD</a></li>

        </c:if>
       </div>
    

<div id="wrap">
<br><br><br><br><br><br><br>
<div class="page">
<c:if test="${empty sessionScope.loginId}">
	<form action="member.do" method="post">
		ID <input type="text" name="id" size="20"><br>
		PW <input type="password" name="password" size="20"><br>
		<input type="hidden" name="action" value="login">
		<input type="submit" value="로그인">
	</form>	
</c:if>

<c:if test="${not empty sessionScope.loginId }">
	${sessionScope.loginId}님 반갑습니다.<br>
<!-- 	<input type="button" value="logout" onclick="location.href='member.do?action=logout'"> -->
		<form method="post" action="member.do?action=logout">
		<input type="submit"  value="로그아웃">
		</form>
		
</c:if>
</div>
    </div>

</body>
</html>