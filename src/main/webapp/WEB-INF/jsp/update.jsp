<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE>
<html>
<head>
<title>후기 수정</title>
<script src="http://code.jquery.com/jquery-Latest.min.js"></script>	
<script type="text/javaScript" language="javascript" defer="defer">
function fn_regist(){ //작성
    document.detailForm.action="/registSubject";
    document.detailForm.submit();
    }

function fn_update(id){ //수정
	document.detailForm.action = "/modifyBoardDetail.do?no="+id;
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
        <form id="detailForm" name="detailForm" acrion="/sample/" method = "post" > <!-- action =??로 넘겨서 처리 추가 -->
        <table  style="padding-top:50px" align = center width=700 border=0 cellpadding=2 >
                <tr>
                <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
                </tr>
                <tr>
                <td bgcolor=white>
                <table class = "table2">
                		<tr>
                		<td>글번호</td><td><input type=text name=no value="${detailBoard.NO}" size=60 readonly></td>
                		</tr>
                        <tr>
                        <td>공간유형</td>
                        <td><select name='type' value="${detailBoard.type}">
    						<option value=회의룸 <c:if test="${detailBoard.type =='회의룸'}"> selected="selected" </c:if>>회의룸</option>
   						 	<option value=세미나룸 <c:if test="${detailBoard.type =='세미나룸'}"> selected="selected" </c:if>>세미나룸</option>
   				 		  	<option value=파티룸 <c:if test="${detailBoard.type =='파티룸'}"> selected="selected" </c:if>>파티룸</option>
   				 		  	<option value=작업실 <c:if test="${detailBoard.type =='작업실'}"> selected="selected" </c:if>>작업실</option>
   						 	<option value=민박 <c:if test="${detailBoard.type =='민박'}"> selected="selected" </c:if>>민박</option>
   				 		  	<option value=공유주방 <c:if test="${detailBoard.type =='공유주방'}"> selected="selected" </c:if>>공유주방</option>
						</select></td>
                        </tr>
                        
                        <tr>
                        <td>예약유형</td>
                        <td><select name='reservation' value="${detailBoard.reservation}">
  							  <option value="시간 단위" <c:if test="${detailBoard.reservation=='시간 단위'}"> selected="selected" </c:if>>시간</option>
    						  <option value="일 단위" <c:if test="${detailBoard.reservation=='일 단위'}"> selected="selected" </c:if>>일</option>
   							  <option value="월 단위" <c:if test="${detailBoard.reservation=='월 단위'}"> selected="selected" </c:if>>월</option>
						</select></td>
                        </tr>

                        <tr>
                        <td>주소</td>
                       	<td><select name='address' value="${detailBoard.address}">
    						<option value=서울 <c:if test="${detailBoard.address =='서울'}"> selected="selected" </c:if>>서울</option>
   						 	<option value=경기 <c:if test="${detailBoard.address =='경기'}"> selected="selected" </c:if>>경기</option>
   				 		  	<option value=인천 <c:if test="${detailBoard.address =='인천'}"> selected="selected" </c:if>>인천</option>
   				 		  	<option value=강원 <c:if test="${detailBoard.address =='강원'}"> selected="selected" </c:if>>강원</option>
   						 	<option value=대전 <c:if test="${detailBoard.address =='대전'}"> selected="selected" </c:if>>대전</option>
   				 		  	<option value=세종 <c:if test="${detailBoard.address =='세종'}"> selected="selected" </c:if>>세종</option>
   				 		  	<option value=충청 <c:if test="${detailBoard.address =='충청'}"> selected="selected" </c:if>>충청</option>
   				 		  	<option value=부산 <c:if test="${detailBoard.address =='부산'}"> selected="selected" </c:if>>부산</option>
   						 	<option value=전라 <c:if test="${detailBoard.address =='전라'}"> selected="selected" </c:if>>전라</option>
   				 		  	<option value=제주 <c:if test="${detailBoard.address =='제주'}"> selected="selected" </c:if>>제주</option>
						</select></td>
                        </tr>

						<tr>
                        <td>작성자</td>
                        <td><input type=text name=id value="${detailBoard.ID}" size=60></td>
                        </tr>

                        <tr>
                        <td>제목</td>
                        <td><input type=text name=title value="${detailBoard.TITLE}" size=60></td>
                        </tr>
 
                        <tr>
                        <td>내용</td>
                        <td><textarea name=contents cols=85 rows=15>${detailBoard.CONTENTS}</textarea></td>
                        </tr>
                        
                        <tr>
                        <td>이미지</td>
                        <td><input type=button class="searchButton" value=첨부 name=photo size=60></td>
                        </tr>

                        <tr>
                        <td>비밀번호</td>
                        <td><input type=password name=password value="${detailBoard.PASSWORD}"size=10 maxlength=10></td>
                        </tr>

                        </table>
 
                        <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" class="searchButton" value="목 록" onclick="location.href='/selectSubjectList'">
                        <input type="submit" class="searchButton" value="수정" onclick="javascript:fn_update(${detailBoard.NO})">     
                        </center>
                </td>
                </tr>
        		</table>
        	</form>
        </div>
</body>
</html>