<%@ page contentType="text/html;charset=utf-8" %>
<style>
    .navbar-brand {
        color: black; /* 텍스트 색상을 검정색(#000000)으로 지정 */
    }
</style>
<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">C</a>
        생략….       
     </div>
	</div>
    
    <div>
        <a href ="./index.jsp">
        <img src="image\MENU2.png" class="img-fluid" alt="main_image">
        </a>
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./index.jsp">중고거래</a>
            <a class="navbar-brand" href="./index.jsp">동네가게</a>
            <a class="navbar-brand" href="./index.jsp">알바</a>
            <a class="navbar-brand" href="./index.jsp">중고차 직거래</a>
		</div>
	</div>
</nav>