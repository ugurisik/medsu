<!DOCTYPE html>
<html lang="tr">
<!--begin::Head-->
<meta charset="utf-8" />
<title>Yönetim Paneli</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!--begin::Fonts-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
<!--end::Fonts-->
<!--begin::Page Custom Styles(used by this page)-->
<link href="<?= ADMIN_ASSETS ?>/css/pages/login/classic/login-4.css?v=7.0.4" rel="stylesheet" type="text/css" />
<!--end::Page Custom Styles-->
<!--begin::Global Theme Styles(used by all pages)-->
<link href="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.css?v=7.0.4" rel="stylesheet" type="text/css" />
<link href="<?= ADMIN_ASSETS ?>/plugins/custom/prismjs/prismjs.bundle.css?v=7.0.4" rel="stylesheet" type="text/css" />
<link href="<?= ADMIN_ASSETS ?>/css/style.bundle.css?v=7.0.4" rel="stylesheet" type="text/css" />
<!--end::Global Theme Styles-->
<!--begin::Layout Themes(used by all pages)-->
<!--end::Layout Themes-->
<link rel="shortcut icon" href="<?= ADMIN_ASSETS ?>/media/logos/favicon.ico" />
</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body" class="quick-panel-right demo-panel-right offcanvas-right header-fixed header-mobile-fixed subheader-enabled aside-enabled aside-static page-loading">
	<!--begin::Main-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Login-->
		<div class="login login-4 login-signin-on d-flex flex-row-fluid" id="kt_login">
			<div class="d-flex flex-center flex-row-fluid bgi-size-cover bgi-position-top bgi-no-repeat" style="background-image: url('<?= ADMIN_ASSETS ?>/media/bg/bg-3.jpg');">
				<div class="login-form text-center p-7 position-relative overflow-hidden">
					<!--begin::Login Header-->
					<div class="d-flex flex-center mb-15">
						<a href="#">
							<img src="<?= ADMIN_ASSETS ?>/images/logo.png" class="max-h-75px" alt="" />
						</a>
					</div>
					<!--end::Login Header-->
					<!--begin::Login Sign in form-->
					<div class="login-signin">
						<?php if (isset($_SESSION['statu'])) { ?>
							<div class="m-alert m-alert--outline alert alert-danger alert-dismissible animated fadeIn" role="alert"><?= $_SESSION['statu'] ?><button type="button" class="close" data-dismiss="alert" aria-label="Close"></button></div>
						<?php unset($_SESSION['statu']);
						} ?>
						<form class="kt-form" id="login" action="#">
							<div class="form-group mb-5">
								<input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Email" name="email" autocomplete="off" />
							</div>
							<div class="form-group mb-5">
								<input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Password" name="password" />
							</div>
							<div class="form-group d-flex flex-wrap justify-content-between align-items-center">
								<a href="javascript:;" id="kt_login_forgot" class="text-muted text-hover-primary">Şifremi Unuttum !</a>
							</div>
						
							<button type="button" name="giris" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-4">Giriş Yap</button>
						</form>
					</div>
					<!--end::Login Sign in form-->
					<!--begin::Login Sign up form-->
					<!-- <div class="login-signup">
						<div class="mb-20">
							<h3>Sign Up</h3>
							<div class="text-muted font-weight-bold">Enter your details to create your account</div>
						</div>
						<form class="form" id="kt_login_signup_form">
							<div class="form-group mb-5">
								<input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Fullname" name="fullname" />
							</div>
							<div class="form-group mb-5">
								<input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Email" name="email" autocomplete="off" />
							</div>
							<div class="form-group mb-5">
								<input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Password" name="password" />
							</div>
							<div class="form-group mb-5">
								<input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Confirm Password" name="cpassword" />
							</div>
							<div class="form-group mb-5 text-left">
								<label class="checkbox m-0">
									<input type="checkbox" name="agree" />I Agree the
									<a href="#" class="font-weight-bold">terms and conditions</a>.
									<span></span></label>
								<div class="form-text text-muted text-center"></div>
							</div>
							<div class="form-group d-flex flex-wrap flex-center mt-10">
								<button id="kt_login_signup_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-2">Sign Up</button>
								<button id="kt_login_signup_cancel" class="btn btn-light-primary font-weight-bold px-9 py-4 my-3 mx-2">Cancel</button>
							</div>
						</form>
					</div> -->
					<!--end::Login Sign up form-->
					<!--begin::Login forgot password form-->
					<!-- <div class="login-forgot">
						<div class="mb-20">
							<h3>Forgotten Password ?</h3>
							<div class="text-muted font-weight-bold">Enter your email to reset your password</div>
						</div>
						<form class="form" id="kt_login_forgot_form">
							<div class="form-group mb-10">
								<input class="form-control form-control-solid h-auto py-4 px-8" type="text" placeholder="Email" name="email" autocomplete="off" />
							</div>
							<div class="form-group d-flex flex-wrap flex-center mt-10">
								<button id="kt_login_forgot_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-2">Request</button>
								<button id="kt_login_forgot_cancel" class="btn btn-light-primary font-weight-bold px-9 py-4 my-3 mx-2">Cancel</button>
							</div>
						</form>
					</div> -->
					<!--end::Login forgot password form-->
				</div>
			</div>
		</div>
		<!--end::Login-->
	</div>
	<!--end::Main-->
	<!--begin::Global Config(global config for global JS scripts)-->
	<script>
		var KTAppSettings = {
			"breakpoints": {
				"sm": 576,
				"md": 768,
				"lg": 992,
				"xl": 1200,
				"xxl": 1200
			},
			"colors": {
				"theme": {
					"base": {
						"white": "#ffffff",
						"primary": "#6993FF",
						"secondary": "#E5EAEE",
						"success": "#1BC5BD",
						"info": "#8950FC",
						"warning": "#FFA800",
						"danger": "#F64E60",
						"light": "#F3F6F9",
						"dark": "#212121"
					},
					"light": {
						"white": "#ffffff",
						"primary": "#E1E9FF",
						"secondary": "#ECF0F3",
						"success": "#C9F7F5",
						"info": "#EEE5FF",
						"warning": "#FFF4DE",
						"danger": "#FFE2E5",
						"light": "#F3F6F9",
						"dark": "#D6D6E0"
					},
					"inverse": {
						"white": "#ffffff",
						"primary": "#ffffff",
						"secondary": "#212121",
						"success": "#ffffff",
						"info": "#ffffff",
						"warning": "#ffffff",
						"danger": "#ffffff",
						"light": "#464E5F",
						"dark": "#ffffff"
					}
				},
				"gray": {
					"gray-100": "#F3F6F9",
					"gray-200": "#ECF0F3",
					"gray-300": "#E5EAEE",
					"gray-400": "#D6D6E0",
					"gray-500": "#B5B5C3",
					"gray-600": "#80808F",
					"gray-700": "#464E5F",
					"gray-800": "#1B283F",
					"gray-900": "#212121"
				}
			},
			"font-family": "Poppins"
		};
	</script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
	 <script>
        jQuery(document).ready(function() {
            console.log("<?php echo security::getOS(); ?>");
           
            $("button[name=giris]").on("click", function() {
                var data = $("#login").serialize();
                $.ajax({
                    url: '<?= SITE_URL ?>/yonetim/giris/login',
                    type: 'POST',
                    data: data,
                    success: function(e) {
                        console.log(e);
						location.href = '<?php echo ADMIN_URL ?>';
                        // var obj = jQuery.parseJSON(e);
                        // var notify = $.notify({message: obj.message},{type: obj.type,showProgressbar: true},{delay:2000});
                        // if(obj.type == "success"){
                        //     var interval = 5;
                        //     setInterval(function() {
                        //         interval--;
                        //         notify.update('message', "Yönlendirilmeye son " + interval + " saniye");
                        //     }, 1000);
                        //     setTimeout(function() {
                        //         notify.update('message', "Yönlendiriliyorsunuz !");
                        //     }, 5000);
                        //     setTimeout(function() {
                        //         window.location.href = "dashboard.php";
                        //     }, 1000);
                        // }
                    }
                });
            });
        });
    </script>

	<!--end::Global Config-->
	<!--begin::Global Theme Bundle(used by all pages)-->
	<script src="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.js?v=7.0.4"></script>
	<script src="<?= ADMIN_ASSETS ?>/plugins/custom/prismjs/prismjs.bundle.js?v=7.0.4"></script>
	<script src="<?= ADMIN_ASSETS ?>/js/scripts.bundle.js?v=7.0.4"></script>
	<!--end::Global Theme Bundle-->
	<!--begin::Page Scripts(used by this page)-->
	<script src="<?= ADMIN_ASSETS ?>/js/pages/custom/login/login-general.js?v=7.0.4"></script>
	<!--end::Page Scripts-->
</body>
<!--end::Body-->

</html>