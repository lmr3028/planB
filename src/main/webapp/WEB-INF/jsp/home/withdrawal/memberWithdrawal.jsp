<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>

<style>
/* body {
  width: 100vw;
  height: 100vh;
  background: #fefefe;
  color: #373737;
  margin: 0;
  padding: 0;
  background: #3a5e77;
  background: linear-gradient(45deg, #3a5e77 32%, #617E92 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr="#3a5e77", endColorstr="#617E92", GradientType=1 );
}

* {
  box-sizing: border-box;
  font-family: "Cabin", Arial, sans-serif;
}

.container {
  width: 600px;
  -webkit-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  top: 50%;
  left: 50%;
  margin: 0;
  position: absolute;
  background: #fefefe;
  display: -webkit-box;
  display: flex;
  -webkit-box-align: center;
          align-items: center;
  -webkit-box-pack: start;
          justify-content: flex-start;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
          flex-direction: column;
  padding-bottom: 30px;
  box-shadow: 5px 10px 40px 0 rgba(0, 0, 0, 0.2);
  border-radius: 5px;
} */
.ht__bradcaump__wrap {height:160px; margin-top:50px;}
svg {
  max-width: 450px;
  position: relative;
  left: 50%;
  transform:translateX(-50%);
  margin: 0 auto;
}

.bottom {
  text-align: center;
  margin-top: 0em;
  max-width: 70%;
  position: relative;
  margin: 0 auto;
}
.bottom h2 {
  font-family: "Rokkitt", sans-serif;
  letter-spacing: 0.05em;
  font-size: 30px;
  line-height: 1.2;
  text-align: center;
  margin: 0 auto 0.25em;
}
.bottom p {
  color: #777;
  letter-spacing: 0.1em;
  font-size: 16px;
  line-height: 1.4;
  margin: 0 auto 2em;
}

.buttons {
  width: 100%;
  display: -webkit-box;
  display: flex;
  -webkit-box-pack: center;
          justify-content: center;
  flex-wrap: wrap;
  -webkit-box-align: center;
          align-items: center;
}
.buttons button {
  padding: 10px 30px;
  font-size: 20px;
  background-color: rgba(54, 108, 243, 1);
  border: 0;
  cursor: pointer;
  border-radius: 4px;
  letter-spacing: 0.1em;
  color: #ffffff;
  margin-right: 20px;
  margin-bottom: 15px;
  -webkit-transition: all 0.25s ease-in-out;
  transition: all 0.25s ease-in-out;
}
.buttons button:hover {
/*   background-color: #cf3799; */
  box-shadow: 0px 9px 16px 0px rgba(89, 29, 241, 0.25) !important;
}
.buttons button#cancel {
  margin-right: 0;
  color: #333;
  background-color: #ffffff;
  box-shadow: 0px 4px 16px 0px rgba(153, 153, 153, 0.15)
}
.buttons button#cancel:hover {
/*   background-color: #dbbed7; */
   box-shadow: 0px 9px 16px 0px rgba(153, 153, 153, 0.25) !important;
  background-color: transparent;
  border-color: transparent;
}
.buttons button#go-back {
  display: none;
}
.buttons button#go-main {
  display: none;
}
.buttons button:focus {
  border: none;
  outline: 0;
}

#blob-3,
#blob-2,
#mouth-happy,
#mouth-sad,
#eyebrow-happy-left,
#eyebrow-happy-right,
#eyes-laughing,
#open-mouth,
#tongue,
#mouth-scared {
  display: none;
}

@media (max-width: 699px) {
  .container {
    width: 90%;
  }

  .bottom {
    margin-top: 1em;
    max-width: 90%;
  }
}
@media (max-width: 399px) {
  .container {
    padding: 20px;
  }

  .bottom h2 {
    font-size: 24px;
  }

  .buttons {
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
            flex-direction: column;
  }
  .buttons button {
    margin-right: 0;
  }

  svg {
    padding-top: 0;

  }
}

</style>
<script>
/* function goodBy(){
	location.href="/home/mmember/myDelete";
}

function goBack() {
    window.history.back();
} */
</script>

<!-- <h2> memberWithdrawal.jsp 페이지</h2>
	<button onclick="goodBy()"> 탈퇴 </button>
	<button onclick="goBack()"> 취소 </button>
 -->

 <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0)  no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">마이페이지</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="/home/mmember/myPage">마이페이지</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">회원탈퇴</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<section class="htc__choose__us__ares bg__white">
            <div class="container-fluid container">
                <div class="row mb--100">
	<div class="container">
	<div class="inner-container">
