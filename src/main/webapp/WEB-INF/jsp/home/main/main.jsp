<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- 제이쿼리 불러오기 -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
   <!-- slick 불러오기 -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css"> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"> -->
<!-- 폰트어썸 불러오기 -->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"> -->

<link rel="stylesheet" href="/web/lib2/tmart/css/slider-pro.min.css">
<style>
/* notice */
.notice {position:relative; background-color:#ebebeb;}
#notice_slider {
   overflow:hidden;
   color:#fff;
   height:50px;
   width:1200px !important;
   position:relative;
}
#notice_slider .sp-slide {
   width:100%;
   margin:0 auto;
}
#notice_slider .notice_conts {
   color:#333;
   padding-left:80px;
   display:none;
}
#notice_slider .notice_conts p {
display:table-cell;
text-align:left;
padding-left:35px;
font-weight:bold;
font-size:16px;
background:url("/web/lib2/tmart/css/images/icon-20-error-red.png") no-repeat 0 50%;
line-height:50px;
 /* 공지사항 앞에 이미지 padding-left, background */
}
#notice_slider .notice_conts a {
   display:table-cell;
   padding:0 20px;
   line-height:50px;
   /* background:url("../img/icon/icon-24-more-black.png") no-repeat 100% 50%;
   background-size:15px; 바로가기 화살표 */
   color:#333;
   font-weight:bold;
   font-size:16px;
   text-decoration:underline;
}
#notice_slider.sp-vertical .sp-arrows {left:10px;}
#notice_slider.sp-vertical .sp-arrows button[class*=icon_controls_] {
   width:24px;
   height:50px;
   margin:0;
}
#notice_slider.sp-vertical .sp-arrows button.icon_controls_stop {
   background:url("/web/lib2/tmart/css/images/icon-24-controls-roundborder-pause-black.png") no-repeat 50%;
   background-size:24px;
}
#notice_slider.sp-vertical .sp-arrows button.icon_controls_play {
   background:url("/web/lib2/tmart/css/images/icon-24-controls-roundborder-play-black.png") no-repeat 50%;
   background-size:24px;
}
#notice_slider.sp-vertical .sp-arrows div {
   height:10px;
   width:10px;
   left:35px;
}
#notice_slider.sp-vertical .sp-arrows .sp-previous-arrow {
   background:url("/web/lib2/tmart/css/images/icon-10-arrow-black.png") no-repeat 0 50%;
   transform:rotate(180deg);
   top:auto;
   bottom:13px;
}
#notice_slider.sp-vertical .sp-arrows .sp-next-arrow {
   background:url("/web/lib2/tmart/css/images/icon-10-arrow-black.png") no-repeat 0 50%;
   transform:rotate(360deg);
   bottom:auto;
   top:13px;
}
.notice .notice_inner .pal_close {
  height:100%;
  display:table;
   position:absolute;
   right:15px;
   top:0;
   z-index:1;
}
.notice .notice_inner .pal_close .pal_close_inner {display:table-cell; vertical-align:middle;}
.notice .notice_inner .pal_close .pal_close_inner .control {font-weight:normal !important; font-size:16px; float:left; padding:0 0 0 50px; color:#333; height:50px; line-height:53px; margin-bottom:0 !important;}
.notice .notice_inner .pal_close .pal_close_inner .control .control_indicator {background-color:#fff; height:13px; width:13px; margin:17.5px 25px;}
.control_checkbox .control_indicator:after {left:4px; top:0.5px; width:5px; height:9px;}
.control input:checked ~ .control_indicator {background:#fff; border:none;}
.notice .notice_inner .pal_close .pal_close_inner .control .control_indicator:hover {background-color:rgba(255,255,255,0.8);}
.notice .notice_inner .pal_close .pal_close_inner .icon_15_close_black {
  float:right;
   width:12px;
   height:15px;
   background-size:12px;
   margin:17.5px 0 17.5px 30px;
}
button.icon_15_close_wh {
	background:url("/web/lib2/tmart/css/images/icon-20-close-black.png") no-repeat 50% !important;
	float: right;
    width: 12px;
    height: 15px;
    background-size: 12px;
    margin: 17.5px 0 17.5px 30px;
    display:inline-block;
    vertical-align:middle;
}
.control input {
    position: absolute;
    z-index: -1;
    opacity: 0;
}
input[type="checkbox"] {
	box-sizing: border-box;
    padding: 0;
}
.control_indicator {
    position: absolute;
    left: 0;
    height: 20px;
    width: 20px;
    background: rgba(255,255,255,0);
    border: 1px solid rgba(0,0,0,0.3);
    box-sizing: content-box;
}
.control input:checked ~ .control_indicator {
    background: #fff;
    border: 1px solid #e11d25;
}
.control input:checked ~ .control_indicator {
    background: #fff;
    border:1px solid #e11d25;
}
.control input:checked ~ .control_indicator:after {
    display: block;
}
.control_checkbox .control_indicator:after {
    left: 4px;
    top: 0.5px;
    width: 5px;
    height: 9px;
    border: solid #e11d25;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
}
.control_indicator:after {
    content: '';
    position: absolute;
    display: none;
}
.sp-next-arrow:after, .sp-next-arrow:before, .sp-previous-arrow:after, .sp-previous-arrow:before {display:none;}
button.icon_controls_play {
background:url("/web/hcws/img/icon/icon-12-controls-play-wh-c649a7ca9e7268aaca73e6a1ac2f7711.png") no-repeat 50%;
background-size:12px;
display:none;
}
button.icon_controls_stop {
background:url("/web/hcws/img/icon/icon-12-controls-pause-wh-69afd83f723b2dea947161ade3beaa3e.png") no-repeat 50%;
background-size:12px;
display:none;
}
button[class*=icon_controls_].on {
display:inline-block;
vertical-align:middle;
}
button[class*=icon_controls_].on {
display:inline-block;
vertical-align:middle;
}
</style>
<script src="/web/lib2/tmart/js/jquery.sliderPro.min.js"></script>
<script src="/web/lib2/tmart/js/velocity.js"></script>
<script src="/web/js/home/main/main.js"></script>
<style>
/*  폰트 적용 */
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500&display=swap');

html {
    font-family: "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
body {overflow-y:hidden;}
body, ul, li, h1, h2, h3, h4, h5, p, figure {
    margin:0;
    padding:0;
    list-style:none;
}

a {
    color:inherit;
    text-decoration:none;
}

/* 라이브러리 */
.con {
    margin:0 auto;
}

.img-box > img {
    width:100%;
    display:block;
}

.row::after {
    content:"";
    display:block;
    clear:both;
}

.cell {
    float:left;
    box-sizing:border-box;
}

.cell-right {
    float:right;
    box-sizing:border-box;
}

.margin-0-auto {
    margin:0 auto;
}

.block {
    display:block;
}

.inline-block {
    display:inline-block;
}

.text-align-center {
    text-align:center;
}

.line-height-0-ch-only {
    line-height:0;
}

.line-height-0-ch-only > * {
    line-height:normal;
}

.relative {
    position:relative;
}

.absolute-left {
    position:absolute;
    left:0;
}

.absolute-right {
    position:absolute;
    right:0;
}

.absolute-middle {
    position:absolute;
    top:50%;
    transform:translateY(-50%);
}

.table {
    display:table;
}

.table-cell {
    display:table-cell;
}

input, button, select, fieldset {
    -webkit-border-radius: 0;
    border-radius: 0;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border:0;
    background-color:transparent;
}

fieldset {
    padding:0;
    margin:0;
}

.blind, legend {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    font-size: 12px;
    clip: rect(1px, 1px, 1px, 1px);
}

button {
    cursor:pointer;
    padding:0;
    font-size:inherit;
}

/* 커스텀 */
.con {
    max-width:1440px;
}

.con-min-width {
    min-width:320px;
}

html {
    overflow-x:hidden;
}

/* 메인 배너 슬라이더 */
.slider-wrap {
    position:relative;
}

.main-slider {
    position:relative;
    margin-bottom:0 !important;
}

.main-slider .slide-item .slide-con {
    position:relative;
}

.main-slider .slide-item > .slide-con > .slide-txt {
    position:absolute;
    top:50%;
    transform:translatey(-50%);
    padding-left:10%;
    z-index:50;
}

.main-slider .slide-item-1 > .slide-con > .slide-txt {
    left:50%;
    transform:translatex(-50%);
    padding:0;
    text-align:center;
}

.main-slider .slide-item > .slide-con > .slide-txt > h2.txt-tt {
    font-size:60px;
    font-weight:bold;
}

.main-slider .slide-item > .slide-con > .slide-txt > p.txt-desc {
    font-size:22px;
    font-weight:bold;
    margin-top:16px;
}

.main-slider .slide-item > .slide-con > .slide-txt > .txt-btn {
    margin-top:46px;
}

.main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a {
    font-size:14px;
    display:inline-block;
}

.main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-1 {
    position:relative;
    margin-right:31px;
}

.main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-1::after {
    content:"";
    width:0;
    height:1px;
    position:absolute;
    left:50%;
    bottom:0;
    transform:translatex(-50%);
    background-color:#555;
}

.main-slider .slick-active .slide-item .slide-txt > .txt-btn > a.txt-btn-1::after {
    animation:more-btm-line 1s 1 .2s;
    animation-fill-mode: forwards;
}

.main-slider .slick-active .slide-item .slide-txt > .txt-btn > a.txt-btn-1:hover::after {
    animation:more-btm-line-hover 1s 1;
    animation-fill-mode: forwards;
}

@keyframes more-btm-line {
    0%{
        width:0;
    }
    100%{
        width:100%;
    }
}

@keyframes more-btm-line-hover {
    0%{
        width:0;
    }
    100%{
        width:100%;
    }
}


.main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-2 {
    padding:12px 38px;
    border:1px solid #555;
    border-radius:45px;
    line-height:1;
    letter-spacing:.05rem;
    color:#555;
    transition:all .5s;
}

.main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-2:hover {
    background-color:#555;
    color:#fff;
}

/* 사이드 버튼 */
.main-slider .slick-arrow {
    position:absolute;
    top:50%;
    left:24px;
    transform:translatey(-50%);
    display:block;
    z-index:50;
}

.main-slider .slick-arrow::before {
    content:"";
    display:block;
    width:35px;
    height:55px;
    opacity:1;
}

.main-slider .slick-next {
    left:auto;
    right:24px;
}

.main-slider .slick-prev::before {
    background:url('https://kimyang-sun.github.io/pf-img/samsung-img/arrow_icon_kv_l_b.svg') no-repeat center;
}

.main-slider .slick-next::before {
    background:url('https://kimyang-sun.github.io/pf-img/samsung-img/arrow_icon_kv_r_b.svg') no-repeat center;
}

/* 페이지 버튼 */
.main-slider .slick-dots {
    font-size:0;
    position:absolute;
    left:50%;
    bottom:20px;
    transform:translatex(-50%);
    width:54%;
    z-index:50;
}

.main-slider .slick-dots::after {
    content:"";
    display:block;
    clear:both;
}

.main-slider .slick-dots > li {
    width:20%;
    height:auto;
    padding-left:16px;
    margin:0;
    box-sizing:border-box;
    float:left;
}

.main-slider .slick-dots > li > button {
    width:100%;
    height:2px;
    background-color:rgba(0,0,0,.3);
    outline:none;
    position:relative;
    padding:0;
    color:inherit;
    line-height:normal;
}

.main-slider .slick-dots > li > button::before {
    display:none;
}

.main-slider .slick-dots > li > button > .s-line-fill {
    content:"";
    width:0;
    height:2px;
    background-color:#000;
    position:absolute;
    top:0;
    left:0;
    opacity:1;
}

.slider-wrap .slick-dots .slick-active > button > .s-line-fill {
    animation:slick-progressbar 4s 1;
    animation-fill-mode: forwards;
}

.slider-wrap[data-slick-autoplay-status="N"] .slick-dots .slick-active > button > .s-line-fill {
    animation-play-state:paused;
}

@keyframes slick-progressbar {
    0% {
        width:0%;
    }
    100% {
        width:100%;
    }
}

/* 페이지 버튼 인디케이터 */
.main-slider .slick-dots > li > button > .s-indicator {
    position:absolute;
    left:50%;
    bottom:0;
    transform:translatex(-50%);
    width:110%;
    overflow:hidden;
}

.main-slider .slick-dots > li > button > .s-indicator > .inner-txt {
    font-size:15px;
    font-weight:bold;
    white-space:nowrap;
    display:block;
    width:100%;
    transform:translatey(100%);
    opacity:0;
    transition:all .8s;
}

.main-slider .slick-dots > li > button:hover > .s-indicator > .inner-txt {
    transform:translatey(0);
    opacity:1;
    padding-bottom:5px;
}

/* 오토플레이 버튼 */
.slider-wrap .s-autoplay-btn {
    width:12px;
    height:12px;
    position:absolute;
    left:79%;
    bottom:15px;
    z-index:50;
}

.slider-wrap[data-slick-autoplay-status="Y"] .s-autoplay-btn {
    background:url('https://kimyang-sun.github.io/pf-img/samsung-img/new-home-ico-pause-black.svg') no-repeat;
    background-size:contain;
}

.slider-wrap[data-slick-autoplay-status="N"] .s-autoplay-btn {
    background:url('https://kimyang-sun.github.io/pf-img/samsung-img/new-home-ico-play-black.svg') no-repeat;
    background-size:contain;
}

.slider-wrap .slide-dummy {
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:90%;
}

/* 메인 슬라이더 반응형 */
@media (max-width:1440px){
    .main-slider .slide-item > .slide-con > .slide-txt > h2.txt-tt {
        font-size:3.33vw;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > p.txt-desc {
        font-size:1.25vw;
        margin-top:1vw;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > .txt-btn {
        margin-top:3vw
    }

    .main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-1 {
        font-size:1vw;
        margin-right:2vw;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-2 {
        font-size:0.95vw;
        padding:0.8vw 2.5vw;
    }

    .main-slider .slick-dots > li > button > .s-indicator > .inner-txt {
        font-size:1vw;
    }

    .main-slider .slick-dots > li > button, .main-slider .slick-dots > li > button > .s-line-fill {
        height:0.15vw;
    }

    .main-slider .slick-arrow::before {
        width:2.5vw;
        height:3.8vw;
    }
}

@media (max-width:770px){
    .main-slider .slick-arrow {
        display:none !important;
    }

    .main-slider .slick-dots {
        width:auto;
        background-color:rgba(0,0,0,.5);
        padding:4px 6px;
        padding-right:25px;
        border-radius:45px;
    }

    .main-slider .slick-dots > li {
        width:auto;
        margin:0 7px 0 6px;
        padding-left:0;
    }

    .main-slider .slick-dots > li > button {
        width:8px;
        height:8px;
        border-radius:45px;
        box-sizing:content-box;
        border:1px solid #fff;
        background-color:rgba(0,0,0,0);
    }

    .main-slider .slick-dots .slick-active > button {
        background-color:#fff;
    }

    .main-slider .slick-dots > li > button > .s-line-fill {
        width:0;
        height:1.6vw;
        border-radius:45px;
        visibility:hidden;
    }

    .slider-wrap .s-autoplay-btn {
        width:10px;
        height:10px;
        left:50%;
        bottom:24px;
        margin-left:52px;
    }

    .slider-wrap[data-slick-autoplay-status="Y"] .s-autoplay-btn {
        background:url('https://kimyang-sun.github.io/pf-img/samsung-img/new-home-ico-pause.svg') no-repeat;
        background-size:contain;
    }

    .slider-wrap[data-slick-autoplay-status="N"] .s-autoplay-btn {
        background:url('https://kimyang-sun.github.io/pf-img/samsung-img/new-home-ico-play.svg') no-repeat;
        background-size:contain;
    }

    /* 내부 텍스트 */
    .main-slider .slide-item > .slide-con > .slide-txt {
        padding:0;
        text-align:center;
        top:10%;
        left:50%;
        transform:translatex(-50%);
        width:100%;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > h2.txt-tt {
        font-size:8vw;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > p.txt-desc {
        font-size:3.8vw;
        margin-top:3vw;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > .txt-btn {
        margin-top:5vw;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-1 {
        font-size:3.8vw;
        margin-right:2vw;
    }

    .main-slider .slide-item > .slide-con > .slide-txt > .txt-btn > a.txt-btn-2 {
        font-size:3.8vw;
        margin-top:3vw;
        padding:3.6vw 7.7vw;
    }
}

/* 반응형 라이브러리 */
@media (min-width:771px){
    .only-mobile {
        display:none;
    }
}

@media (max-width:770px){
    .only-pc {
        display:none;
    }
}
</style>


<section class="main-silder-area bg__white">
<!-- 메인 배너 슬라이더 -->
<div class="slider-wrap" data-slick-autoplay-status="Y">
    <div class="slider main-slider custom_slider">
        <div class="slide-item slide-item-1" data-dot-title="갤럭시 Unpacked">
            <div class="slide-con">
                <div class="slide-dummy"></div>
                <div class="slide-txt">
                    <h2 class="txt-tt">Galaxy UNPACKED</h2>
                    <p class="txt-desc">2020년 2월 12일 4AM 삼성닷컴에서 생방송을 만나보세요</p>
                    <div class="txt-btn">
                        <a href="#" class="txt-btn-2">사전판매 알림신청</a>
                    </div>
                </div>
                <picture class="img-box">
<!--                 <iframe class="embed-player slide-media" width="100%" height="528px" src="https://www.youtube.com/embed/QV5EXOFcdrQ?enablejsapi=1&controls=0&fs=0&iv_load_policy=3&rel=0&showinfo=0&loop=1&playlist=QV5EXOFcdrQ&start=0" frameborder="0" allowfullscreen></iframe> -->
                    <source srcset="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_01_mo.jpg" media="(max-width: 770px)">
                    <img src="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_01_pc.jpg" alt="">
                </picture>
            </div>
        </div>
        <div class="slide-item slide-item-2" data-dot-title="그랑데AI">
            <div class="slide-con">
                <div class="slide-dummy"></div>
                <div class="slide-txt">
                    <h2 class="txt-tt">삼성 그랑데 <sup>AI</sup> 런칭</h2>
                    <p class="txt-desc">세탁에서 건조까지 하나되어 맞추다</p>
                    <div class="txt-btn">
                        <a href="http://localhost:8080/home/product/productDetail?productNo=191" class="txt-btn-2">더 알아보기</a>
                    </div>
                </div>
                <picture class="img-box">
                    <source srcset="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_02_mo.jpg" media="(max-width: 770px)">
                    <img src="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_02_pc.jpg" alt="">
                </picture>
            </div>
        </div>
        <div class="slide-item slide-item-3" data-dot-title="갤럭시 북">
            <div class="slide-con">
                <div class="slide-dummy"></div>
                <div class="slide-txt">
                    <h2 class="txt-tt txt-tt-book">갤럭시 북 런칭<br>FlexㅣIon</h2>
                    <p class="txt-desc">가능성으로 빛나는 별의별 이야기와 삼성닷컴 단독 혜택 오픈</p>
                    <div class="txt-btn">
                        <a href="http://localhost:8080/home/product/productDetail?productNo=195" class="txt-btn-2">더 알아보기</a>
                    </div>
                </div>
                <picture class="img-box">
                    <source srcset="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_03_mo.jpg" media="(max-width: 770px)">
                    <img src="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_03_pc.jpg" alt="">
                </picture>
            </div>
        </div>
        <div class="slide-item slide-item-4" data-dot-title="BESPOKE">
            <div class="slide-con">
                <div class="slide-dummy"></div>
                <div class="slide-txt">
                    <h2 class="txt-tt">BESPOKE 냉장고</h2>
                    <p class="txt-desc">가구를 맞추듯 가전을 맞추다</p>
                    <div class="txt-btn">
                        <a href="http://localhost:8080/home/product/productDetail?productNo=178" class="txt-btn-2">더 알아보기</a>
                    </div>
                </div>
                <picture class="img-box">
                    <source srcset="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_04_mo.jpg" media="(max-width: 770px)">
                    <img src="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_04_pc.jpg" alt="">
                </picture>
            </div>
        </div>
        <div class="slide-item slide-item-5" data-dot-title="라이프스타일 TV">
            <div class="slide-con">
                <div class="slide-dummy"></div>
                <div class="slide-txt">
                    <h2 class="txt-tt">New Lifestyle TV</h2>
                    <p class="txt-desc">새로운 라이프 스타일을 스크린에 담다</p>
                    <div class="txt-btn">
                        <a href="http://localhost:8080/home/product/productDetail?productNo=186" class="txt-btn-1">더 알아보기</a>
                        <a href="#" class="txt-btn-2">구매 혜택 보기</a>
                    </div>
                </div>
                <picture class="img-box">
                    <source srcset="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_05_mo.jpg" media="(max-width: 770px)">
                    <img src="https://kimyang-sun.github.io/pf-img/samsung-img/main_bn_05_pc.jpg" alt="">
                </picture>
            </div>
        </div>
    </div>
    <button class="s-autoplay-btn"></button>
</div>
	</section>
<!--         End Feature Product -->

<!--         Start Our Product Area -->
        <section class="htc__product__area ptb--60 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="product-categories-all">
                            <div class="product-categories-title">
                                <h3>Category</h3>
                            </div>
                            <div class="product-categories-menu">
                                <ul>
                                	<li><a data-filter="*"  class="is-checked">전체 상품</a></li>
                                    <li><a data-filter=".cat--1">식품</a></li>
                                    <li><a data-filter=".cat--2">가구</a></li>
                                    <li><a data-filter=".cat--3">패션</a></li>
                                    <li><a data-filter=".cat--4">가전</a></li>
                                    <li><a data-filter=".cat--5">자동차</a></li>
                                    <li><a data-filter=".cat--1">건강</a></li>
                                    <li><a data-filter=".cat--2">데코레이션</a></li>
                                    <li><a data-filter=".cat--3">뷰티</a></li>
                                    <li><a data-filter=".cat--4"> 디지털</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="product-style-tab">
                            <div class="product-tab-list">
                                <ul class="tab-style product-tab-list-btn" role="tablist">
                                    <li class="active">
                                        <a href="#home9" data-toggle="tab">
                                            <div class="tab-menu-text">
                                                <h4> 최신 순 </h4>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#home10" data-toggle="tab">
                                            <div class="tab-menu-text">
                                                <h4> 인기 순 </h4>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <div class="all-product-btn">
                                    <a href="shop-sidebar.html">　</a>
                                </div>
                            </div>
                            <div class="tab-content another-product-style">
                                <div class="tab-pane active" id="home9">
                                    <div class="row">
                                        <div class="product-slider-active2" id = "productListMain">
<!--                                             <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/3.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/4.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/5.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="home10">
                                    <div class="row">
                                        <div class="product-slider-active2" id = "productListHit">
                                            <!--< div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/4.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/5.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/6.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="home11">
                                    <div class="row">
                                        <div class="product-slider-active2">
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/2.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/1.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/5.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="home12">
                                    <div class="row">
                                        <div class="product-slider-active2">
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/9.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/8.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="/web/lib2/tmart/images/product/7.png" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.html"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.html"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.html">Simple Black Clock</a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">$16.00</li>
                                                            <li class="new__price">$10.00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<!--         End Our Product Area -->

		<div class="only-banner bg__white">
            <div class="container">
                <div class="only-banner-img">
                    <img src="/web/lib2/tmart/images/new-product/eventbanner.jpg" alt="new product">
                    <div class="event_tx">
                    	<span>놓칠 수 없는 기회!<br>지금! 당장!!!</span>
                    	<button class="txt-btn-2"><a href='https://forms.gle/Mzvcg9oc2fDLN7hBA' target='_blank'>응모하기</a></button>
                    </div>
                </div>
            </div>
        </div>
<!--         Start Blog Area -->
        <section class="htc__blog__area bg__white pb--130 pt--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title section__title--2 text-center">
                            <h2 class="title__line">월별 이벤트</h2>
                             <nav class="bradcaump-inner">
                             	<span class="breadcrumb-item active">PlanB만의 이벤트! 매달 혜택이 팡팡!! 놓치면 이불을 팡팡!!<br>진행 이벤트 확인하고 놓치지말고, 우리 다같이 이불차지 말아요.</span>
                             </nav>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="blog__wrap clearfix mt--40 xmt-30" id="noticeList">
<!--                         Start Single Blog -->
<!--                         <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="blog-details.html">
                                            <img src="/web/lib2/tmart/images/blog/blog-img/1.jpg" alt="blog images">
                                        </a>
                                        <div class="blog__post__time">
                                            <div class="post__time--inner">
                                                <span class="date">14</span>
                                                <span class="month">sep</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des"><a href="blog-details.html">Lorem ipsum dolor sit consectetu.</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Admin</a></li>
                                                <li>Product</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="blog-details.html">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        End Single Blog
                        Start Single Blog
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="blog-details.html">
                                            <img src="/web/lib2/tmart/images/blog/blog-img/2.jpg" alt="blog images">
                                        </a>
                                        <div class="blog__post__time">
                                            <div class="post__time--inner">
                                                <span class="date">14</span>
                                                <span class="month">sep</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des"><a href="blog-details.html">Lorem ipsum dolor sit consectetu.</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Admin</a></li>
                                                <li>Product</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="blog-details.html">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        End Single Blog
                        Start Single Blog
                        <div class="col-md-4 col-lg-4 hidden-sm col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="blog-details.html">
                                            <img src="/web/lib2/tmart/images/blog/blog-img/3.jpg" alt="blog images">
                                        </a>
                                        <div class="blog__post__time">
                                            <div class="post__time--inner">
                                                <span class="date">14</span>
                                                <span class="month">sep</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog__hover__info">
                                        <div class="blog__hover__action">
                                            <p class="blog__des"><a href="blog-details.html">Lorem ipsum dolor sit consectetu.</a></p>
                                            <ul class="bl__meta">
                                                <li>By :<a href="#">Admin</a></li>
                                                <li>Product</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="blog-details.html">read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
<!--                         End Single Blog -->
                    </div>
                </div>
            </div>
        </section>
        	<!--Start of Tawk.to Script-->
	<script>
// console.clear();

//상단 메인 배너 slick
$('.main-slider').slick({
 dots:true,
 fade:true,
 customPaging: function(slider, i) {
     //console.log($(slider.$slides[i]).html());
     return '<button class="tab"><div class="s-indicator only-pc"><span class="inner-txt">' + $(slider.$slides[i]).find('.slide-item').attr('data-dot-title') + '</span></div><span class="s-line-fill"></span></button>';
 },
});

// $('.main-slider').on('afterChange',function(){
// 	alert("CHANGE")
// });

//마우스 더미에 올렸을 때 멈추도록
$('.slide-dummy, .slide-txt').mouseenter(function() {
 $(this).closest('.slider-wrap').attr('data-slick-autoplay-status', 'N');
});

$('.slide-dummy').mouseleave(function() {
 $(this).closest('.slider-wrap').attr('data-slick-autoplay-status', 'Y');
});

//재생 및 정지 버튼 클릭
$('.s-autoplay-btn').click(function(){
 var $sliderWrap = $(this).parent();

 if ( $sliderWrap.attr('data-slick-autoplay-status') == 'Y' ){
     $sliderWrap.attr('data-slick-autoplay-status', 'N');
 }
 else if ( $sliderWrap.attr('data-slick-autoplay-status') == 'N' ){
     $sliderWrap.attr('data-slick-autoplay-status', 'Y');
 }
})

//progressbar 다 차면 슬라이드 시키기
setInterval(function() {
 $('.slider-wrap > .main-slider').each(function(index, node) {
     var $slider = $(node);

     if ( $slider.parent().attr('data-slick-autoplay-status') !== 'N' ) {
         var width = $slider.find('.slick-dots .slick-active > button > .s-line-fill').css('width');
         var buttonWidth = $slider.find('.slick-dots .slick-active > button').css('width');

         //console.log(width);
         if ( width == buttonWidth ) {
             $slider.slick('slickNext');
         }
     }
 });
}, 500);



</script>
        <!-- End Blog Area -->