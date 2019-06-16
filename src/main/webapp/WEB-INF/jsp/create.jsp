<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE>
<html>
<head>
<title>후기 작성</title>
<script src="http://code.jquery.com/jquery-Latest.min.js"></script>	
<script type="text/javaScript" language="javascript" defer="defer">
function fn_regist(){ //작성
    document.detailForm.action="/registSubject";
    document.detailForm.submit();
    }
</script>
</head>
<style>
        table.table2{
                border-collapse: separate;
                border-spacing: 1px;
                text-align: left;
                line-height: 1.5;
                border-top: 1px solid #ccc;
                margin : 20px 10px;
        }
        table.table2 tr {
                 width: 50px;
                 padding: 10px;
                font-weight: bold;
                vertical-align: top;
                border-bottom: 1px solid #ccc;
        }
        table.table2 td {
                 width: 100px;
                 padding: 10px;
                 vertical-align: top;
                 border-bottom: 1px solid #ccc;
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
 
</style>
<body>
	<div>
        <form id="detailForm" name="detailForm" method = "post" > <!-- action =??로 넘겨서 처리 추가 -->
        <table  style="padding-top:50px" align = center width=700 border=0 cellpadding=2 >
                <tr>
                <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
                </tr>
                <tr>
                <td bgcolor=white>
                <table class = "table2">
                        <tr>
                        <td>공간유형</td>
                        <td><select name='type' value="${type}">
                        	<option value='' selected>-- 선택 --</option>
    						<option value=회의룸>회의룸</option>
   						 	<option value=세미나룸>세미나룸</option>
   				 		  	<option value=파티룸>파티룸</option>
   				 		  	<option value=작업실>작업실</option>
   						 	<option value=민박>민박</option>
   				 		  	<option value=공유주방>공유주방</option>
						</select></td>
                        </tr>
                        
                        <tr>
                        <td>예약유형</td>
                        <td><select name='reservation' value="${reservation}">
   							  <option value='' selected>-- 선택 --</option>
  							  <option value="시간 단위">시간</option>
    						  <option value="일 단위">일</option>
   							  <option value="월 단위">월</option>
						</select></td>
                        </tr>

                        <tr>
                        <td>주소</td>
                       	<td><select name='address' value="${address}">
                        	<option value='' selected>-- 선택 --</option>
    						<option value=서울>서울</option>
   						 	<option value=경기>경기</option>
   				 		  	<option value=인천>인천</option>
   				 		  	<option value=강원>강원</option>
   						 	<option value=대전>대전</option>
   				 		  	<option value=세종>세종</option>
   				 		  	<option value=충청>충청</option>
   				 		  	<option value=부산>부산</option>
   						 	<option value=전라>전라</option>
   				 		  	<option value=제주>제주</option>
						</select></td>
                        </tr>

						<tr>
                        <td>작성자</td>
                        <td><input type=text name=id value="${id}" size=60></td>
                        </tr>

                        <tr>
                        <td>제목</td>
                        <td><input type=text name=title value="${title}" size=60></td>
                        </tr>
 
                        <tr>
                        <td>내용</td>
                        <td><textarea name=contents value="${contents}" cols=85 rows=15></textarea></td>
                        </tr>
                        
                        <tr>
                        <td>이미지</td>
                        <td><input type=button class="searchButton" value=첨부 name=photo size=60></td>
                        </tr>

                        <tr>
                        <td>비밀번호</td>
                        <td><input type=password name=password value="${password}"size=10 maxlength=10></td>
                        </tr>

                        </table>
 
                        <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="javascript:fn_regist()"><span class="searchButton">등 록</span></a> 
                        <input type = "button" class="searchButton" value="목 록" onclick="location.href='/selectSubjectList'">
                        </center>
                </td>
                </tr>
        		</table>
        	</form>
        </div>
</body>
</html>