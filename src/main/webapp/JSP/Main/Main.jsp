<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <!-- <meta name="viewport" content="width=1004"> -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="러닝크루">
  <meta property="og:type" content="website">
  <meta  property="og:title" content="러닝">
  <meta property="og:url" content="https://dot386@dot386.dothome.co.kr/html/test/index.html">
  <meta property="og:image" content="/pub/images/og_image.jpg">
  <meta property="og:description" content="러닝크루">
  <title>러닝메이트</title>
  <link rel="icon" href="${pageContext.request.contextPath}/resources/images/common/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="images/common/free-icon-running-7126743.png">

	<!-- js 파일 연결 -->
  <!-- jquery 개발방식에선 js파일을 상단에 연결하여 빠르게 확인되게함 -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/swiper-bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/ui-common.js?v=<?php echo time(); ?>"></script>

  <!-- css 파일 연결 -->
  <link href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/swiper-bundle.min.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/aos.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/list.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/view.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/crew_write.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/detail.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/css/main.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/common.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <!-- php타임스탬프 이용하여 css캐싱방지 -->
</head>
<body>
  <div id="wrap">
    <header id="header">
      <div class="inner">
          <h1 class="logo">
            <a href="Main.jsp">
              <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="러닝메이트">
              <span class="blind">러닝메이트</span>
            </a>
          </h1>
          <nav class="gnb_wrap">
            <ul class="gnb">
              <li>
                <a href="Crew_view.jsp">지역크루</a>
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
                <a href="List_boardcrew.jsp">크루게시판</a>
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
                <a href="List_board.jsp">자유게시판</a>
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
                <a href="#">공지사항</a>
                <ul class="depth2">
                  <li><a href="/company/ceo"></a></li>
                  <li><a href="/company/philosophy"></a></li>
                  <li><a href="/company/business"></a></li>
                  <li><a href="/company/history"></a></li>
                </ul>
              </li>
              <li>
                <a href="List_cs.jsp">고객센터</a>
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
            <a class="login_btn" href="../Login/Login.jsp">로그인</a>  
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
              <a href="Crew_view.jsp">지역크루</a>
              <ul class="depth2">
                <li><a href="/products/sampleCheck.do"></a></li>
                <li><a href="/products/sampleCheck.do"></a></li>
                <li><a href="/products/sampleCheck.do"></a></li>
              </ul>
            </li>
            <li>
              <a href="List_boardcrew.jsp">크루게시판</a>
              <ul class="depth2">
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
              </ul>
            </li>
            <li>
              <a href="List_board.jsp">자유게시판</a>
              <ul class="depth2">
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
              </ul>
            </li>
            <li>
              <a href="#">공지사항</a>
              <ul class="depth2">
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
                <li><a href="/about/greeting.do"></a></li>
              </ul>
            </li>
            <li>
              <a href="List_cs.jsp">고객센터</a>
              <ul class="depth2">
                <li><a href="investment/inquiry.do"></a></li>
                <li><a href="investment/inquiry.do"></a></li>
              </ul>
            </li>
          </ul>
        </div>
      </aside>
    </header>
    <main id="container">
      <section class="main_visual">
      <h2 class="blind">메인슬라이더</h2>
      </section>
      <section class="main_crew">
        <div class="inner">
          <div class="head_wrap">
            <h2 class="main_tit">러닝크루</h2>
            <a class="crew_btn" href="#">크루등록하기</a>
          </div>
          <p class="tit">전국 각지에 흩어진 러닝크루들을 소개합니다.</p>
          <div class="swiper_wrap">
            <div class="swiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <a href="#">
                    <div class="img_wrap">
                      <img src="${pageContext.request.contextPath}/resources/images/main_crew1.jpg" alt="">
                    </div>
                    <div class="txt_wrap">
                      <h3>서울/경기</h3>
                      <p>Sub3</p>
                      <span>목요일<br>PM 7:30</span>
                    </div>
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#">
                    <div class="img_wrap">
                      <img src="${pageContext.request.contextPath}/resources/images/main_crew2.jpg" alt="">
                    </div>
                    <div class="txt_wrap">
                      <h3>서울/경기</h3>
                      <p>Sub3</p>
                      <span>목요일<br>PM 7:30</span>
                    </div>
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#">
                    <div class="img_wrap">
                      <img src="${pageContext.request.contextPath}/resources/images/main_crew2.jpg" alt="">
                    </div>
                    <div class="txt_wrap">
                      <h3>서울/경기</h3>
                      <p>Sub3</p>
                      <span>목요일<br>PM 7:30</span>
                    </div>
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#">
                    <div class="img_wrap">
                      <img src="${pageContext.request.contextPath}/resources/images/main_crew2.jpg" alt="">
                    </div>
                    <div class="txt_wrap">
                      <h3>서울/경기</h3>
                      <p>Sub3</p>
                      <span>목요일<br>PM 7:30</span>
                    </div>
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#">
                    <div class="all_wrap">
                      <img src="${pageContext.request.contextPath}/resources/images/main_crew2.jpg" alt="">
                      <h3>서울/경기</h3>
                      <p>Sub3</p>
                      <span>목요일<br>PM 7:30</span>
                    </div>
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#">
                    <div class="img_wrap">
                      <img src="${pageContext.request.contextPath}/resources/images/main_crew1.jpg" alt="">
                    </div>
                    <div class="txt_wrap">
                      <h3>서울/경기</h3>
                      <p>Sub3</p>
                      <span>목요일<br>PM 7:30</span>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-pagination"></div>
              <div class="swiper-button-prev arrow_btn"></div>
              <div class="swiper-button-next arrow_btn"></div>
            </div>
          </div>
        </div>
      </section>
      <section class="main_info">
        <div class="inner">
          <div class="board">
            <div class="board_list">
              <h2>Q&A</h2>
            </div>
            <ul class="list">
              <li>
                <a href="List_cs_view.jsp">
                  <p>모임 시간 외에 뒤풀이나 번개가 있나요?</p>
                  <span class="date">2024.09.30</span>
                </a>
              </li>
              <li>
                <a href="List_cs_view.jsp">
                  <p>러닝은 처음인데 참여해도 괜찮나요?</p>
                  <span class="date">2024.09.30</span>
                </a>
              </li>
              <li>
                <a href="List_cs_view.jsp">
                  <p>모집기간은 언제인가요? 마감된 모임은 신청할 수 없나요?</p>
                  <span class="date">2024.09.30</span>
                </a>
              </li>
            </ul>
            <a href="List_cs.jsp" class="more_btn">더보기</a>
            <!-- 고객센터로 이동 -->
          </div>
        </div>
      </section>
    </main>
    <footer id="footer">
      <div class="inner">
        <div class="footer_top">
          <h2><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="러닝메이트"></h2>
          <div class="menu">
            <p><a href="#">개인정보처리방침</a></p>
            <p><a href="#">문의하기</a></p>
          </div>
        </div>
        <div class="footer_bottom">
          <h2>
            <span class="blind">러닝크루</span>
          </h2>
          <div class="txt_wrap">
            <p class="address">서울특별시 종로구 삼일대로17길 51<span></span>사업자번호 : 123-45-67890<span></span>대표자 : 김경문</p>
            <p class="copyright">COPYRIGHT © 2024 LX Glas Corp. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>
  </div>
</body>
</html>