<!DOCTYPE html>
<html lang="en">

<head>
	<base href="../../../">
	<title>Metronic - the world's #1 selling Bootstrap Admin Theme Ecosystem for HTML, Vue, React, Angular &amp; Laravel by Keenthemes</title>
	<meta charset="utf-8" />
	<meta name="description" content="The most advanced Bootstrap Admin Theme on Themeforest trusted by 94,000 beginners and professionals. Multi-demo, Dark Mode, RTL support and complete React, Angular, Vue &amp; Laravel versions. Grab your copy now and get life-time updates for free." />
	<meta name="keywords" content="Metronic, bootstrap, bootstrap 5, Angular, VueJs, React, Laravel, admin themes, web design, figma, web development, free templates, free admin themes, bootstrap theme, bootstrap template, bootstrap dashboard, bootstrap dak mode, bootstrap button, bootstrap datepicker, bootstrap timepicker, fullcalendar, datatables, flaticon" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta property="og:locale" content="en_US" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="Metronic - Bootstrap 5 HTML, VueJS, React, Angular &amp; Laravel Admin Dashboard Theme" />
	<meta property="og:url" content="https://keenthemes.com/metronic" />
	<meta property="og:site_name" content="Keenthemes | Metronic" />
	<link rel="canonical" href="https://preview.keenthemes.com/metronic8" />
	<link rel="shortcut icon" href="<?= ADMIN_ASSETS ?>/media/logos/favicon.ico" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
	<link href="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
	<link href="<?= ADMIN_ASSETS ?>/css/style.bundle.css" rel="stylesheet" type="text/css" />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noty/3.1.4/noty.css" integrity="sha512-NXUhxhkDgZYOMjaIgd89zF2w51Mub53Ru3zCNp5LTlEzMbNNAjTjDbpURYGS5Mop2cU4b7re1nOIucsVlrx9fA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/noty/3.1.4/noty.min.js" integrity="sha512-lOrm9FgT1LKOJRUXF3tp6QaMorJftUjowOWiDcG5GFZ/q7ukof19V0HKx/GWzXCdt9zYju3/KhBNdCLzK8b90Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>

<body id="kt_body" class="bg-body">
	<div class="d-flex flex-column flex-root">
		<div class="d-flex flex-column flex-column-fluid bgi-position-y-bottom position-x-center bgi-no-repeat bgi-size-contain bgi-attachment-fixed" style="background-image: url(<?= ADMIN_ASSETS ?>/media/illustrations/sketchy-1/14.png">
			<div class="d-flex flex-center flex-column flex-column-fluid p-10 pb-lg-20">
				<a href="<?= SITE_URL ?>" class="mb-12">
					<img alt="Logo" src="<?= ADMIN_ASSETS ?>/media/logos/logo-1.svg" class="h-40px" />
				</a>
				<div class="w-lg-500px bg-body rounded shadow-sm p-10 p-lg-15 mx-auto">
					<form class="form w-100" novalidate="novalidate" id="login">
						<div class="text-center mb-10">
							<h1 class="text-dark mb-3">Jain Farm Fresh Yönetim Girişi</h1>
						</div>
						<div class="fv-row mb-10">
							<label class="form-label fs-6 fw-bolder text-dark">Email</label>
							<input class="form-control form-control-lg form-control-solid" type="text" name="email" />
						</div>
						<div class="fv-row mb-10">
							<div class="d-flex flex-stack mb-2">
								<label class="form-label fw-bolder text-dark fs-6 mb-0">Password</label>
							</div>
							<input class="form-control form-control-lg form-control-solid" type="password" name="password" />
						</div>
						<div class="text-center">
						<button type="button" class="btn btn-lg btn-primary w-100 mb-5 loginbtn">Giriş Yap</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		var hostUrl = "<?= ADMIN_ASSETS ?>";
	</script>
	<script>
		$(".loginbtn").on("click",()=>{
			var data = $("#login").serialize();
                $.ajax({
                    url: '<?= SITE_URL ?>yonetim/giris/login',
                    type: 'POST',
                    data: data,
                    success: function(e) {
                        console.log(e);
                        var obj = jQuery.parseJSON(e);
                        new Noty({
                            type:""+obj.type+"",
                            text: ""+obj.message+"",
                            timeout:2500,
                        }).show();
                        if (obj.type == "success"){
                            setTimeout(()=>{
                                location.href = '<?php echo ADMIN_URL ?>';
                            },2500)
                        }
                    }
                });
		});
	</script>
	<script src="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.js"></script>
	<script src="<?= ADMIN_ASSETS ?>/js/scripts.bundle.js"></script>
	<script src="<?= ADMIN_ASSETS ?>/js/custom/authentication/sign-in/general.js"></script>

	

</body>

</html>