<svg id="svg" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 590 484.7">
  <g id="blobs">
    <path id="blob-1" d="M545.5,299c0,80.3-28.6,150.4-126.4,139.4-63.2-7.1-109.3-37.3-142.6-37.3-45.7,0-105.4,29.3-146.8,22.2-69-11.7-85.3-66.8-85.3-135.8,0-56.3,25.5-99.9,46.2-140.8,18.3-36.1,55.9-97.8,125.1-100.5,53.3-2.1,97.4,50.5,138.4,74.2,49.9,28.8,98.4-1.8,126,1.3C537.9,127.9,545.5,265.5,545.5,299Z" fill="#ddf1fa"/>
    <path id="blob-3" d="M55.1,300.7c0,80.3,27.4,150.4,121,139.4,60.5-7.1,104.7-37.3,136.5-37.3,43.8,0,100.9,29.3,140.5,22.2,66-11.7,81.7-66.8,81.7-135.8,0-56.3-16.2-103.6-36.1-144.5-17.6-36.1-54.9-97.4-121.2-100.1-51-2.1-100.1,53.8-139.4,77.5-47.8,28.8-94.3-1.8-120.7,1.3C62.4,129.6,55.1,267.1,55.1,300.7Z" fill="#ddf1fa"/>
  </g>
  <g id="confetti" class="confetti">
    <rect x="284" y="230.4" width="17.7" height="17.67" rx="4" ry="4" fill="#3a5e77"/>
    <rect x="284" y="230.4" width="17.7" height="17.67" rx="4" ry="4" fill="#3a5e77"/>
    <rect x="285.4" y="231.7" width="17.7" height="17.67" rx="4" ry="4" fill="#fff"/>
    <rect x="285.4" y="231.7" width="17.7" height="17.67" rx="4" ry="4" fill="#fff"/>
    <rect x="285.4" y="230.1" width="17.7" height="17.67" rx="4" ry="4" fill="#617E92"/>
    <rect x="285.4" y="230.1" width="17.7" height="17.67" rx="4" ry="4" fill="#617E92"/>
    <rect x="285.4" y="231.7" width="17.7" height="17.67" rx="4" ry="4" fill="#a9ddf3"/>
    <rect x="285.4" y="231.7" width="17.7" height="17.67" rx="4" ry="4" fill="#a9ddf3"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#3a5e77"/>
    <circle cx="294.1" cy="243.6" r="12" fill="none" stroke="#fff" stroke-miterlimit="10" stroke-width="2"/>
    <circle cx="294.2" cy="243.6" r="12" fill="#fff"/>
    <circle cx="294.2" cy="243.6" r="12" fill="none" stroke="#fff" stroke-miterlimit="10" stroke-width="2"/>
    <circle cx="294.2" cy="243.6" r="12" fill="none" stroke="#617E92" stroke-miterlimit="10" stroke-width="2"/>
    <circle cx="294.2" cy="243.6" r="12" fill="none" stroke="#617E92" stroke-miterlimit="10" stroke-width="2"/>
    <circle cx="295.9" cy="242.1" r="12" fill="none" stroke="#3a5e77" stroke-miterlimit="10" stroke-width="2"/>
    <circle cx="295.9" cy="242.1" r="12" fill="none" stroke="#3a5e77" stroke-miterlimit="10" stroke-width="2"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#617E92"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#617E92"/>
    <circle cx="292.9" cy="241.3" r="9.7" fill="#fff"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#617E92"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#3a5e77"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#617E92"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#3a5e77"/>
    <circle cx="294.1" cy="241.3" r="9.7" fill="#3a5e77"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#a9ddf3"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#3a5e77"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#617E92"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#a9ddf3"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#fff"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#3a5e77"/>
    <path d="M300.9,243.1l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.1Z" fill="#617E92"/>
    <path d="M300.9,243.1l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.1Z" fill="#a9ddf3"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#3a5e77"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#617E92"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#a9ddf3"/>
    <path d="M300.9,243.2l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.2Z" fill="#fff"/>
    <path d="M300.9,243.1l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.1Z" fill="#617E92"/>
    <path d="M300.9,243.1l-3-3a1.5,1.5,0,0,1,0-2.1l3-3a2,2,0,0,0,.3-2.5,1.9,1.9,0,0,0-2.9-.3l-3.1,3.1a1.5,1.5,0,0,1-2.1,0l-3-3a2,2,0,0,0-2.5-.3,1.9,1.9,0,0,0-.3,2.9l3.1,3.1a1.5,1.5,0,0,1,0,2.1l-3,3a2,2,0,0,0-.3,2.5,1.9,1.9,0,0,0,2.9.3l3.1-3.1a1.5,1.5,0,0,1,2.1,0l3.1,3.1a1.9,1.9,0,0,0,2.9-.3A2,2,0,0,0,300.9,243.1Z" fill="#a9ddf3"/>
  </g>
  <g id="envelope">
    <path id="Background" d="M452.9,376.3a26.1,26.1,0,0,1-25.5,20.8H162.6a26.1,26.1,0,0,1-26-26V193.2a26.1,26.1,0,0,1,26-26H427.4a26.1,26.1,0,0,1,26,26V371.1a25.9,25.9,0,0,1-.5,5.2" fill="#617E92" stroke="#3a5e77" stroke-miterlimit="10" stroke-width="5"/>
    <g id="paper-group">
      <rect id="paper" x="157.3" y="87.6" width="275.3" height="266.33" rx="26" ry="26" fill="#fff" stroke="#3a5e77" stroke-miterlimit="10" stroke-width="5"/>
      <g id="face">
        <g id="mouth">
          <path id="mouth-scared" d="M275,220a18.7,18.7,0,0,1,35.9.1" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
          <path id="mouth-sad" d="M258.8,231.9c3.9-14.5,17.7-25.2,34-25.2s30.3,10.8,34.1,25.4" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
          <path id="mouth-worry" d="M271.1,218.7c10-11.1,28.2-15,43.6-9.4" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
          <path id="mouth-happy" d="M259.3,207c3.9,14.5,17.7,25.2,34,25.2s30.3-10.8,34.1-25.4" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
          <g id="mouth-laughing">
            <path id="open-mouth" d="M323.8,208.3c3.9,0,6.7,3.9,5.9,7.9a37.5,37.5,0,0,1-73.5,0c-0.9-4.1,2-7.9,5.9-7.9h61.7Z" fill="#3a5e77" opacity="0.98"/>
            <path id="tongue" d="M293.2,241.1c6.9,0,13.1-2.3,17.3-5.9a2.1,2.1,0,0,0,.5-2.6c-3.1-5.8-9.9-9.8-17.8-9.8s-14.7,4-17.8,9.8a2.1,2.1,0,0,0,.5,2.5C280,238.8,286.2,241.1,293.2,241.1Z" fill="#617E92"/>
          </g>
        </g>
        <g id="eye-group">
          <g id="eyes" class="eyes">
            <ellipse id="eye-right" cx="349" cy="172.8" rx="11.2" ry="13.8" fill="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5" />
            <ellipse id="eye-left" cx="235.5" cy="172.8" rx="11.2" ry="13.8" fill="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5" />         <path id="eyebrow-sad-right" d="M341.9,133.7c2.6,5.3,14.8,14.1,24.3,14.7" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
            <path id="eyebrow-sad-left" d="M240.7,133.7c-2.6,5.3-14.8,14.1-24.3,14.7" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>

          </g>
          <g id="eyes-laughing">
     <path id="eye-laughing-right" d="M332.2,174c0-8.3,7.5-15,16.8-15s16.8,6.7,16.8,15" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
            <path id="eye-laughing-left" d="M218.7,174c0-8.3,7.5-15,16.8-15s16.8,6.7,16.8,15" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
          </g>
          <g id="eyebrows-happy">
            <path id="eyebrow-happy-right" d="M366.2,146.3c-2.6-5.3-14.8-14.1-24.3-14.7" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
            <path id="eyebrow-happy-left" d="M216.4,146.3c2.6-5.3,14.8-14.1,24.3-14.7" fill="none" stroke="#3a5e77" stroke-linecap="round" stroke-miterlimit="10" stroke-width="5"/>
          </g>
        </g>
      </g>
    </g>
    <path id="back" d="M451.9,186.7S322.4,288.2,313.4,294.1s-27,5.8-36.9,0S137.9,186.5,137.9,186.5a23.6,23.6,0,0,0-1.3,6.7V371.1a26.1,26.1,0,0,0,26,26H427.4a26,26,0,0,0,26-26V193.2C453.4,190.7,452.5,188.9,451.9,186.7Z" fill="#a9ddf3" stroke="#3a5e77" stroke-miterlimit="10" stroke-width="5"/>
    <g id="shadow">
      <path id="shadow-3" d="M263.3,279.7s11.3-8.1,13.1-9.3c9.9-6.5,27-5.8,36.9,0,1.7,1,13.5,9.3,13.5,9.3" fill="none" stroke="#ddf1fa" stroke-linejoin="bevel" stroke-width="7"/>
      <path id="shadow-2" d="M430.2,193.3L313.4,282.2a26.1,26.1,0,0,1-36.8,0L159.8,193.3V201l116.8,90.6c7.9,5.7,26.9,6.4,37,0l116.6-90.9v-7.4Z" fill="#ddf1fa"/>
    </g>
    <path id="shadow-1" d="M425.2,381.5h-262c-14.1,0-24.2-11-24.2-24.4v13.2c0,13.4,10.1,24.3,24.2,24.3h262c12.7,1.2,23.9-8.4,25.2-19.5a42.8,42.8,0,0,0,.5-4.9V358.1a14.7,14.7,0,0,1-.5,3.9C448,373.1,437.6,381.5,425.2,381.5Z" fill="#617E92" opacity="0.5"/>
    <g id="Front">
      <path id="Front-2" data-name="Front" d="M139.8,381.9s127.5-99.5,136.5-105.4,27-5.8,36.9,0S449.8,382.1,449.8,382.1" fill="none" stroke="#3a5e77" stroke-miterlimit="10" stroke-width="5"/>
      <path id="Front-3" data-name="Front" d="M225.4,315.3s41.9-33,51-38.9,27-5.8,36.9,0S355,307.9,355,307.9" fill="#a9ddf3" stroke="#3a5e77" stroke-miterlimit="10" stroke-width="5"/>
    </g>
  </g>
