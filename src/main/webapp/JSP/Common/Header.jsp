<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
  <link rel="icon" href="/resources/images/common/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="images/common/free-icon-running-7126743.png">

	<!-- js 파일 연결 -->
  <!-- jquery 개발방식에선 js파일을 상단에 연결하여 빠르게 확인되게함 -->
  <script src="/resources/js/jquery-3.7.1.min.js"></script>
  <script src="/resources/js/jquery-ui.min.js"></script>
  <script src="/resources/js/swiper-bundle.min.js"></script>
  <script src="/resources/js/aos.js"></script>
  <script src="/resources/js/ui-common.js?v=<?php echo time(); ?>"></script>

  <!-- css 파일 연결 -->
  <link href="/resources/css/jquery-ui.min.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="/resources/css/swiper-bundle.min.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="/resources/css/sub.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="/resources/css/main.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
	<link href="/resources/css/common.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
</head>
<body>
<header id="header">
      <div class="inner">
          <h1 class="logo">
            <a href="/JSP/Main/Main.jsp">
              <img src="/resources/images/free-icon-trail-running-3163782.png" alt="러닝메이트">
              <!-- <img src="ProjectRun/src/main/webapp/resources/images/free-icon-trail-running-3163782.png" alt="러닝메이트">  -->
              <span class="blind">러닝메이트</span>
            </a>
          </h1>
          <nav class="gnb_wrap">
            <ul class="gnb">
              <li>
                <a href="/JSP/Main/Crew_view.jsp">지역크루</a>
                <ul class="depth2">
                  <li><a href="/company/ceo"></a></li>
                  <li><a href="/company/philosophy"></a></li>
                  <li><a href="/company/business"></a></li>
                  <li><a href="/company/history"></a></li>
                  <li><a href="/product/list?type=9"></a></li>
                  <li><a href="/product/list?type=9"></a></li>
                  <li><a href="/product/list?type=5"></a></li>
                  <li><a href="/product/list?type=11"></a></li>
                  <li><a href="/product/list?type=7"></a></li>
                </ul>
              </li>
              <li>
<<<<<<< HEAD
                <a href="<%=request.getContextPath() %>/JSP/Main/List_boardcrew.jsp">크루게시판</a>
=======
                <a href="/An_List.an">게시판</a>
                <a href="/JSP/Main/List_boardcrew.jsp">크루게시판</a>
>>>>>>> branch 'function' of https://github.com/hg3017/ProjectRun.git
                <ul class="depth2">
                  <li><a href="/esg/esg"></a></li>
                  <li><a href="/esg/eco"></a></li>
                  <li><a href="/esg/value"></a></li>
                  <li><a href="/esg/global"></a></li>
                  <li><a href="/esg/ethics"></a></li>
                  <li><a href="/esg/contribution"></a></li>
                  <li><a href="/esg/reports"></a></li>
                </ul>
              </li>
              <li>
<<<<<<< HEAD
                <a href="<%=request.getContextPath() %>/JSP/Main/List_board.jsp">자유게시판</a>
=======
                <a href="/Fb_List.free">고객센터</a>
                <a href="/JSP/Main/List_board.jsp">자유게시판</a>
>>>>>>> branch 'function' of https://github.com/hg3017/ProjectRun.git
                <ul class="depth2">
                  <li><a href="/esg/esg"></a></li>
                  <li><a href="/esg/eco"></a></li>
                  <li><a href="/esg/value"></a></li>
                  <li><a href="/esg/global"></a></li>
                  <li><a href="/esg/ethics"></a></li>
                  <li><a href="/esg/contribution"></a></li>
                  <li><a href="/esg/reports"></a></li>
                </ul>
              </li>
              <li>
<<<<<<< HEAD
                <a href="<%=request.getContextPath() %>/An_List.an">공지사항</a>
=======
                <a href="/List">공지사항</a>
>>>>>>> branch 'function' of https://github.com/hg3017/ProjectRun.git
                <ul class="depth2">
                  <li><a href="/company/ceo"></a></li>
                  <li><a href="/company/philosophy"></a></li>
                  <li><a href="/company/business"></a></li>
                  <li><a href="/company/history"></a></li>
                </ul>
              </li>
              <li>
<<<<<<< HEAD
                <a href="<%=request.getContextPath() %>/JSP/Main/List_cs.jsp">고객센터</a>
=======
                <a href="/JSP/Main/List_cs.jsp">고객센터</a>
>>>>>>> branch 'function' of https://github.com/hg3017/ProjectRun.git
                <ul class="depth2">
                  <li><a href="/center/service"></a></li>
                  <li><a href="/center/supply?prod_cat_idx=1"></a></li>
                  <li><a href="/center/cyber"></a></li>
                  <li><a href="/center/safe"></a></li>
                  <li><a href="/support/privacy"></a></li>
                </ul>
              </li>
            </ul>
          </nav>
          <div class="btn_wrap">
            <a class="login_btn" href="/JSP/Login/Login.jsp">로그인</a>  
            <button type="button" class="sitemap_btn">
              <span class="blind">사이트맵 열기</span>
              <i></i>
              <i></i>
              <i></i>
            </button>
          </div>
      </div>
      <aside class="menu_wrap">
        <div class="menu_inner">
          <h2><span class="blind">러닝크루</span></h2>
          <ul class="menu">
            <li>
              <a href="#">회사소개</a>
              <ul class="depth2">
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
              </ul>
            </li>
            <li>
              <a href="#">지역크루</a>
              <ul class="depth2">
                <li><a href="/products/sampleCheck.do"></a></li>
                <li><a href="/products/sampleCheck.do"></a></li>
                <li><a href="/products/sampleCheck.do"></a></li>
              </ul>
            </li>
            <li>
              <a href="/An_List.an">게시판</a>
              <ul class="depth2">
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
              </ul>
            </li>
            <li>
              <a href="/Fb_List.free">고객센터</a>
              <ul class="depth2">
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
              </ul>
            </li>
          </ul>
        </div>
      </aside>
    </header>
</body>
</html>