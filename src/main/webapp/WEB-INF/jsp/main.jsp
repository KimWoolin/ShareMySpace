<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <title>Main</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <script src="https://storage.googleapis.com/code.getmdl.io/1.0.2/material.min.js"></script>
   <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.2/material.blue-orange.min.css">
   <!--  아이콘 디자인  -->
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   <script src="http://code.jquery.com/jquery-Latest.min.js"></script>	
	<script type="text/javaScript" language="javascript" defer="defer">
	</script>
   <style>
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
            width:1100px; z-index:9999; top:0;margin:auto;}
            h4{color:white; float:left; vertical-align:middle;}
            .menu{float:right;}
            .menu li{float:left;}
            .menu a{line-height:75px; color:white; padding: 0 15px; display: block;}
   
   		.box{
   		width:1100px;
   		margin:0 auto;
          margin-top:3%;
        }
        
        .demo-card-square.mdl-card {
            width: 320px;
            height: 320px;
            float: left;
            margin: 1rem;
            position: relative;
          }
          
          .demo-card-square.mdl-card:hover {
            box-shadow: 5px 20px 10px 1px rgba(0, 0, 0, .14), 0 3px 14px 2px rgba(0, 0, 0, .12), 0 5px 5px -3px rgba(0, 0, 0, .2);
          }
          
          .demo-card-square > .mdl-card__title {
            color: #fff;
            background: black;
          }
          
          .demo-card-square > .mdl-card__accent {
            background: black;
          }
          .img{
          position: relative;
          background-image:url(/resource/res/img/파티룸.jfif);
          width:100%;
          height:100%;
          background-size: cover;
        }
        .img-cover{
          position: absolute;
          height: 100%;
          width: 100%;
          background-color: rgba(0, 0, 50, 0.4);
          z-index: 1;
        }
        .text{
          position:absolute;
          top:50%;
          left:50%;
          transform: translate(-50%,-50%);
          color:white;
          z-index: 2;
          text-align: center;
        }
     </style>
</head>
<body>
		<!-- 메뉴바 -->
		<div class="logo"><img src="/resource/res/img/logo.png"></div><br>
        <header>
            <div class="wrapper2">
                <div></div>
                <h4>MY PAGE</h4>
                <nav>
                    <ul class="menu">
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">SHARING</a></li>
                        <li><a href='/selectSubjectList'>REVIEW</a></li>
                        <li><a href="#">HELP</a></li>
                        <li><a href="#">ABOUT US&nbsp;&nbsp;</a></li>
                    </ul>
                </nav>
            </div>
        </header>

		<!-- 카드형식-->
		<div class = "box">
        <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=회의룸'">
                <img src="/resource/res/img/회의룸.jpg" class="img-cover">
                <div class="text">
                    <h2>회의룸</h2>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
        
        <!-- 카드형식-->
        <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=파티룸';">
                <img src="/resource/res/img/파티룸.jpg" class="img-cover">
                <div class="text">
                    <h2>파티룸</h2>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
          
        <!-- 카드형식 -->
        <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=작업실';">
                <img src="/resource/res/img/작업실.jfif" class="img-cover">
                <div class="text">
                    <h2>작업실</h2>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
        
        <!-- 카드형식 -->
         <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=민박';">
                <img src="/resource/res/img/민박.png" class="img-cover">
                <div class="text">
                    <h2>민박</h2>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
        
        <!-- 카드형식 -->
		<div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=세미나룸';">
                <img src="/resource/res/img/세미나룸.jpg" class="img-cover">
                <div class="text">
                    <h3>세미나룸</h3>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
        
        <!-- 카드형식 -->
       <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=공유주방';">
                <img src="/resource/res/img/공유주방.jfif" class="img-cover">
                <div class="text">
                    <h3>공유주방</h3>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
        
         <!-- 카드형식 -->
       <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=다목적홀';">
                <img src="/resource/res/img/다목적홀.jpg" class="img-cover">
                <div class="text">
                    <h3>다목적홀</h3>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
        
         <!-- 카드형식 -->
       <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=연습실';">
                <img src="/resource/res/img/연습실.jpg" class="img-cover">
                <div class="text">
                    <h2>연습실</h2>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
        
        <div class="mdl-card mdl-shadow--2dp demo-card-square" style="position:relative;z-index:1;">
            <div class="img" onclick="javascript:location.href='/selectSubjectList2?searchKeyword=MT장소';">
                <img src="/resource/res/img/MT장소.jpg" class="img-cover">
                <div class="text">
                    <h3>MT장소</h3>
                </div>
                <div class="img-cover"></div>
            </div>
        </div>
         
    </head>
</body>
</html>