</svg>


	<div class="bottom">
		<h2 class="title">회원 탈퇴를 진행하시겠습니까 ?</h2>
		<p class="subtitle">회원 탈퇴를 하시면 PlanB에서 서비스를 더 이상 이용하실 수 없게 됩니다.
			<p/>
			<div class="buttons">
				<button id="unsubscribe">회원탈퇴</button>
				<button id="cancel">취소</button>
				<button id="go-back">뒤로가기</button>
				<button id="go-main">홈으로</button>
			</div>
	</div>
</div>
</div>
</div>
</div>
</section>

<script src="https://abdu.space/TweenMax.min.js"></script>
<!-- <script src="/web/lib2/tmart/js/morphSVGPlugin.js"</script> -->
<!-- <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/MorphSVGPlugin.min.js?r=10"></Script> -->
<script>
var _gsScope="undefined"!=typeof module&&module.exports&&"undefined"!=typeof global?global:this||window;(_gsScope._gsQueue||(_gsScope._gsQueue=[])).push(function(){"use strict";var a=Math.PI/180,b=180/Math.PI,c=/[achlmqstvz]|(-?\d*\.?\d*(?:e[\-+]?\d+)?)[0-9]/gi,d=/(?:(-|-=|\+=)?\d*\.?\d*(?:e[\-+]?\d+)?)[0-9]/gi,e=/[achlmqstvz]/gi,f=/[\+\-]?\d*\.?\d+e[\+\-]?\d+/gi,g=_gsScope._gsDefine.globals.TweenLite,h=function(a){window.console&&console.log(a)},i=function(b,c){var d,e,f,g,h,i,j=Math.ceil(Math.abs(c)/90),k=0,l=[];for(b*=a,c*=a,d=c/j,e=4/3*Math.sin(d/2)/(1+Math.cos(d/2)),i=0;j>i;i++)f=b+i*d,g=Math.cos(f),h=Math.sin(f),l[k++]=g-e*h,l[k++]=h+e*g,f+=d,g=Math.cos(f),h=Math.sin(f),l[k++]=g+e*h,l[k++]=h-e*g,l[k++]=g,l[k++]=h;return l},j=function(c,d,e,f,g,h,j,k,l){if(c!==k||d!==l){e=Math.abs(e),f=Math.abs(f);var m=g%360*a,n=Math.cos(m),o=Math.sin(m),p=(c-k)/2,q=(d-l)/2,r=n*p+o*q,s=-o*p+n*q,t=e*e,u=f*f,v=r*r,w=s*s,x=v/t+w/u;x>1&&(e=Math.sqrt(x)*e,f=Math.sqrt(x)*f,t=e*e,u=f*f);var y=h===j?-1:1,z=(t*u-t*w-u*v)/(t*w+u*v);0>z&&(z=0);var A=y*Math.sqrt(z),B=A*(e*s/f),C=A*-(f*r/e),D=(c+k)/2,E=(d+l)/2,F=D+(n*B-o*C),G=E+(o*B+n*C),H=(r-B)/e,I=(s-C)/f,J=(-r-B)/e,K=(-s-C)/f,L=Math.sqrt(H*H+I*I),M=H;y=0>I?-1:1;var N=y*Math.acos(M/L)*b;L=Math.sqrt((H*H+I*I)*(J*J+K*K)),M=H*J+I*K,y=0>H*K-I*J?-1:1;var O=y*Math.acos(M/L)*b;!j&&O>0?O-=360:j&&0>O&&(O+=360),O%=360,N%=360;var P,Q,R,S=i(N,O),T=n*e,U=o*e,V=o*-f,W=n*f,X=S.length-2;for(P=0;X>P;P+=2)Q=S[P],R=S[P+1],S[P]=Q*T+R*V+F,S[P+1]=Q*U+R*W+G;return S[S.length-2]=k,S[S.length-1]=l,S}},k=function(a){var b,d,e,g,i,k,l,m,n,o,p,q,r,s=(a+"").replace(f,function(a){var b=+a;return 1e-4>b&&b>-1e-4?0:b}).match(c)||[],t=[],u=0,v=0,w=s.length,x=2,y=0;if(!a||!isNaN(s[0])||isNaN(s[1]))return h("ERROR: malformed path data: "+a),t;for(b=0;w>b;b++)if(r=i,isNaN(s[b])?(i=s[b].toUpperCase(),k=i!==s[b]):b--,e=+s[b+1],g=+s[b+2],k&&(e+=u,g+=v),0===b&&(m=e,n=g),"M"===i)l&&l.length<8&&(t.length-=1,x=0),u=m=e,v=n=g,l=[e,g],y+=x,x=2,t.push(l),b+=2,i="L";else if("C"===i)l||(l=[0,0]),l[x++]=e,l[x++]=g,k||(u=v=0),l[x++]=u+1*s[b+3],l[x++]=v+1*s[b+4],l[x++]=u+=1*s[b+5],l[x++]=v+=1*s[b+6],b+=6;else if("S"===i)"C"===r||"S"===r?(o=u-l[x-4],p=v-l[x-3],l[x++]=u+o,l[x++]=v+p):(l[x++]=u,l[x++]=v),l[x++]=e,l[x++]=g,k||(u=v=0),l[x++]=u+=1*s[b+3],l[x++]=v+=1*s[b+4],b+=4;else if("Q"===i)o=e-u,p=g-v,l[x++]=u+2*o/3,l[x++]=v+2*p/3,k||(u=v=0),u+=1*s[b+3],v+=1*s[b+4],o=e-u,p=g-v,l[x++]=u+2*o/3,l[x++]=v+2*p/3,l[x++]=u,l[x++]=v,b+=4;else if("T"===i)o=u-l[x-4],p=v-l[x-3],l[x++]=u+o,l[x++]=v+p,o=u+1.5*o-e,p=v+1.5*p-g,l[x++]=e+2*o/3,l[x++]=g+2*p/3,l[x++]=u=e,l[x++]=v=g,b+=2;else if("H"===i)g=v,l[x++]=u+(e-u)/3,l[x++]=v+(g-v)/3,l[x++]=u+2*(e-u)/3,l[x++]=v+2*(g-v)/3,l[x++]=u=e,l[x++]=g,b+=1;else if("V"===i)g=e,e=u,k&&(g+=v-u),l[x++]=e,l[x++]=v+(g-v)/3,l[x++]=e,l[x++]=v+2*(g-v)/3,l[x++]=e,l[x++]=v=g,b+=1;else if("L"===i||"Z"===i)"Z"===i&&(e=m,g=n,l.closed=!0),("L"===i||Math.abs(u-e)>.5||Math.abs(v-g)>.5)&&(l[x++]=u+(e-u)/3,l[x++]=v+(g-v)/3,l[x++]=u+2*(e-u)/3,l[x++]=v+2*(g-v)/3,l[x++]=e,l[x++]=g,"L"===i&&(b+=2)),u=e,v=g;else if("A"===i){for(q=j(u,v,1*s[b+1],1*s[b+2],1*s[b+3],1*s[b+4],1*s[b+5],(k?u:0)+1*s[b+6],(k?v:0)+1*s[b+7]),d=0;d<q.length;d++)l[x++]=q[d];u=l[x-2],v=l[x-1],b+=7}else h("Error: malformed path data: "+a);return t.totalPoints=y+x,t},l=function(a,b){var c,d,e,f,g,h,i,j,k,l,m,n,o,p,q=0,r=.999999,s=a.length,t=b/((s-2)/6);for(o=2;s>o;o+=6)for(q+=t;q>r;)c=a[o-2],d=a[o-1],e=a[o],f=a[o+1],g=a[o+2],h=a[o+3],i=a[o+4],j=a[o+5],p=1/(Math.floor(q)+1),k=c+(e-c)*p,m=e+(g-e)*p,k+=(m-k)*p,m+=(g+(i-g)*p-m)*p,l=d+(f-d)*p,n=f+(h-f)*p,l+=(n-l)*p,n+=(h+(j-h)*p-n)*p,a.splice(o,4,c+(e-c)*p,d+(f-d)*p,k,l,k+(m-k)*p,l+(n-l)*p,m,n,g+(i-g)*p,h+(j-h)*p),o+=6,s+=6,q--;return a},m=function(a){var b,c,d,e,f="",g=a.length,h=100;for(c=0;g>c;c++){for(e=a[c],f+="M"+e[0]+","+e[1]+" C",b=e.length,d=2;b>d;d++)f+=(e[d++]*h|0)/h+","+(e[d++]*h|0)/h+" "+(e[d++]*h|0)/h+","+(e[d++]*h|0)/h+" "+(e[d++]*h|0)/h+","+(e[d]*h|0)/h+" ";e.closed&&(f+="z")}return f},n=function(a){for(var b=[],c=a.length-1,d=0;--c>-1;)b[d++]=a[c],b[d++]=a[c+1],c--;for(c=0;d>c;c++)a[c]=b[c];a.reversed=a.reversed?!1:!0},o=function(a){var b,c=a.length,d=0,e=0;for(b=0;c>b;b++)d+=a[b++],e+=a[b];return[d/(c/2),e/(c/2)]},p=function(a){var b,c,d,e=a.length,f=a[0],g=f,h=a[1],i=h;for(d=6;e>d;d+=6)b=a[d],c=a[d+1],b>f?f=b:g>b&&(g=b),c>h?h=c:i>c&&(i=c);return a.centerX=(f+g)/2,a.centerY=(h+i)/2,a.size=(f-g)*(h-i)},q=function(a){for(var b,c,d,e,f,g=a.length,h=a[0][0],i=h,j=a[0][1],k=j;--g>-1;)for(f=a[g],b=f.length,e=6;b>e;e+=6)c=f[e],d=f[e+1],c>h?h=c:i>c&&(i=c),d>j?j=d:k>d&&(k=d);return a.centerX=(h+i)/2,a.centerY=(j+k)/2,a.size=(h-i)*(j-k)},r=function(a,b){return b.length-a.length},s=function(a,b){var c=a.size||p(a),d=b.size||p(b);return Math.abs(d-c)<(c+d)/20?b.centerX-a.centerX||b.centerY-a.centerY:d-c},t=function(a,b){var c,d,e=a.slice(0),f=a.length,g=f-2;for(b=0|b,c=0;f>c;c++)d=(c+b)%g,a[c++]=e[d],a[c]=e[d+1]},u=function(a,b,c,d,e){var f,g,h,i,j=a.length,k=0,l=j-2;for(c*=6,g=0;j>g;g+=6)f=(g+c)%l,i=a[f]-(b[g]-d),h=a[f+1]-(b[g+1]-e),k+=Math.sqrt(h*h+i*i);return k},v=function(a,b,c){var d,e,f,g=a.length,h=o(a),i=o(b),j=i[0]-h[0],k=i[1]-h[1],l=u(a,b,0,j,k),m=0;for(f=6;g>f;f+=6)e=u(a,b,f/6,j,k),l>e&&(l=e,m=f);if(c)for(d=a.slice(0),n(d),f=6;g>f;f+=6)e=u(d,b,f/6,j,k),l>e&&(l=e,m=-f);return m/6},w=function(a,b,c){for(var d,e,f,g,h,i,j=a.length,k=99999999999,l=0,m=0;--j>-1;)for(d=a[j],i=d.length,h=0;i>h;h+=6)e=d[h]-b,f=d[h+1]-c,g=Math.sqrt(e*e+f*f),k>g&&(k=g,l=d[h],m=d[h+1]);return[l,m]},x=function(a,b,c,d,e,f){var g,h,i,j,k,l=b.length,m=0,n=Math.min(a.size||p(a),b[c].size||p(b[c]))*d,o=999999999999,q=a.centerX+e,r=a.centerY+f;for(h=c;l>h&&(g=b[h].size||p(b[h]),!(n>g));h++)i=b[h].centerX-q,j=b[h].centerY-r,k=Math.sqrt(i*i+j*j),o>k&&(m=h,o=k);return k=b[m],b.splice(m,1),k},y=function(a,b,c,d){var e,f,g,i,j,k,m,o=b.length-a.length,u=o>0?b:a,y=o>0?a:b,z=0,A="complexity"===d?r:s,B="position"===d?0:"number"==typeof d?d:.8,C=y.length,D="object"==typeof c&&c.push?c.slice(0):[c],E="reverse"===D[0]||D[0]<0,F="log"===c;if(y[0]){if(u.length>1&&(a.sort(A),b.sort(A),k=u.size||q(u),k=y.size||q(y),k=u.centerX-y.centerX,m=u.centerY-y.centerY,A===s))for(C=0;C<y.length;C++)u.splice(C,0,x(y[C],u,C,B,k,m));if(o)for(0>o&&(o=-o),u[0].length>y[0].length&&l(y[0],(u[0].length-y[0].length)/6|0),C=y.length;o>z;)i=u[C].size||p(u[C]),g=w(y,u[C].centerX,u[C].centerY),i=g[0],j=g[1],y[C++]=[i,j,i,j,i,j,i,j],y.totalPoints+=8,z++;for(C=0;C<a.length;C++)e=b[C],f=a[C],o=e.length-f.length,0>o?l(e,-o/6|0):o>0&&l(f,o/6|0),E&&!f.reversed&&n(f),c=D[C]||0===D[C]?D[C]:"auto",c&&(f.closed||Math.abs(f[0]-f[f.length-2])<.5&&Math.abs(f[1]-f[f.length-1])<.5?"auto"===c||"log"===c?(D[C]=c=v(f,e,0===C),0>c&&(E=!0,n(f),c=-c),t(f,6*c)):"reverse"!==c&&(C&&0>c&&n(f),t(f,6*(0>c?-c:c))):!E&&("auto"===c&&Math.abs(e[0]-f[0])+Math.abs(e[1]-f[1])+Math.abs(e[e.length-2]-f[f.length-2])+Math.abs(e[e.length-1]-f[f.length-1])>Math.abs(e[0]-f[f.length-2])+Math.abs(e[1]-f[f.length-1])+Math.abs(e[e.length-2]-f[0])+Math.abs(e[e.length-1]-f[1])||c%2)?(n(f),D[C]=-1,E=!0):"auto"===c?D[C]=0:"reverse"===c&&(D[C]=-1),f.closed!==e.closed&&(f.closed=e.closed=!1));return F&&h("shapeIndex:["+D.join(",")+"]"),D}},z=function(a,b,c,d){var e=k(a[0]),f=k(a[1]);y(e,f,b||0===b?b:"auto",c)&&(a[0]=m(e),a[1]=m(f),("log"===d||d===!0)&&h('precompile:["'+a[0]+'","'+a[1]+'"]'))},A=function(a,b,c){return b||c||a||0===a?function(d){z(d,a,b,c)}:z},B=function(a,b){if(!b)return a;var c,e,f,g=a.match(d)||[],h=g.length,i="";for("reverse"===b?(e=h-1,c=-2):(e=(2*(parseInt(b,10)||0)+1+100*h)%h,c=2),f=0;h>f;f+=2)i+=g[e-1]+","+g[e]+" ",e=(e+c)%h;return i},C=function(a,b){var c,d,e,f,g,h,i,j=0,k=parseFloat(a[0]),l=parseFloat(a[1]),m=k+","+l+" ",n=.999999;for(e=a.length,c=.5*b/(.5*e-1),d=0;e-2>d;d+=2){if(j+=c,h=parseFloat(a[d+2]),i=parseFloat(a[d+3]),j>n)for(g=1/(Math.floor(j)+1),f=1;j>n;)m+=(k+(h-k)*g*f).toFixed(2)+","+(l+(i-l)*g*f).toFixed(2)+" ",j--,f++;m+=h+","+i+" ",k=h,l=i}return m},D=function(a){var b=a[0].match(d)||[],c=a[1].match(d)||[],e=c.length-b.length;e>0?a[0]=C(b,e):a[1]=C(c,-e)},E=function(a){return isNaN(a)?D:function(b){D(b),b[1]=B(b[1],parseInt(a,10))}},F=function(a,b){var c=document.createElementNS("http://www.w3.org/2000/svg","path"),d=Array.prototype.slice.call(a.attributes),e=d.length;for(b=","+b+",";--e>-1;)-1===b.indexOf(","+d[e].nodeName+",")&&c.setAttributeNS(null,d[e].nodeName,d[e].nodeValue);return c},G=function(a,b){var c,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y=a.tagName.toLowerCase(),z=.552284749831;return"path"!==y&&a.getBBox?(i=F(a,"x,y,width,height,cx,cy,rx,ry,r,x1,x2,y1,y2,points"),"rect"===y?(g=+a.getAttribute("rx")||0,h=+a.getAttribute("ry")||0,e=+a.getAttribute("x")||0,f=+a.getAttribute("y")||0,m=(+a.getAttribute("width")||0)-2*g,n=(+a.getAttribute("height")||0)-2*h,g||h?(o=e+g*(1-z),p=e+g,q=p+m,r=q+g*z,s=q+g,t=f+h*(1-z),u=f+h,v=u+n,w=v+h*z,x=v+h,c="M"+s+","+u+" V"+v+" C"+[s,w,r,x,q,x,q-(q-p)/3,x,p+(q-p)/3,x,p,x,o,x,e,w,e,v,e,v-(v-u)/3,e,u+(v-u)/3,e,u,e,t,o,f,p,f,p+(q-p)/3,f,q-(q-p)/3,f,q,f,r,f,s,t,s,u].join(",")+"z"):c="M"+(e+m)+","+f+" v"+n+" h"+-m+" v"+-n+" h"+m+"z"):"circle"===y||"ellipse"===y?("circle"===y?(g=h=+a.getAttribute("r")||0,k=g*z):(g=+a.getAttribute("rx")||0,h=+a.getAttribute("ry")||0,k=h*z),e=+a.getAttribute("cx")||0,f=+a.getAttribute("cy")||0,j=g*z,c="M"+(e+g)+","+f+" C"+[e+g,f+k,e+j,f+h,e,f+h,e-j,f+h,e-g,f+k,e-g,f,e-g,f-k,e-j,f-h,e,f-h,e+j,f-h,e+g,f-k,e+g,f].join(",")+"z"):"line"===y?c="M"+a.getAttribute("x1")+","+a.getAttribute("y1")+" L"+a.getAttribute("x2")+","+a.getAttribute("y2"):("polyline"===y||"polygon"===y)&&(l=(a.getAttribute("points")+"").match(d)||[],e=l.shift(),f=l.shift(),c="M"+e+","+f+" L"+l.join(","),"polygon"===y&&(c+=","+e+","+f+"z")),i.setAttribute("d",c),b&&a.parentNode&&(a.parentNode.insertBefore(i,a),a.parentNode.removeChild(a)),i):a},H=function(a,b,c){var e,f,i="string"==typeof a;return(!i||(a.match(d)||[]).length<3)&&(e=i?g.selector(a):a&&a[0]?a:[a],e&&e[0]?(e=e[0],f=e.nodeName.toUpperCase(),b&&"PATH"!==f&&(e=G(e,!1),f="PATH"),a=e.getAttribute("PATH"===f?"d":"points")||"",e===c&&(a=e.getAttributeNS(null,"data-original")||a)):(h("WARNING: invalid morph to: "+a),a=!1)),a},I="Use MorphSVGPlugin.convertToPath(elementOrSelectorText) to convert to a path before morphing.",J=_gsScope._gsDefine.plugin({propName:"morphSVG",API:2,global:!0,version:"0.8.6",init:function(a,b,c,d){var f,g,i,j,k;return"function"!=typeof a.setAttribute?!1:("function"==typeof b&&(b=b(d,a)),f=a.nodeName.toUpperCase(),k="POLYLINE"===f||"POLYGON"===f,"PATH"===f||k?(g="PATH"===f?"d":"points",("string"==typeof b||b.getBBox||b[0])&&(b={shape:b}),j=H(b.shape||b.d||b.points||"","d"===g,a),k&&e.test(j)?(h("WARNING: a <"+f+"> cannot accept path data. "+I),!1):(j&&(this._target=a,a.getAttributeNS(null,"data-original")||a.setAttributeNS(null,"data-original",a.getAttribute(g)),i=this._addTween(a,"setAttribute",a.getAttribute(g)+"",j+"","morphSVG",!1,g,"object"==typeof b.precompile?function(a){a[0]=b.precompile[0],a[1]=b.precompile[1]}:"d"===g?A(b.shapeIndex,b.map||J.defaultMap,b.precompile):E(b.shapeIndex)),i&&(this._overwriteProps.push("morphSVG"),i.end=j,i.endProp=g)),!0)):(h("WARNING: cannot morph a <"+f+"> SVG element. "+I),!1))},set:function(a){var b;if(this._super.setRatio.call(this,a),1===a)for(b=this._firstPT;b;)b.end&&this._target.setAttribute(b.endProp,b.end),b=b._next}});J.pathFilter=z,J.pointsFilter=D,J.subdivideRawBezier=l,J.defaultMap="size",J.pathDataToRawBezier=function(a){return k(H(a,!0))},J.equalizeSegmentQuantity=y,J.convertToPath=function(a,b){"string"==typeof a&&(a=g.selector(a));for(var c=a&&0!==a.length?a.length&&a[0]&&a[0].nodeType?Array.prototype.slice.call(a,0):[a]:[],d=c.length;--d>-1;)c[d]=G(c[d],b!==!1);return c},J.pathDataToBezier=function(a,b){var c,d,e,f,h,i,j,l,m=k(H(a,!0))[0]||[],n=0;if(b=b||{},l=b.align||b.relative,f=b.matrix||[1,0,0,1,0,0],h=b.offsetX||0,i=b.offsetY||0,"relative"===l||l===!0?(h-=m[0]*f[0]+m[1]*f[2],i-=m[0]*f[1]+m[1]*f[3],n="+="):(h+=f[4],i+=f[5],l&&(l="string"==typeof l?g.selector(l):l&&l[0]?l:[l],l&&l[0]&&(j=l[0].getBBox()||{x:0,y:0},h-=j.x,i-=j.y))),c=[],e=m.length,f)for(d=0;e>d;d+=2)c.push({x:n+(m[d]*f[0]+m[d+1]*f[2]+h),y:n+(m[d]*f[1]+m[d+1]*f[3]+i)});else for(d=0;e>d;d+=2)c.push({x:n+(m[d]+h),y:n+(m[d+1]+i)});return c}}),_gsScope._gsDefine&&_gsScope._gsQueue.pop()(),function(a){"use strict";var b=function(){return(_gsScope.GreenSockGlobals||_gsScope)[a]};"function"==typeof define&&define.amd?define(["TweenLite"],b):"undefined"!=typeof module&&module.exports&&(require("../TweenLite.js"),module.exports=b())}("MorphSVGPlugin");
</script>
<script>
var windowWidth = window.innerWidth;
var windowHeight = window.innerHeight;

