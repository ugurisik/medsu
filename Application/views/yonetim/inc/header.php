<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Metronic - Bootstrap 5 HTML, VueJS, React, Angular & Laravel Admin Dashboard Theme
Purchase: https://1.envato.market/EA4JP
Website: http://www.keenthemes.com
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: For each use you must have a valid license purchased only from above link in order to legally use the theme for your project.
-->
<html lang="en">
<!--begin::Head-->

<head>
    <base href="">
    <title>Medsu Yönetim Paneli</title>
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta property="og:locale" content="tr_TR" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="NICTR | Medsu" />
    <link rel="canonical" href="" />
    <link rel="shortcut icon" href="<?= ADMIN_ASSETS ?>/media/logos/favicon.ico" />
    <!--begin::Fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
    <!--end::Fonts-->
    <link href="<?= ADMIN_ASSETS ?>plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Page Vendor Stylesheets-->
    <!--begin::Global Stylesheets Bundle(used by all pages)-->
    <link href="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="<?= ADMIN_ASSETS ?>/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<?= ADMIN_ASSETS ?>/plugins/custom/bootstrap-iconpicker/css/bootstrap-iconpicker.min.css">
    <link rel="stylesheet" type="text/css" href="<?= ADMIN_ASSETS ?>/css/jstree.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed aside-enabled aside-fixed" style="--kt-toolbar-height:55px;--kt-toolbar-height-tablet-and-mobile:55px">
    <!--begin::Main-->
    <!--begin::Root-->
    <div class="d-flex flex-column flex-root">
        <!--begin::Page-->
        <div class="page d-flex flex-row flex-column-fluid">
            <!--begin::Aside-->
            <div id="kt_aside" class="aside aside-white aside-hoverable" data-kt-drawer="true" data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_mobile_toggle">
                <!--begin::Brand-->
                <div class="aside-logo flex-column-auto" id="kt_aside_logo">
                    <!--begin::Logo-->
                    <a href="<?= ADMIN_URL ?>">
                        <img alt="Logo" src="<?= SITE_URL ?>/public/img/medsulogo.png" class="h-40px logo" />
                    </a>
                    <!--end::Logo-->
                    <!--begin::Aside toggler-->
                    <div id="kt_aside_toggle" class="btn btn-icon w-auto px-0 btn-active-color-primary aside-toggle" data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body" data-kt-toggle-name="aside-minimize">
                        <!--begin::Svg Icon | path: icons/duotune/arrows/arr079.svg-->
                        <span class="svg-icon svg-icon-1 rotate-180">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                <path opacity="0.5" d="M14.2657 11.4343L18.45 7.25C18.8642 6.83579 18.8642 6.16421 18.45 5.75C18.0358 5.33579 17.3642 5.33579 16.95 5.75L11.4071 11.2929C11.0166 11.6834 11.0166 12.3166 11.4071 12.7071L16.95 18.25C17.3642 18.6642 18.0358 18.6642 18.45 18.25C18.8642 17.8358 18.8642 17.1642 18.45 16.75L14.2657 12.5657C13.9533 12.2533 13.9533 11.7467 14.2657 11.4343Z" fill="black" />
                                <path d="M8.2657 11.4343L12.45 7.25C12.8642 6.83579 12.8642 6.16421 12.45 5.75C12.0358 5.33579 11.3642 5.33579 10.95 5.75L5.40712 11.2929C5.01659 11.6834 5.01659 12.3166 5.40712 12.7071L10.95 18.25C11.3642 18.6642 12.0358 18.6642 12.45 18.25C12.8642 17.8358 12.8642 17.1642 12.45 16.75L8.2657 12.5657C7.95328 12.2533 7.95328 11.7467 8.2657 11.4343Z" fill="black" />
                            </svg>
                        </span>
                        <!--end::Svg Icon-->
                    </div>
                    <!--end::Aside toggler-->
                </div>
                <!--end::Brand-->
                <!--begin::Aside menu-->
                <div class=" aside-menu flex-column-fluid">
                    <!--begin::Aside Menu-->
                    <div class="hover-scroll-overlay-y my-5 my-lg-5" id="kt_aside_menu_wrapper" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer" data-kt-scroll-wrappers="#kt_aside_menu" data-kt-scroll-offset="0">
                        <!--begin::Menu-->
                        <div class=" menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500" id="#kt_aside_menu" data-kt-menu="true" data-kt-menu-expand="false">
                            <?php
                            function onemenu($text, $href, $target, $icon, $active)
                            {
                                //if ($active == $param['mpage']){ $active="active"; } else{$active="";}
                                echo '<div class="menu-item"><a class="menu-link ' . $active . '" href="' . $href . '" target="' . $target . '">';
                                echo '<span class="menu-icon"><i class="' . $icon . '" aria-hidden="true"></i></span>';
                                echo ' <span class="menu-title">' . $text . '</span>';
                                echo '</a></div>';
                            }

                            $pmEncode = json_encode(helper::PanelMenu());
                            $pmDecode = json_decode($pmEncode);
                            foreach ($pmDecode as $k => $v) {

                                if (isset($v->children) == 0) {
                                    if ($v->active == $param['mpage']) {
                                        $active = "hover show";
                                    } else {
                                        $active = "";
                                    }
                                    onemenu($v->text, $v->href, $v->target, $v->icon, $active);
                                } else {
                                    if ($v->active == $param['mpage']) {
                                        $active = "hover show";
                                    } else {
                                        $active = "";
                                    }
                                    echo '<div data-kt-menu-trigger="click" class="menu-item ' . $active . ' menu-accordion mb-1">';
                                    echo '<span class="menu-link">';
                                    echo '<span class="menu-icon"><i class="' . $v->icon . '" aria-hidden="true"></i></span><span class="menu-title">' . $v->text . '</span><span class="menu-arrow"></span>';
                                    echo '</span><div class="menu-sub menu-sub-accordion">';
                                    foreach ($v->children as $sk => $sv) {
                                        if (isset($sv->children) == 0) {
                                            if ($sv->active == $param['maltpage']) {
                                                $active = "hover show";
                                            } else {
                                                $active = "";
                                            }
                                            echo ' <div class="menu-item"><a class="menu-link ' . $active . '" href="' . $sv->href . '" target="' . $sv->target . '">';
                                            echo '<span class="menu-bullet"><span class="bullet bullet-dot"></span></span>';
                                            echo ' <span class="menu-title">' . $sv->text . '</span></a></div>';
                                        } else {
                                            if ($sv->active == $param['maltpage']) {
                                                $active = "hover show";
                                            } else {
                                                $active = "";
                                            }
                                            echo '<div data-kt-menu-trigger="click" class="menu-item menu-accordion ' . $active . '">';
                                            echo '<span class="menu-link ' . $active . '"><span class="menu-bullet"><span class="bullet bullet-dot"></span></span>';
                                            echo '<span class="menu-title">' . $sv->text . '</span><span class="menu-arrow"></span></span><div class="menu-sub menu-sub-accordion">';
                                            foreach ($sv->children as $ssk => $ssv) {
                                                if ($ssv->active == $param['maltpage']) {
                                                    $active = "hover show";
                                                } else {
                                                    $active = "";
                                                }
                                                echo '<div class="menu-item"><a class="menu-link ' . $active . '" href="' . $ssv->href . '" target="' . $ssv->target . '"><span class="menu-bullet">';
                                                echo '<span class="bullet bullet-dot"></span></span><span class="menu-title">' . $ssv->text . '</span></a></div>';
                                            }
                                            echo '</div></div>';
                                        }
                                    }
                                    echo "</div> </div>";
                                }
                            }
                            ?>
                        </div>
                        <!--end::Menu-->
                    </div>
                    <!--end::Aside Menu-->
                </div>
                <!--end::Aside menu-->
                <!--begin::Footer-->
                <div class="aside-footer flex-column-auto pt-5 pb-7 px-5" id="kt_aside_footer">
                    <a href="javascript:;" class="btn btn-custom btn-primary w-100" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss-="click" title="Yönetim panelindeki alanları daha iyi bir şekilde kullanabilmeniz için yol gösterici bir döküman">
                        <span class="btn-label">Kullanım Talimatları</span>
                        <!--begin::Svg Icon | path: icons/duotune/general/gen005.svg-->
                        <span class="svg-icon btn-icon svg-icon-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                <path opacity="0.3" d="M19 22H5C4.4 22 4 21.6 4 21V3C4 2.4 4.4 2 5 2H14L20 8V21C20 21.6 19.6 22 19 22ZM12.5 18C12.5 17.4 12.6 17.5 12 17.5H8.5C7.9 17.5 8 17.4 8 18C8 18.6 7.9 18.5 8.5 18.5L12 18C12.6 18 12.5 18.6 12.5 18ZM16.5 13C16.5 12.4 16.6 12.5 16 12.5H8.5C7.9 12.5 8 12.4 8 13C8 13.6 7.9 13.5 8.5 13.5H15.5C16.1 13.5 16.5 13.6 16.5 13ZM12.5 8C12.5 7.4 12.6 7.5 12 7.5H8C7.4 7.5 7.5 7.4 7.5 8C7.5 8.6 7.4 8.5 8 8.5H12C12.6 8.5 12.5 8.6 12.5 8Z" fill="black" />
                                <rect x="7" y="17" width="6" height="2" rx="1" fill="black" />
                                <rect x="7" y="12" width="10" height="2" rx="1" fill="black" />
                                <rect x="7" y="7" width="6" height="2" rx="1" fill="black" />
                                <path d="M15 8H20L14 2V7C14 7.6 14.4 8 15 8Z" fill="black" />
                            </svg>
                        </span>
                        <!--end::Svg Icon-->
                    </a>
                </div>
                <!--end::Footer-->
            </div>
            <!--end::Aside-->
            <!--begin::Wrapper-->
            <div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
                <!--begin::Header-->
                <div id="kt_header"  class="header align-items-stretch">
                    <!--begin::Container-->
                    <div class="container-fluid d-flex align-items-stretch justify-content-between">
                        <!--begin::Aside mobile toggle-->
                        <div class="d-flex align-items-center d-lg-none ms-n2 me-2" title="Show aside menu">
                            <div class="btn btn-icon btn-active-light-primary w-30px h-30px w-md-40px h-md-40px" id="kt_aside_mobile_toggle">
                                <!--begin::Svg Icon | path: icons/duotune/abstract/abs015.svg-->
                                <span class="svg-icon svg-icon-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                        <path d="M21 7H3C2.4 7 2 6.6 2 6V4C2 3.4 2.4 3 3 3H21C21.6 3 22 3.4 22 4V6C22 6.6 21.6 7 21 7Z" fill="black" />
                                        <path opacity="0.3" d="M21 14H3C2.4 14 2 13.6 2 13V11C2 10.4 2.4 10 3 10H21C21.6 10 22 10.4 22 11V13C22 13.6 21.6 14 21 14ZM22 20V18C22 17.4 21.6 17 21 17H3C2.4 17 2 17.4 2 18V20C2 20.6 2.4 21 3 21H21C21.6 21 22 20.6 22 20Z" fill="black" />
                                    </svg>
                                </span>
                                <!--end::Svg Icon-->
                            </div>
                        </div>
                        <!--end::Aside mobile toggle-->
                        <!--begin::Mobile logo-->
                        <div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
                            <a href="../../demo1/dist/index.html" class="d-lg-none">
                                <img alt="Logo" src="<?= ADMIN_ASSETS ?>/media/logos/logo-2.svg" class="h-30px" />
                            </a>
                        </div>
                        <!--end::Mobile logo-->
                        <!--begin::Wrapper-->
                        <div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1">
                            <!--begin::Navbar-->
                            <div class="d-flex align-items-stretch" id="kt_header_nav">

                            </div>
                            <!--end::Navbar-->
                            <!--begin::Toolbar wrapper-->
                            <div class="d-flex align-items-stretch flex-shrink-0">

                                <!--begin::Activities-->

                                <!--end::Activities-->
                                <!--begin::Notifications-->

                                <!--end::Notifications-->
                                <!--begin::Chat-->

                                <!--end::Chat-->
                                <!--begin::Quick links-->

                                <!--end::Quick links-->
                                <!--begin::Theme mode-->

                                <!--end::Theme mode-->
                                <!--begin::User menu-->
                                <div class="d-flex align-items-center ms-1 ms-lg-3" id="kt_header_user_menu_toggle">
                                    <!--begin::Menu wrapper-->
                                    <div class="cursor-pointer symbol symbol-30px symbol-md-40px" data-kt-menu-trigger="click" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
                                        <img src="<?= ADMIN_ASSETS ?>/media/avatars/300-1.jpg" alt="user" />
                                    </div>
                                    <!--begin::User account menu-->
                                    <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-primary fw-bold py-4 fs-6 w-275px" data-kt-menu="true">
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-3 mb-1">
                                            <div class="menu-content d-flex align-items-center px-3">
                                                <!--begin::Avatar-->
                                                <div class="symbol symbol-50px me-5">
                                                    <img alt="Logo" src="<?= ADMIN_ASSETS ?>/media/avatars/300-1.jpg" />
                                                </div>
                                                <!--end::Avatar-->
                                                <!--begin::Username-->
                                                <?php $account = $this->model("usersModel")->getUserInformation($_SESSION['email']) ?>
                                                <div class="d-flex flex-column">
                                                    <div class="fw-bolder d-flex align-items-center fs-5">
                                                        <?= $account['name'] . " " . $account['surname'] ?>
                                                        <span class="badge badge-light-success fw-bolder fs-8 px-2 py-1 ms-2">Admin</span>
                                                    </div>
                                                    <a href="#" class="fw-bold text-muted text-hover-primary fs-7"><?= $account['email'] ?></a>
                                                </div>
                                                <!--end::Username-->
                                            </div>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu separator-->
                                        <div class="separator my-2"></div>

                                        <!--end::Menu separator-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-5" data-kt-menu-trigger="hover" data-kt-menu-placement="left-start">
                                            <a href="#" class="menu-link px-5">
                                                <span class="menu-title position-relative">Language
                                                    <span class="fs-8 rounded bg-light px-3 py-2 position-absolute translate-middle-y top-50 end-0">English
                                                        <img class="w-15px h-15px rounded-1 ms-2" src="<?= ADMIN_ASSETS ?>/media/flags/united-states.svg" alt="" /></span></span>
                                            </a>
                                            <!--begin::Menu sub-->
                                            <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="../../demo1/dist/account/settings.html" class="menu-link d-flex px-5 active">
                                                        <span class="symbol symbol-20px me-4">
                                                            <img class="rounded-1" src="<?= ADMIN_ASSETS ?>/media/flags/united-states.svg" alt="" />
                                                        </span>English</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="../../demo1/dist/account/settings.html" class="menu-link d-flex px-5">
                                                        <span class="symbol symbol-20px me-4">
                                                            <img class="rounded-1" src="<?= ADMIN_ASSETS ?>/media/flags/spain.svg" alt="" />
                                                        </span>Spanish</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="../../demo1/dist/account/settings.html" class="menu-link d-flex px-5">
                                                        <span class="symbol symbol-20px me-4">
                                                            <img class="rounded-1" src="<?= ADMIN_ASSETS ?>/media/flags/germany.svg" alt="" />
                                                        </span>German</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="../../demo1/dist/account/settings.html" class="menu-link d-flex px-5">
                                                        <span class="symbol symbol-20px me-4">
                                                            <img class="rounded-1" src="<?= ADMIN_ASSETS ?>/media/flags/japan.svg" alt="" />
                                                        </span>Japanese</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="../../demo1/dist/account/settings.html" class="menu-link d-flex px-5">
                                                        <span class="symbol symbol-20px me-4">
                                                            <img class="rounded-1" src="<?= ADMIN_ASSETS ?>/media/flags/france.svg" alt="" />
                                                        </span>French</a>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu sub-->
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-5 my-1">
                                            <a href="../../demo1/dist/account/settings.html" class="menu-link px-5">Account
                                                Settings</a>
                                        </div>
                                        <!--end::Menu item-->
                                        <!--begin::Menu item-->
                                        <div class="menu-item px-5">
                                            <a href="<?= ADMIN_URL ?>/giris/logout" class="menu-link px-5">Çıkış Yap</a>
                                        </div>

                                        <!--end::Menu item-->
                                    </div>
                                    <!--end::User account menu-->
                                    <!--end::Menu wrapper-->
                                </div>
                                <!--end::User menu-->
                                <!--begin::Header menu toggle-->

                                <!--end::Header menu toggle-->
                            </div>
                            <!--end::Toolbar wrapper-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Container-->
                </div>
                <!--end::Header-->