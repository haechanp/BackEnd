<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS 파일 경로를 JSP로 변경 -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/main.css">
    <style>
        body {
            margin: 0;
        }
        #head {
            display: flex;
            flex-direction: column;
            padding: 30px;
            padding-left: 20%;
            padding-right: 15%;
            background-color: #1E0304;
            color: white;
            margin-bottom: 0;
        }

        .head_top {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
        }

        .logo, .head_search {
            margin-bottom: 20px;
        }

        .head_menu ul {
            display: flex;
            justify-content: flex-end;
            padding: 0;
            font-size: x-small;
        }

        .head_menu ul li {
            margin-left: 10px;
        }

        .nav {
            background-color: #492324;
        }

        .nav ul {
            padding: 0;
        }

        .nav ul li {
            margin-left: 3%;
        }

        .menu, .nav_bar {
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 10%;
            margin-top: 0;
        }

        li {
            margin: 10px;
        }

        a {
            color: white;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .wine {
            display: flex;
            justify-content: start;
            align-items: flex-start;
            margin-top: 150px;
            justify-content: center;
        }

        #wine_img {
            margin-right: 40px;
        }

        .wine_list {
            display: flex;
            flex-wrap: wrap;
            width: 1100px;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .wine_list li {
            width: 200px;
            height: 320px;
            margin: 9px;
            text-align: center;
        }

        .wine_img {
            margin-bottom: 10px;
        }
    </style>
    <title>메인페이지</title>
</head>
<body>
    <div id="head">
        <div class="head_top">
            <div class="logo">
                <img src="" alt="(로고, 사이트 이름)">
            </div>
            <div class="head_search">
                <form action="">
                    <input id="serch_input" type="text" placeholder="검색어를 입력해주세요.">
                    <button>검색</button>
                </form>
            </div>
            <div class="head_menu">
                <ul class="menu">
                    <li><a href="BYGlogin.jsp">로그인</a></li>
                    <li><a href="insertForm.jsp">회원가입</a></li>     
                    <li><a href="#">즐겨찾기</a></li>
                    <li><a href="#">고객센터</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="nav">
		<ul class="nav_bar">
            <li><a href="#">와인</a></li>
            <li><a href="#">위스키</a></li>
            <li><a href="#">브랜디/꼬냑</a></li>
            <li><a href="#">리큐르/보드카</a></li>
            <li><a href="#">민속주/중국술/사케</a></li>
            <li><a href="#">미니어쳐</a></li>
            <li><a href="#">대량구매 상담</a></li>
            <li><a href="#">고객센터</a></li>
		</ul>
	</div>
    <div class="wine">
        <img src="http://www.kajawine.kr/img/main/main_item_ca10.jpg">
        <ul class="wine_list">
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/1669170019/thumb-7ZS87Lig7ZOo7Ja0_120x166.jpg">
                </div>
                <div class="wine_name">피츠퓨어 크리스마스 에디션</div>
                <div class="wine_price">\40,000</div>
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/9974612171/thumb-67CU67CU66Gc7KCc7YOA_120x166.jpg">
                </div>
                <div class="wine_name">바바 로제타</div>
                <div class="wine_price">\40,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/9704591046/thumb-1879ACabernetSauvignon_120x166.jpg">
                </div>
                <div class="wine_name">1879 A 까베르네 쇼비뇽</div>
                <div class="wine_price">\95,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/8743468680/thumb-7L2U64W47IiY66W067mE7JSo7YG066CI7YOA66mc66Gv_120x166.jpg">
                </div>
                <div class="wine_name">코노수르 비씨클레타 멜롯</div>
                <div class="wine_price">\24,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/8330890014/thumb-7L2U64W47IiY66W067mE7JSo7YG066CI7YOA66as7KCA67iM7ZS864W464iE7JWE_120x166.jpg">
                </div>
                <div class="wine_name">코노수르 비씨클레타 리제르바 피노누아</div>
                <div class="wine_price">\24,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/7719628675/thumb-7719628675_l1_120x166.jpg">
                </div>
                <div class="wine_name">아시에로 쁘띠 쉬라(E.O.S 와이너리)</div>
                <div class="wine_price">\50,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/7536666757/thumb-7536666757_l1_120x166.jpg">
                </div>
                <div class="wine_name">샤또 마니 스위트</div>
                <div class="wine_price">\25,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/7396744846/thumb-7396744846_l1_120x166.jpg">
                </div>
                <div class="wine_name">라 코타 화이트</div>
                <div class="wine_price">\35,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/7394127310/thumb-7394127310_l1_120x166.jpg">
                </div>
                <div class="wine_name">라 코타 레드</div>
                <div class="wine_price">\35,000
            </li>
            <li>
                <div class="wine_img">
                    <img src="http://www.kajawine.kr/data/item/7365621853/thumb-67WI67iM7YG066as7L2U1.5_120x166.jpg">
                </div>
                <div class="wine_name">뵈브 클리코 퐁사르탱 옐로우 라벨</div>
                <div class="wine_price">\250,000
            </li>
        </ul>
    </div>
</body>
</html>