function setWindowSize() {
	windowWidth = window.innerWidth;
	windowHeight = window.innerHeight;
}
window.addEventListener("resize", setWindowSize);

var eyes = document.querySelectorAll(".eyes");
var cursorPos = { x: 0, y: 0 };

window.addEventListener("mousemove", mousemove);
window.addEventListener("touchmove", touchmove);

function mousemove(e) {
	cursorPos = {
		x: e.clientX,
		y: e.clientY
	};
	if (!clicked) {
		eyes.forEach(function (el) {
			eyeFollow.init(el);
		});
	}
}
function touchmove(e) {
	cursorPos = {
		x: e.targetTouches[0].offsetX,
		y: e.targetTouches[0].offsetY
	};
	if (!clicked) {
		eyes.forEach(function (el) {
			eyeFollow.init(el);
		});
	}
}

var eyeFollow = (function () {
	function getOffset(el) {
		el = el.getBoundingClientRect();
		return {
			x: el.left + window.scrollX,
			y: el.top + window.scrollY
		};
	}

	function moveEye(eye) {
		var eyeOffset = getOffset(eye);
		var bBox = eye.getBBox();
		var centerX = eyeOffset.x + bBox.width / 2;
		var centerY = eyeOffset.y + bBox.height / 2;
		var percentTop = Math.round(((cursorPos.y - centerY) * 100) / windowHeight);
		var percentLeft = Math.round(((cursorPos.x - centerX) * 100) / windowWidth);
		eye.style.transform = `translate(${percentLeft / 5}px, ${percentTop / 5}px)`;
	}

	return {
		init: (el) => {
			moveEye(el);
		}
	};
})();

