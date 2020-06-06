<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>

<html lang="kr">

<!-- begin::Head -->
<head>
<tiles:insertAttribute name="adminHeader" />
<title>planB</title>
<meta name="description" content="Initialized with local json data">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<!-- end::Head -->

<script>
	function memberLogout(){
		location.href="/member/login/memberlogout";
	}

	function sysMain(){
		location.href="/sys/main/view";
	}

/*  	$.sessionTimeout({
         keepAliveUrl: '/rest/member/login/time',
         redirUrl: '/member/join/loginSignUp',
         warnAfter: 30000,
     	   redirAfter: 300000,
         countdownMessage: 'Redirecting in {timer} seconds.',
         countdownBar: true
     }); */
</script>

<!-- begin::Body -->
<body
	class="kt-page--loading-enabled kt-page--loading kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header--minimize-menu kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-aside--enabled kt-aside--left kt-aside--fixed kt-page--loading">

	<div class="modal fade in" id="session-timeout-dialog" style="display: none;"  aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title">Your Session is About to Expire!</h4>
				</div>
				<div class="modal-body">
					<p>Your session is about to expire.</p>
					<div class="progress">
						<div class="progress-bar progress-bar-striped countdown-bar active" role="progressbar" style="min-width: 15px; width: 100%;">
							<span class="countdown-holder">10s</span>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button id="session-timeout-dialog-logout" type="button" class="btn btn-default" onclick="memberLogout()">로그아웃</button>
					<button id="session-timeout-dialog-keepalive" type="button" class="btn btn-primary" data-dismiss="modal" name="extendLogin" value="true">로그인 연장</button>
				</div>
			</div>
		</div>
	</div>

	<!-- begin::Page loader -->
	<div class="kt-page-loader kt-page-loader--logo">
		<img alt="Logo" src="/web/lib/dist/assets/media/logos/planB_logo_mini.png" />
		<div class="kt-spinner kt-spinner--info"></div>
	</div>
	<!-- end::Page Loader -->


	<!-- begin:: Page -->
	<!-- begin:: Header Mobile -->
	<div id="kt_header_mobile"
		class="kt-header-mobile  kt-header-mobile--fixed ">
		<div class="kt-header-mobile__logo">
			<a onclick="sysMain()"> <img alt="Logo"
				src="/web/lib/dist/assets/media/logos/planB_logo_mini.png" />
			</a>
		</div>
		<div class="kt-header-mobile__toolbar">
			<button class="kt-header-mobile__toolbar-toggler"
				id="kt_header_mobile_toggler">
				<span></span>
			</button>
			<button class="kt-header-mobile__toolbar-topbar-toggler"
				id="kt_header_mobile_topbar_toggler">
				<i class="flaticon-more-1"></i>
			</button>
		</div>
	</div>
	<!-- end:: Header Mobile -->
	<div class="kt-grid kt-grid--hor kt-grid--root">
		<div
			class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
			<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper"
				id="kt_wrapper">


				<!-- begin:: Header -->
		<tiles:insertAttribute name="sysMenu" />
				<!-- end:: Header -->

				<div class="kt-body kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch"
					id="kt_body">
					<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor"
						id="kt_content">



						<!-- begin:: Subheader -->
						<div class="kt-subheader   kt-grid__item" id="kt_subheader">
						</div>

						<!-- end:: Subheader -->

						<!-- begin:: Content -->
						<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
							<tiles:insertAttribute name="body" />
						</div>

						<!-- end:: Content -->
				</div>


				<tiles:insertAttribute name="adminFooter" />

			</div>
		</div>
	</div>

	<!-- end:: Page -->

	<!-- begin::Quick Panel -->
	<div id="kt_quick_panel" class="kt-quick-panel">
		<a href="#" class="kt-quick-panel__close"
			id="kt_quick_panel_close_btn"><i class="flaticon2-delete"></i></a>
		<div class="kt-quick-panel__nav">
			<ul
				class="nav nav-tabs nav-tabs-line nav-tabs-bold nav-tabs-line-3x nav-tabs-line-brand  kt-notification-item-padding-x"
				role="tablist">
				<li class="nav-item active"><a class="nav-link active"
					data-toggle="tab" href="#kt_quick_panel_tab_notifications"
					role="tab">Notifications</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#kt_quick_panel_tab_logs" role="tab">Audit Logs</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#kt_quick_panel_tab_settings" role="tab">Settings</a></li>
			</ul>
		</div>
		<div class="kt-quick-panel__content">
			<div class="tab-content">
				<div class="tab-pane fade show kt-scroll active"
					id="kt_quick_panel_tab_notifications" role="tabpanel">
					<div class="kt-notification">
						<a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-line-chart kt-font-success"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New order has
									been received</div>
								<div class="kt-notification__item-time">2 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-box-1 kt-font-brand"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New customer is
									registered</div>
								<div class="kt-notification__item-time">3 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-chart2 kt-font-danger"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">Application has
									been approved</div>
								<div class="kt-notification__item-time">3 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-image-file kt-font-warning"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New file has been
									uploaded</div>
								<div class="kt-notification__item-time">5 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-drop kt-font-info"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New user feedback
									received</div>
								<div class="kt-notification__item-time">8 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-pie-chart-2 kt-font-success"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">System reboot has
									been successfully completed</div>
								<div class="kt-notification__item-time">12 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-favourite kt-font-danger"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New order has
									been placed</div>
								<div class="kt-notification__item-time">15 hrs ago</div>
							</div>
						</a> <a href="#"
							class="kt-notification__item kt-notification__item--read">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-safe kt-font-primary"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">Company meeting
									canceled</div>
								<div class="kt-notification__item-time">19 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-psd kt-font-success"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New report has
									been received</div>
								<div class="kt-notification__item-time">23 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon-download-1 kt-font-danger"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">Finance report
									has been generated</div>
								<div class="kt-notification__item-time">25 hrs ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon-security kt-font-warning"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New customer
									comment recieved</div>
								<div class="kt-notification__item-time">2 days ago</div>
							</div>
						</a> <a href="#" class="kt-notification__item">
							<div class="kt-notification__item-icon">
								<i class="flaticon2-pie-chart kt-font-warning"></i>
							</div>
							<div class="kt-notification__item-details">
								<div class="kt-notification__item-title">New customer is
									registered</div>
								<div class="kt-notification__item-time">3 days ago</div>
							</div>
						</a>
					</div>
				</div>
				<div class="tab-pane fade kt-scroll" id="kt_quick_panel_tab_logs"
					role="tabpanel">
					<div class="kt-notification-v2">
						<a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon-bell kt-font-brand"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">5 new user
									generated report</div>
								<div class="kt-notification-v2__item-desc">Reports based
									on sales</div>
							</div>
						</a> <a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon2-box kt-font-danger"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">2 new items
									submited</div>
								<div class="kt-notification-v2__item-desc">by Grog John</div>
							</div>
						</a> <a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon-psd kt-font-brand"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">79 PSD files
									generated</div>
								<div class="kt-notification-v2__item-desc">Reports based
									on sales</div>
							</div>
						</a> <a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon2-supermarket kt-font-warning"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">$2900 worth
									producucts sold</div>
								<div class="kt-notification-v2__item-desc">Total 234 items
								</div>
							</div>
						</a> <a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon-paper-plane-1 kt-font-success"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">4.5h-avarage
									response time</div>
								<div class="kt-notification-v2__item-desc">Fostest is
									Barry</div>
							</div>
						</a> <a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon2-information kt-font-danger"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">Database
									server is down</div>
								<div class="kt-notification-v2__item-desc">10 mins ago</div>
							</div>
						</a> <a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon2-mail-1 kt-font-brand"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">System report
									has been generated</div>
								<div class="kt-notification-v2__item-desc">Fostest is
									Barry</div>
							</div>
						</a> <a href="#" class="kt-notification-v2__item">
							<div class="kt-notification-v2__item-icon">
								<i class="flaticon2-hangouts-logo kt-font-warning"></i>
							</div>
							<div class="kt-notification-v2__itek-wrapper">
								<div class="kt-notification-v2__item-title">4.5h-avarage
									response time</div>
								<div class="kt-notification-v2__item-desc">Fostest is
									Barry</div>
							</div>
						</a>
					</div>
				</div>
				<div
					class="tab-pane kt-quick-panel__content-padding-x fade kt-scroll"
					id="kt_quick_panel_tab_settings" role="tabpanel">
					<form class="kt-form">
						<div class="kt-heading kt-heading--sm kt-heading--space-sm">Customer
							Care</div>
						<div class="form-group form-group-xs row">
							<label class="col-8 col-form-label">Enable Notifications:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--success kt-switch--sm">
									<label> <input type="checkbox" checked="checked"
										name="quick_panel_notifications_1"> <span></span>
								</label>
								</span>
							</div>
						</div>
						<div class="form-group form-group-xs row">
							<label class="col-8 col-form-label">Enable Case Tracking:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--success kt-switch--sm">
									<label> <input type="checkbox"
										name="quick_panel_notifications_2"> <span></span>
								</label>
								</span>
							</div>
						</div>
						<div class="form-group form-group-last form-group-xs row">
							<label class="col-8 col-form-label">Support Portal:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--success kt-switch--sm">
									<label> <input type="checkbox" checked="checked"
										name="quick_panel_notifications_2"> <span></span>
								</label>
								</span>
							</div>
						</div>
						<div
							class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
						<div class="kt-heading kt-heading--sm kt-heading--space-sm">Reports</div>
						<div class="form-group form-group-xs row">
							<label class="col-8 col-form-label">Generate Reports:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--sm kt-switch--danger">
									<label> <input type="checkbox" checked="checked"
										name="quick_panel_notifications_3"> <span></span>
								</label>
								</span>
							</div>
						</div>
						<div class="form-group form-group-xs row">
							<label class="col-8 col-form-label">Enable Report Export:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--sm kt-switch--danger">
									<label> <input type="checkbox"
										name="quick_panel_notifications_3"> <span></span>
								</label>
								</span>
							</div>
						</div>
						<div class="form-group form-group-last form-group-xs row">
							<label class="col-8 col-form-label">Allow Data
								Collection:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--sm kt-switch--danger">
									<label> <input type="checkbox" checked="checked"
										name="quick_panel_notifications_4"> <span></span>
								</label>
								</span>
							</div>
						</div>
						<div
							class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
						<div class="kt-heading kt-heading--sm kt-heading--space-sm">Memebers</div>
						<div class="form-group form-group-xs row">
							<label class="col-8 col-form-label">Enable Member singup:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--sm kt-switch--brand"> <label>
										<input type="checkbox" checked="checked"
										name="quick_panel_notifications_5"> <span></span>
								</label>
								</span>
							</div>
						</div>
						<div class="form-group form-group-xs row">
							<label class="col-8 col-form-label">Allow User Feedbacks:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--sm kt-switch--brand"> <label>
										<input type="checkbox" name="quick_panel_notifications_5">
										<span></span>
								</label>
								</span>
							</div>
						</div>
						<div class="form-group form-group-last form-group-xs row">
							<label class="col-8 col-form-label">Enable Customer
								Portal:</label>
							<div class="col-4 kt-align-right">
								<span class="kt-switch kt-switch--sm kt-switch--brand"> <label>
										<input type="checkbox" checked="checked"
										name="quick_panel_notifications_6"> <span></span>
								</label>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- end::Quick Panel -->

	<!-- begin::Scrolltop -->
	<div id="kt_scrolltop" class="kt-scrolltop">
		<i class="fa fa-arrow-up"></i>
	</div>
	<!-- end::Scrolltop -->

</body>
<!-- end::Body -->

</html>
