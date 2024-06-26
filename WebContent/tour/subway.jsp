<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; height:calc(100vh - 158px); }
#page2 { background-color:#ffffff; }
#page3 { background-color:#ececec; }
#page4 { background-color:#ffffff; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="#">이용안내</a></li>
			    <li class="breadcrumb-item active" aria-current="page">지하철 안내</li>
			  </ol>
			</nav>
			<hr>		
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px;margin:15px auto">
			<nav aria-label="breadcrumb d-flex justify-content-between">
			</nav>
			<hr>
			<h3 class="page_title">지하철 안내</h3>
			<div id="contents">
				<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
				    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>   
				  </ol>
				<div class="card-deck">
    <!-- 카드 -->
    <div class="card">
    <div class="card" style="width: 65rem;">
        <img src="${path0 }/imgs/subway.png" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">대전 1호선 지하철</h5>
            <p class="card-text"></p>
        </div>
        </div>
    </div>
    <!-- 여기에 아코디언 추가 -->
	   <div class="accordion" id="accordionBusMap">
	    <div class="card">
	        <div class="card-header" id="headingBusMap">
	            <h2 class="mb-0">
	                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseBusMap" aria-expanded="false" aria-controls="collapseBusMap">
	                    지하철 노선도
	                </button>
	            </h2>
	        </div>
	        <div id="collapseBusMap" class="collapse" aria-labelledby="headingBusMap" data-parent="#accordionBusMap">
	            <div class="card-body">
	                <!-- 버스 지도 이미지 -->
	                  <img src="${path0 }/imgs/subway1.png" class="d-block mx-auto" style="max-width: 5000px;" alt="버스 지도">
	            </div>
	        </div>
	    </div>
	</div>

</div>
</div>
</div>
		</div>
		</section>
		</div>
		</div>
	</section>
</div>

<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