var clicked, cancelled;
var animate = (function () {
	var select = function (el) {
		return document.getElementById(el);
	};
	var svg = select("svg"),
		blob1 = select("blob-1"),
		blob3 = select("blob-3"),
		envelope = select("envelope"),
		eyeGroup = select("eye-group"),
		paper = select("paper-group"),
		mouth = select("mouth"),
		mouthHappy = select("mouth-happy"),
		mouthScared = select("mouth-scared"),
		mouthSad = select("mouth-sad"),
		eyeLeft = MorphSVGPlugin.convertToPath(select("eye-left")),
		eyeRight = MorphSVGPlugin.convertToPath(select("eye-right")),
		eyeLaughingLeft = select("eye-laughing-left"),
		eyeLaughingRight = select("eye-laughing-right"),
		eyebrowHappyLeft = select("eyebrow-happy-left"),
		eyebrowHappyRight = select("eyebrow-happy-right"),
		eyebrowSadLeft = select("eyebrow-sad-left"),
		eyebrowSadRight = select("eyebrow-sad-right"),
		mouthWorry = select("mouth-worry"),
		openMouth = select("open-mouth"),
		tongue = select("tongue"),
		unsubscribeButton = select("unsubscribe"),
		cancelButton = select("cancel"),
		goBackButton = select("go-back");
		goMainButton = select("go-main");

	var confettis = document.querySelectorAll("#confetti > *");

	var title = document.querySelector(".title"),
		subtitle = document.querySelector(".subtitle");

	var masterTl = new TimelineMax();

	unsubscribeButton.addEventListener("mouseover", willUnsubscribe);
	cancelButton.addEventListener("mouseover", willCancel);
	unsubscribeButton.addEventListener("touchstart", willUnsubscribe);
	cancelButton.addEventListener("touchstart", willCancel);
	unsubscribeButton.addEventListener("click", hasUnsubscribed);
	cancelButton.addEventListener("click", hasCancelled);
	unsubscribeButton.addEventListener("mouseout", initFace);
	cancelButton.addEventListener("mouseout", initFace);
	unsubscribeButton.addEventListener("touchleave", initFace);
	cancelButton.addEventListener("touchleave", initFace);
	goBackButton.addEventListener("click", goBack);
	goMainButton.addEventListener("click", goMain);


	function animateBlob() {
		var speed = 10;
		var tlBlob = new TimelineMax({ repeat: -1 });
		tlBlob
			.to(blob1, speed, { morphSVG: blob3, ease: Power0.easeNone })
			.to(blob1, speed, { morphSVG: blob1, ease: Power0.easeNone });
	}

	function makeConfetti() {
		var speed = 3;
		var confettiTl = new TimelineMax({ paused: true });
		confettis.forEach(function (el) {
			var angle = random(0, 360);
			var delay = random(0, 6);
			var opacity = random(0.5, 1);
			var tl = new TimelineMax({ delay: delay });
			var posX = Math.cos((angle * Math.PI) / 180) * 250;
			var posY = Math.sin((angle * Math.PI) / 180) * 250;
			TweenMax.set(el, { autoAlpha: 1 });
			tl.to(el, speed, {
				x: posX,
				y: posY,
				ease: Power0.easeOut,
				rotation: 360,
				repeat: -1
			});
			confettiTl.add(tl, 0);
		});
		return confettiTl;
	}

	//Envelope animations
	function happyJump() {
		var speed = 0.15;
		var happyJumpTl = new TimelineMax({
			repeat: -1,
			repeatDelay: 1,
			delay: 0.5,
			paused: true
		});
		happyJumpTl
			.to(envelope, speed, { y: -20, ease: Power0.easeNone })
			.to(envelope, speed, { y: 0, ease: Power0.easeNone })
			.to(envelope, speed, { y: -10, ease: Power0.easeNone })
			.to(envelope, speed, { y: 0, ease: Power0.easeNone })
			.to(envelope, speed, { y: -5, ease: Power0.easeNone })
			.to(envelope, speed, { y: 0, ease: Power0.easeNone });
		return happyJumpTl;
	}

	function shake() {
		var speed = 0.1;
		var shakeTl = new TimelineMax({ repeat: -1, paused: true });
		shakeTl
			.to(envelope, speed, { x: -1, ease: Power0.easeNone })
			.to(envelope, speed, { x: 1, ease: Power0.easeNone });
		return shakeTl;
	}

	var doJump = happyJump();
	var doShake = shake();
	var addConfetti = makeConfetti();

	function willUnsubscribe() {
		masterTl.add(doShake.play());
		var speed = 0.2;
		TweenMax.to(mouthWorry, speed, {
			morphSVG: mouthScared,
			ease: Power0.easeNone
		});
		TweenMax.to(paper, speed, { y: 15 });
		TweenMax.to(eyeGroup, speed, { y: 5 });
		TweenMax.to(mouth, speed, { y: 5 });
		TweenMax.to(eyebrowSadLeft, speed, { y: 5 });
		TweenMax.to(eyebrowSadRight, speed, { y: 5 });
	}

	function willCancel() {
		var speed = 0.2;
		TweenMax.to(mouthWorry, speed, {
			morphSVG: mouthHappy,
			ease: Power0.easeNone
		});
		TweenMax.to(eyebrowSadLeft, speed, {
			morphSVG: eyebrowHappyLeft,
			ease: Power0.easeNone
		});
		TweenMax.to(eyebrowSadRight, speed, {
			morphSVG: eyebrowHappyRight,
			ease: Power0.easeNone
		});
		TweenMax.to(mouth, speed, { y: 10 });
		TweenMax.to(eyebrowSadLeft, speed, { y: -10 });
		TweenMax.to(eyebrowSadRight, speed, { y: -10 });
	}

	function hasUnsubscribed() {

		$.ajax({
	        url:  '/rest/home/mmember/myDelete',
	        type: 'POST',
	        success: function(result) {
	        	console.log(result)
				if(result == 1){
					var speed = 0.2;
	        		TweenMax.to(mouthWorry, speed, { morphSVG: mouthSad, ease: Power0.easeNone });
	        		TweenMax.to(eyeGroup, speed, { y: 15 });
	        		TweenMax.to(eyebrowSadLeft, speed, { y: 10 });
	        		TweenMax.to(eyebrowSadRight, speed, { y: 10 });
	        		title.innerHTML = "슬퍼요!";
	        		subtitle.innerHTML =
	        			"당신은 저희와 함께 하실수 없게 됬습니다.";
	        		unsubscribeButton.style.display = "none";
	        		cancelButton.style.display = "none";
					//goBackButton.style.display = "block";
	        		goMainButton.style.display = "block";
	        		clicked = true;
	        		masterTl.remove(doShake);
				} else {
					 swal.fire(
                        '에러',
                        '다시 시도해주세요.',
                        'warning'
                    ).then((result) => {
                    	  if (result.value) {
                    		  goBack();
                   		  }
                   		})

				}

	        },
	        error: function(){
	            alert("error");
	        }
	    });
	}

	function hasCancelled() {
		masterTl.add(doJump.play());
		masterTl.add(addConfetti.play());

		var speed = 0.1;
		TweenMax.to(eyeLeft, speed, {
			morphSVG: eyeLaughingLeft,
			ease: Power0.easeNone
		});
		TweenMax.to(eyeLeft, speed, {
			stroke: "#3a5e77",
			fill: "none",
			ease: Power0.easeNone
		});
		TweenMax.to(eyeRight, speed, {
			morphSVG: eyeLaughingRight,
			ease: Power0.easeNone
		});
		TweenMax.to(eyeRight, speed, {
			stroke: "#3a5e77",
			fill: "none",
			ease: Power0.easeNone
		});
		TweenMax.to(mouthWorry, speed, {
			morphSVG: openMouth,
			ease: Power0.easeNone
		});
		TweenMax.to(mouthWorry, speed, {
			fill: "#3a5e77",
			stroke: "none",
			ease: Power0.easeNone
		});
		TweenMax.to(tongue, speed, {
			css: { display: "block" },
			ease: Power0.easeNone
		});
		TweenMax.to(eyeGroup, speed, { y: 10 });
		TweenMax.to(eyebrowSadLeft, speed, { y: 0 });
		TweenMax.to(eyebrowSadRight, speed, { y: 0 });
		title.innerHTML = "저희와 함께 해주셔서 감사합니다!";
		subtitle.innerHTML =
			"계속해서 저희 서비스를 이용하실 수 있습니다.";
		unsubscribeButton.style.display = "none";
		cancelButton.style.display = "none";
		goBackButton.style.display = "block";
		clicked = true;
		cancelled = true;
	}

	function initFace() {
		masterTl.remove(doShake);
		if (!clicked) {
			var speed = 0.1;

			TweenMax.to(mouthWorry, speed, {
				morphSVG: mouthWorry,
				ease: Power0.easeNone
			});
			TweenMax.to(mouthWorry, speed, {
				fill: "none",
				stroke: "#3a5e77",
				ease: Power0.easeNone
			});
			TweenMax.to(tongue, speed, {
				css: { display: "none" },
				ease: Power0.easeNone
			});
			TweenMax.to(eyebrowSadLeft, speed, {
				morphSVG: eyebrowSadLeft,
				ease: Power0.easeNone
			});
			TweenMax.to(eyebrowSadRight, speed, {
				morphSVG: eyebrowSadRight,
				ease: Power0.easeNone
			});
			TweenMax.to(paper, speed, { y: 0 });
			TweenMax.to(eyeGroup, speed, { y: 0 });
			TweenMax.to(mouth, speed, { y: 0 });
			TweenMax.to(eyebrowSadLeft, speed, { y: 0 });
			TweenMax.to(eyebrowSadRight, speed, { y: 0 });
			TweenMax.to(eyeLeft, speed, { morphSVG: eyeLeft, ease: Power0.easeNone });
			TweenMax.to(eyeLeft, speed, {
				stroke: "none",
				fill: "#3a5e77",
				ease: Power0.easeNone
			});
			TweenMax.to(eyeRight, speed, { morphSVG: eyeRight, ease: Power0.easeNone });
			TweenMax.to(eyeRight, speed, {
				stroke: "none",
				fill: "#3a5e77",
				ease: Power0.easeNone
			});
		}
	}

	function goBack() {
		location.href="/home/mmember/myPage"
	}

	function goMain() {
		location.href="/";
	}

	function initAnimations() {
		clicked = false;
		initFace();
		animateBlob();
	}

	return {
		init: () => {
			initAnimations();
		}
	};
})();

document.addEventListener("DOMContentLoaded", animate.init());

function random(min, max) {
	if (max == null) {
		max = min;
		min = 0;
	}
	return Math.random() * (max - min) + min;
}


</script>