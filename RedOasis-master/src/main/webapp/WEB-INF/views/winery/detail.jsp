<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와이너리</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
		<style type="text/css">
			 body {
			        font-family: 'Noto Sans KR', sans-serif;
			        background-color: #f5f5f5;
			        color: #333;
			        line-height: 1.6;
			 }
			    #winery-info {
			        background-color: #ffffff;
			        border: 1px solid #ddd;
			        border-radius: 8px;
			        padding: 20px;
			        max-width: 600px;
			        margin: 20px auto;
			        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
			    }
			    #winery-name h1 {
			        color: #700;
			        margin-bottom: 10px;
			    }
			    #winery-info li {
			        list-style: none;
			        margin-bottom: 10px;
			    }
			    .submenu {
			        padding-left: 20px;
			    }
			    .submenu li {
			        list-style-type: circle;
			        color: #555;
			    }
			    a {
			        color: #0073e6;
			        text-decoration: none;
			    }
			    a:hover {
			        text-decoration: underline;
			    }
			@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
			#winery-categori{
        		margin-left: 500px;
        		display: inline;
        	}
        	#back{
        		float: right;
        		margin-right: 500px;
        	}
        	
		    
		    #text{
		    }
		     .card-header {
			     background-color: #ff0000; /* 더 진한 빨간색으로 조정 */
			 }
			 .list-group-item {
			     border-left: 3px solid #ff0000; /* 댓글 항목 왼쪽에 빨간색 테두리 추가 */
			 }
			 .winery-display {
				    display: flex;
				    align-items: flex-start; /* 상단 정렬 */
				    justify-content: center; /* 중앙 정렬 */
				    gap: 20px; /* 사진과 정보 사이의 간격 */
				}
				.winery-image {
					margin-left: 500px;
				    height: 400px; /* 이미지의 세로 크기 */
				    width: 400px; /* 이미지의 가로 크기 */
				    object-fit: cover; /* 이미지 비율 유지하면서 크기 조정 */
				}
			
				/* 와이너리 설명 섹션 스타일 */
				.d-flex.justify-content-center {
				    /* 세로 중앙 정렬이 필요하지 않으므로 align-items는 생략 */
				    background-color: #fff; /* 밝은 배경색 */
				    padding: 40px; /* 내부 여백 */
				    margin: 20px 0; /* 상하 여백 */
				    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
				    border: 2px solid #8B0000; /* 진한 빨간색 테두리 */
				    border-radius: 15px; /* 모서리 둥글게 */
				    width: 700px;
				    display: flex; /* Flexbox 레이아웃 사용 */
				    justify-content: center; /* 가로 방향 가운데 정렬 */
				    margin: 0 auto;
				}
				#winery-description {
				    max-width: 600px; /* 최대 너비 설정 */
				    margin-left: auto;
				    margin-right: auto;
				    /* 필요한 추가 스타일 */
				}
				
				#text {
				    color: #8B0000; /* 진한 빨간색 텍스트 */
				    font-size: 18px; /* 폰트 크기 */
				    line-height: 1.6; /* 줄 간격 */
				}
		</style>
	</head>
	<body>
		<header></header>
		<main>
		<section>
			<span>
				<h5 id="winery-categori">와이너리>상세보기</h5>
			</span>
			<span>
				<button id="back" type="button" class="btn btn-primary" >이전으로</button>
			</span>
		</section>
		<section class="winery-display">
		    <img alt="와이너리" src="../../resources/winery/001.png" class="winery-image">
		    <ul id="winery-info">
		        <li id="winery-name"><h1>${winery.wineryName}</h1></li>
		        <li>주소 : ${winery.wineryAddress}</li>
		        <li>
		            대표 생산 와인
		            <ul class="submenu">
		            <c:forEach items="${madeWines}" var="madeWine" varStatus="i">
		                <li>${madeWine }</li>
		            </c:forEach>
		            </ul>
		        </li>
		        <li>공식 홈페이지 : <a href="${winery.wineryWebAddress}" target="_blank">${winery.wineryWebAddress}</a></li>
		        <li>전화번호 : ${winery.wineryPhone}</li>
		    </ul>
		</section>
		<section class="d-flex justify-content-center">
		    <div id="winery-description">
		        <div id="text">
		            ${winery.wineryDescription}
		        </div>
		    </div>
		</section>
		<section>
			<form action="">
				<div class="container mt-5">
				    <div class="card">
				        <div class="card-header bg-danger text-white">
				            댓글
				        </div>
				        <ul class="list-group list-group-flush">
				            <li class="list-group-item">
				                <h5 class="card-title">작성자: 홍길동</h5>
				                <p class="card-text">너무 유익한 정보네요! 감사합니다.</p>
				                <footer class="blockquote-footer">작성 날짜: 2024년 3월 21일</footer>
				            </li>
				            <!-- 여기에 더 많은 댓글 항목 추가 가능 -->
				        </ul>
				    </div>
						<!-- 댓글 입력창 -->
						<div class="mt-4">
						    <div class="form-group">
						        <label for="commentAuthor">작성자</label>
						        <input type="text" class="form-control" id="commentAuthor" placeholder="이름을 입력하세요">
						    </div>
						    <div class="form-group">
						        <label for="commentContent">댓글</label>
						        <textarea class="form-control" id="commentContent" rows="3" placeholder="댓글을 입력하세요"></textarea>
						    </div>
						    <button class="btn btn-danger" id="submitComment">작성</button>
						</div>
				</div>
			</form>
		</section>
		</main>
		<footer></footer>
		
		<script>
			document.getElementById('back').addEventListener('click', goBack);
			
			function goBack() {
				history.back();
			}
			
			document.getElementById('submitComment').addEventListener('click', function() {
			    var author = document.getElementById('commentAuthor').value;
			    var content = document.getElementById('commentContent').value;
			    console.log('작성자:', author, '내용:', content);
			    
			    // 여기에 서버로 데이터를 전송하는 코드를 추가할 수 있습니다.
			});
		</script>
	</body>
</html>