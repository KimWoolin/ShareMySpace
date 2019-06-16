<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>후기게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> 
<script src="http://code.jquery.com/jquery-Latest.min.js"></script>	
<script type="text/javaScript" language="javascript" defer="defer">
	function fn_select(id){ //읽기
		document.listForm.action ="/boardDetail.do?no="+id;
		document.listForm.submit();
	}
</script>

</head>
<style>
        #wrapper{
            width:1000px;
            margin: 0 auto;
        }
         .logo{
                width: 900px;
                margin:0 auto;
            }

            /*reset*/
            *{margin:0; padding:0;}
            li{list-style:none;}
            a{text-decoration: none;}

            /*common*/
            .wrapper2{width:1000px; margin:auto;}
            .clearfix{content: ''; display: block; clear:both;}

            /*header*/
            header{height: 75px; background-color:rgb(43, 110, 155); border:1px solid rgb(43, 110, 155);
            width:1000px; z-index:9999; top:0;margin:auto;}
            h1{color:white; float:left; vertical-align:middle;}
            .menu{float:right;}
            .menu li{float:left;}
            .menu a{line-height:75px; color:white; padding: 0 15px; display: block;}
            
            
        .demo-card-square.mdl-card {
            width: 1000px;
            height: 300px;
            position: relative;
          }
        .img{
          position: relative;
          background-image:url(/resource/res/img/room.PNG);
          width:100%;
          height:100%;
          background-size: cover;
          z-index: 1;
        }
        .img-cover{
          position: absolute;
          opacity: 2;
          height: 100%;
          width: 100%;
          background-color: rgba(12, 23, 110, 0.4);
          z-index: 1;
        }
        .text{
          position:absolute;
          top:50%;
          left:50%;
          transform: translate(-50%,-50%);
          color:white;
          z-index: 3;
          text-align: center;
        }
        table {
        
            width: 100%;
            border-top: 2px solid #ccc;
            border-collapse: collapse;
        }
        th, td {
            border-bottom: 1px solid #ccc;
            padding: 10px;
            align:center;
         }
	.searchButton {
		background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #c2c2c2));
		background:-moz-linear-gradient(top, #ffffff 5%, #c2c2c2 100%);
		background:-webkit-linear-gradient(top, #ffffff 5%, #c2c2c2 100%);
		background:-o-linear-gradient(top, #ffffff 5%, #c2c2c2 100%);
		background:-ms-linear-gradient(top, #ffffff 5%, #c2c2c2 100%);
		background:linear-gradient(to bottom, #ffffff 5%, #c2c2c2 100%);
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#c2c2c2',GradientType=0);
		background-color:#ffffff;
		-moz-border-radius:10px;
		-webkit-border-radius:10px;
		border-radius:10px;
		border:1px solid #d1d1d1;
		display:inline-block;	
		cursor:pointer;
		color:#666666;
		font-family:Arial;
		font-size:13px;
		padding:6px 13px;
		text-decoration:none;
		text-shadow:0px -50px 0px #ffffff;
		}
		.searchButton:hover {
		background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c2c2c2), color-stop(1, #ffffff));
		background:-moz-linear-gradient(top, #c2c2c2 5%, #ffffff 100%);
		background:-webkit-linear-gradient(top, #c2c2c2 5%, #ffffff 100%);
		background:-o-linear-gradient(top, #c2c2c2 5%, #ffffff 100%);
		background:-ms-linear-gradient(top, #c2c2c2 5%, #ffffff 100%);
		background:linear-gradient(to bottom, #c2c2c2 5%, #ffffff 100%);
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c2c2c2', endColorstr='#ffffff',GradientType=0);
		background-color:#c2c2c2;
		}
		.searchButton:active {
		position:relative;
		top:1px;
		}
        .myButton {
			-moz-box-shadow: 0px 1px 8px 0px #7a8eb9;
			-webkit-box-shadow: 0px 1px 8px 0px #7a8eb9;
			box-shadow: 0px 1px 8px 0px #7a8eb9;
			background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #1d3770), color-stop(1, #5972a7));
			background:-moz-linear-gradient(top, #1d3770 5%, #5972a7 100%);
			background:-webkit-linear-gradient(top, #1d3770 5%, #5972a7 100%);
			background:-o-linear-gradient(top, #1d3770 5%, #5972a7 100%);
			background:-ms-linear-gradient(top, #1d3770 5%, #5972a7 100%);
			background:linear-gradient(to bottom, #1d3770 5%, #5972a7 100%);
			filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#1d3770', endColorstr='#5972a7',GradientType=0);
			background-color:#1d3770;
			-moz-border-radius:10px;
			-webkit-border-radius:10px;
			border-radius:10px;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-size:14px;
			padding:5px 16px;
			text-decoration:none;
		}
		.myButton:hover {
		background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5972a7), color-stop(1, #1d3770));
		background:-moz-linear-gradient(top, #5972a7 5%, #1d3770 100%);
		background:-webkit-linear-gradient(top, #5972a7 5%, #1d3770 100%);
		background:-o-linear-gradient(top, #5972a7 5%, #1d3770 100%);
		background:-ms-linear-gradient(top, #5972a7 5%, #1d3770 100%);
		background:linear-gradient(to bottom, #5972a7 5%, #1d3770 100%);
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5972a7', endColorstr='#1d3770',GradientType=0);
		background-color:#5972a7;
	}
		.myButton:active {
		position:relative;
		top:1px;
	}
</style>
    <body>
        <div id="wrapper" width="1000" >
        
        <!-- 메뉴바 -->
		<div class="logo"><img src="/resource/res/img/logo.png"></div><br>
        <header>
            <div class="wrapper2">
                <div></div>
                <h1>&nbsp;&nbsp;&nbsp;MY PAGE</h1>
                <nav>
                    <ul class="menu">
                        <li><a href='/main'>HOME</a></li>
                        <li><a href="#">SHARING</a></li>
                        <li><a href="#">REVIEW</a></li>
                        <li><a href="#">HELP</a></li>
                        <li><a href="#">ABOUT US&nbsp;&nbsp;</a></li>
                    </ul>
                </nav>
            </div>
        </header>
	
        
        <br><br>
        <!-- 후기 게시판 -->
        <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
                <div class="img" onclick="javascript:location.href='/selectSubjectList';">
                    <div class="text">
                        <h1>후기 게시판</h1>
                    </div>
                    <div class="img-cover"></div>
                </div>
        </div>
            <br><br>
        
       	<!-- 검색 조건 
        <form id="listForm" name="listForm" action="/sample/" method="post">
                <fieldset style="border:2 solid gray; background:#f1f3f5; padding:15px">
                        <b>공간 유형</b>&nbsp;&nbsp;&nbsp;&nbsp;
                        회의룸 <input type="checkbox" name="type" value="회의룸"/>&nbsp;
                        세미나룸 <input type="checkbox" name="type" value="세미나룸" />&nbsp;
                        파티룸 <input type="checkbox" name="type" value="파티룸" />&nbsp;
                        작업실 <input type="checkbox" name="type" value="작업실" />&nbsp;
                        민박 <input type="checkbox" name="type" value="민박" />&nbsp;
                        공유주방 <input type="checkbox" name="type" value="공유주방" />&nbsp;
                        <br><br>
                        <b>예약 유형</b>&nbsp;&nbsp;&nbsp;&nbsp;
                        시간 <input type="checkbox" name="reservation" value="시간" />&nbsp;&nbsp;&nbsp;
                        일 <input type="checkbox" name="reservation" value="일" />&nbsp;&nbsp;&nbsp;
                        월 <input type="checkbox" name="reservation" value="월" />
                        <br><br>
                        <b>주소</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        서울 <input type="checkbox" name="address" value="서울" />&nbsp;
                        경기 <input type="checkbox" name="address" value="경기" />&nbsp;
                        인천 <input type="checkbox" name="address" value="인천" />&nbsp;
                        강원 <input type="checkbox" name="address" value="강원" />&nbsp;
                        대전 <input type="checkbox" name="address" value="대전" />&nbsp;
                        세종 <input type="checkbox" name="address" value="세종" />&nbsp;
                        충청 <input type="checkbox" name="address" value="충청" />&nbsp;
                        부산 <input type="checkbox" name="address" value="부산" />&nbsp;
                        전라 <input type="checkbox" name="address" value="전라" />&nbsp;
                        제주 <input type="checkbox" name="address" value="제주" />
                        <span style="float:right">
                            <button type="submit" align="right" width=120 class="searchButton">검 색</button>&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                </fieldset>
             -->
                
                <br><br>
                
             <!-- 글목록 -->
			<div id="table" class="table" width="830">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					summary="" id="tab">
					<caption style="visibility: hidden"></caption>
					<colgroup>
						<col width="80" />
						<col width="200" />
						<col width="200" />
						<col width="250" />
						<col width="150" />
						<col width="200" />
						<col width="100" />
					</colgroup>
					<tr>
						<th align="center">No</th>
						<th align="center">공간유형</th>
						<th align="center">예약유형</th>
						<th align="center">제목</th>
						<th align="center">글쓴이</th>
						<th align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;날짜</th>
						<th align="center">주소</th>
					</tr>
				<c:forEach var="result" items="${subjectList}" varStatus="status">
					<tr style="cursor:pointer;">
						<td><c:out value="${result.NO}"></c:out></td>
						<td><c:out value="${result.TYPE}"></c:out></a></td>
						<td><c:out value="${result.RESERVATION}"></c:out></td>
						<td><a href="javascript:fn_select(${result.NO})"><c:out value="${result.TITLE}"></c:out></td>
						<td><c:out value="${result.ID}"></c:out></td>
						<td><c:out value="${result.DATE}"></c:out></td>
						<td><c:out value="${result.ADDRESS}"></c:out></td>
					</tr>
				</c:forEach>
				</table>
			</div>   
                
                <!-- 페이징 -->
                <center>
                <div id="paging">
				<a href="#" onclick="; return false;"><image
						src=/resource/res/img/btn_page_pre10.gif border=0 /></a>&#160;<a
					href="#" onclick=""><image
						src=/resource/res/img/btn_page_pre1.gif border=0 /></a>&#160;<strong>1</strong>&#160;<a
					href="#" onclick="">2</a>&#160;<a href="#" onclick="">3</a>&#160;<a
					href="#" onclick="">4</a>&#160;<a href="#" onclick="">5</a>&#160;<a
					href="#" onclick="">6</a>&#160;<a href="#" onclick="">7</a>&#160;<a
					href="#" onclick="">8</a>&#160;<a href="#" onclick="">9</a>&#160;<a
					href="#" onclick="">10</a>&#160;<a href="#" onclick=""><image
						src=/resource/res/img/btn_page_next1.gif border=0 /></a>&#160;<a
					href="#" onclick=""><image
						src=/resource/res/img/btn_page_next10.gif border=0 /></a>&#160; <input
					id="pageIndex" name="pageIndex" type="hidden" value="1" />
				</div>
				</center>
                
                
                <!-- 글 작성-->
                <div align="right">
				<ul>
					<a href="/create"><span class="myButton">등 록</span></a>
				</ul>
				</div>
        <br><br><br>
         </form>
        </div>
    </body>
</html>