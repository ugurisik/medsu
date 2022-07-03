<!--begin::Footer-->
<div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
    <!--begin::Container-->
    <div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">
        <!--begin::Copyright-->
        <div class="text-dark order-2 order-md-1">
            <span class="text-muted fw-bold me-1">
            <?php
            // compare two numbers
            if (date('Y') == '2022') {
                echo '2022©';
            } else {
                echo '2022 - ' . date('Y').'©';
            }
            ?>
            </span>
            <a href="https://www.internettescil.com.tr/" target="_blank" class="text-gray-800 text-hover-primary">İnternet Tescil</a>
        </div>
        <!--end::Copyright-->
        <!--begin::Menu-->
        <ul class="menu menu-gray-600 menu-hover-primary fw-bold order-1">
            <li class="menu-item">
                <a href="https://www.internettescil.com.tr/" target="_blank" class="menu-link px-2">Destek</a>
            </li>
        </ul>
        <!--end::Menu-->
    </div>
    <!--end::Container-->
</div>
<!--end::Footer-->
</div>
<!--end::Wrapper-->
</div>
<!--end::Page-->
</div>
<!--end::Root-->
<!--begin::Drawers-->

<!--end::Modal - Users Search-->
<!--end::Modals-->
<!--begin::Javascript-->
<script>
var hostUrl = "<?= ADMIN_ASSETS ?>/";
</script>
<!--begin::Global Javascript Bundle(used by all pages)-->



</body>
<!--end::Body-->

</html>