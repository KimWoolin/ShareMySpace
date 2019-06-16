<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<title>내용 보기</title>

<script src="http://code.jquery.com/jquery-Latest.min.js"></script>	
<script type="text/javaScript" language="javascript" defer="defer">
	function fn_delete(id){ //삭제
		document.detailForm.action = "/deleteBoardDetail.do?no="+id;
		document.detailForm.submit();
	}
	function fn_select(id){ //수정할 글로 이동
		document.detailForm.action ="/boardDetail?no="+id;
		document.detailForm.submit();
	}
</script>
</head>
<style>

		#wrapper{
            width:1000px;
            margin:auto;
        }
        
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
                 width: 1000;
                 padding: 10px;
                 text-align: left;
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
	<div class="wrapper">
	
	  <form id="detailForm" name="detailForm" method="post">
		<table  style="padding-top:50px" align = center width=1000 border=0 cellpadding=2 >
                <tr>
                <td height=20 align= center bgcolor=#ccc><font color=white>내 용</font></td>
                </tr>
                <tr>
                <td bgcolor=white>
                <table class = "table2">
                <tr>
    			<td>제목</td><td>${detailBoard.TITLE}</td>
     			</tr>
     			<tr>
    			<td>작성자</td><td>${detailBoard.ID}</td>
     			</tr>
     			<tr>
    			<td>공간 유형</td><td>${detailBoard.TYPE}</td>
     			</tr>
     			<tr>
    			<td>예약 유형</td><td>${detailBoard.RESERVATION}</td>
     			</tr>
     			<tr>
    			<td>내용</td><td>${detailBoard.CONTENTS}</td>
     			</tr>
    	</table>
                <tr>
      <td width="0">&nbsp;</td>
                   <td width="399" colspan="2" height="200">
                </tr>
    	 <tr height="1" bgcolor="#dddddd"><td></td></tr>
    	 <tr><td align=center><br>
			<input type=button class="searchButton" value="목록" onClick="location.href='/selectSubjectList'">
			<input type=button class="searchButton" value="수정" onClick="javascript:fn_select(${detailBoard.NO})">
			<input type=button class="searchButton" value="삭제" onClick="javascript:fn_delete(${detailBoard.NO})">
			</td>
		 </tr>
  		  </table>
  		  </form>
        </div>
</body>
</html>