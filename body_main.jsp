<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />



<div class="card bg-dark text-black">
    
 
    <img src="image/bimg.png" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">당신 근처의 당근</h5>
    <p class="card-text">출처 : 당근마켓</p>
        
  </div>
  </div>

<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        당신 근처 중고거래
      </a>
      <a href="#" class="list-group-item list-group-item-action">걸어서 10분 알바구하기</a>
      
    </div>

<%! String greeting = "현재 페이지는 상품목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">

                <div class="card bg-dark text-white">
                <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
                <div class="card-img-overlay">
                <h5 class="card-title">아이폰 샘플</h5>
                <p class="card-text">출처 : 구글 검색</p>
                </div>
                </div>
			<h3><%=product.getPname()%></h3>
			<p><%=product.getDescription()%>
			<p><%=product.getUnitPrice()%>원
            <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
    
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
        



<!--<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>	-->