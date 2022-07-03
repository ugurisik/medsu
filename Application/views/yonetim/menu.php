<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="card card-docs">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-3 my-auto">
                            <span>Düzenlemek için bir menü seçin : </span>
                        </div>
                        <div class="col-sm-4 my-auto">
                            <select class="form-control form-select" name="menuID">
                                <option value="0">Menü seçin</option>
                                <?php
                                foreach ($param['menu'] as $menu) :
                                ?>
                                    <option value="<?= $menu['id'] ?>"><?= $menu['menu_title'] ?></option>
                                <?php
                                endforeach;
                                ?>
                            </select>
                        </div>
                        <div class="col-sm-4 my-auto">
                            <span>veya <a href="<?= ADMIN_URL ?>menu">yeni menü oluştur</a>. Değişiklikleri kaydetmeyi
                                unutmayın!</span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3 mt-5">
                    <div class="card card-docs">
                        <div class="card-body">
                            <div class="accordion accordion-icon-toggle" id="kt_accordion_2">
                                <div class="mb-5">
                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#sayfalar">
                                        <span class="accordion-icon"><span class="svg-icon svg-icon-4"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24" />
                                                        <path d="M12.2928955,6.70710318 C11.9023712,6.31657888 11.9023712,5.68341391 12.2928955,5.29288961 C12.6834198,4.90236532 13.3165848,4.90236532 13.7071091,5.29288961 L19.7071091,11.2928896 C20.085688,11.6714686 20.0989336,12.281055 19.7371564,12.675721 L14.2371564,18.675721 C13.863964,19.08284 13.2313966,19.1103429 12.8242777,18.7371505 C12.4171587,18.3639581 12.3896557,17.7313908 12.7628481,17.3242718 L17.6158645,12.0300721 L12.2928955,6.70710318 Z" fill="#000000" fill-rule="nonzero" />
                                                        <path d="M3.70710678,15.7071068 C3.31658249,16.0976311 2.68341751,16.0976311 2.29289322,15.7071068 C1.90236893,15.3165825 1.90236893,14.6834175 2.29289322,14.2928932 L8.29289322,8.29289322 C8.67147216,7.91431428 9.28105859,7.90106866 9.67572463,8.26284586 L15.6757246,13.7628459 C16.0828436,14.1360383 16.1103465,14.7686056 15.7371541,15.1757246 C15.3639617,15.5828436 14.7313944,15.6103465 14.3242754,15.2371541 L9.03007575,10.3841378 L3.70710678,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(9.000003, 11.999999) rotate(-270.000000) translate(-9.000003, -11.999999) " />
                                                    </g>
                                                </svg></span></span>
                                        <h3 class="fs-4 fw-bold mb-0 ms-4">Sayfalar</h3>
                                    </div>
                                    <div id="sayfalar" class="fs-6 collapse ps-10" data-bs-parent="#kt_accordion_2">
                                        <form id="menuPagef">
                                            <div class="form-group">
                                                <input class="form-control col-sm-12" type="text" name="pagekey" placeholder="İçerik Ara">
                                            </div>
                                            <div class="kt-portlet__body kt-scroll" data-scroll="true" style="height: 370px" id="menupage"></div>
                                            <div class="form-group float-left mt-4 mb-0 w-100 p2 pagination">
                                                <ul class="nav-pages"></ul>
                                            </div>
                                            <div class="form-group float-right mt-4 mb-0">
                                                <button type="button" name="menuPage" class="btn btn-outline-success">Menüye
                                                    Ekle</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="mb-5">
                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#yazilar">
                                        <span class="accordion-icon"><span class="svg-icon svg-icon-4"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24" />
                                                        <path d="M12.2928955,6.70710318 C11.9023712,6.31657888 11.9023712,5.68341391 12.2928955,5.29288961 C12.6834198,4.90236532 13.3165848,4.90236532 13.7071091,5.29288961 L19.7071091,11.2928896 C20.085688,11.6714686 20.0989336,12.281055 19.7371564,12.675721 L14.2371564,18.675721 C13.863964,19.08284 13.2313966,19.1103429 12.8242777,18.7371505 C12.4171587,18.3639581 12.3896557,17.7313908 12.7628481,17.3242718 L17.6158645,12.0300721 L12.2928955,6.70710318 Z" fill="#000000" fill-rule="nonzero" />
                                                        <path d="M3.70710678,15.7071068 C3.31658249,16.0976311 2.68341751,16.0976311 2.29289322,15.7071068 C1.90236893,15.3165825 1.90236893,14.6834175 2.29289322,14.2928932 L8.29289322,8.29289322 C8.67147216,7.91431428 9.28105859,7.90106866 9.67572463,8.26284586 L15.6757246,13.7628459 C16.0828436,14.1360383 16.1103465,14.7686056 15.7371541,15.1757246 C15.3639617,15.5828436 14.7313944,15.6103465 14.3242754,15.2371541 L9.03007575,10.3841378 L3.70710678,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(9.000003, 11.999999) rotate(-270.000000) translate(-9.000003, -11.999999) " />
                                                    </g>
                                                </svg></span></span>
                                        <h3 class="fs-4 fw-bold mb-0 ms-4">Yazılar</h3>
                                    </div>
                                    <div id="yazilar" class="collapse fs-6 ps-10" data-bs-parent="#kt_accordion_2">
                                        <form id="menuPostf">

                                            <div class="scroll scroll-pull" data-scroll="true" data-wheel-propagation="true" style="height: 300px" id="menupost">

                                                <?php
                                                foreach ($param['pages'] as $pages) :
                                                    foreach ($param['langs'] as $lang) :
                                                        if (strlen(helper::jdilWithLangs($pages['post_content'], $lang['id'])) > 0) :
                                                ?>
                                                            <div class="form-check form-check-custom form-check-success form-check-solid form-check-md mb-3">
                                                                <input class="form-check-input" name="posts[]" type="checkbox" value="<?= helper::jdilWithLangs($pages['post_slug'], $lang['id']) ?>" data-type="yazi" datatitle="<?= helper::jdilWithLangs($pages['post_title'], $lang['id']) ?>" />
                                                                <label class="form-check-label">
                                                                    <?= helper::kisaText(helper::jdilWithLangs($pages['post_content'], $lang['id']), 15) ?>
                                                                </label>
                                                            </div>
                                                <?php
                                                        endif;
                                                    endforeach;
                                                endforeach;
                                                ?>
                                                <?php
                                                foreach ($param['pages'] as $pages) :
                                                    foreach ($param['langs'] as $lang) :
                                                        if (strlen(helper::jdilWithLangs($pages['post_content'], $lang['id'])) > 0) :
                                                ?>
                                                            <div class="form-check form-check-custom form-check-success form-check-solid form-check-md mb-3">
                                                                <input class="form-check-input" name="posts[]" type="checkbox" value="<?= helper::jdilWithLangs($pages['post_slug'], $lang['id']) ?>" data-type="yazi" datatitle="<?= helper::jdilWithLangs($pages['post_title'], $lang['id']) ?>" />
                                                                <label class="form-check-label">
                                                                    <?= helper::kisaText(helper::jdilWithLangs($pages['post_content'], $lang['id']), 15) ?>
                                                                </label>
                                                            </div>
                                                <?php
                                                        endif;
                                                    endforeach;
                                                endforeach;
                                                ?>

                                                <?php
                                                foreach ($param['pages'] as $pages) :
                                                    foreach ($param['langs'] as $lang) :
                                                        if (strlen(helper::jdilWithLangs($pages['post_content'], $lang['id'])) > 0) :
                                                ?>
                                                            <div class="form-check form-check-custom form-check-success form-check-solid form-check-md mb-3">
                                                                <input class="form-check-input" name="posts[]" type="checkbox" value="<?= helper::jdilWithLangs($pages['post_slug'], $lang['id']) ?>" data-type="yazi" datatitle="<?= helper::jdilWithLangs($pages['post_title'], $lang['id']) ?>" />
                                                                <label class="form-check-label">
                                                                    <?= helper::kisaText(helper::jdilWithLangs($pages['post_content'], $lang['id']), 15) ?>
                                                                </label>
                                                            </div>
                                                <?php
                                                        endif;
                                                    endforeach;
                                                endforeach;
                                                ?>

                                            </div>

                                            <div class="form-group float-right mt-4 mb-0">
                                                <button type="button" id="menuPost" class="btn btn-outline-success">Menüye
                                                    Ekle</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="mb-5">
                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#baglantilar">
                                        <span class="accordion-icon"><span class="svg-icon svg-icon-4"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24" />
                                                        <path d="M12.2928955,6.70710318 C11.9023712,6.31657888 11.9023712,5.68341391 12.2928955,5.29288961 C12.6834198,4.90236532 13.3165848,4.90236532 13.7071091,5.29288961 L19.7071091,11.2928896 C20.085688,11.6714686 20.0989336,12.281055 19.7371564,12.675721 L14.2371564,18.675721 C13.863964,19.08284 13.2313966,19.1103429 12.8242777,18.7371505 C12.4171587,18.3639581 12.3896557,17.7313908 12.7628481,17.3242718 L17.6158645,12.0300721 L12.2928955,6.70710318 Z" fill="#000000" fill-rule="nonzero" />
                                                        <path d="M3.70710678,15.7071068 C3.31658249,16.0976311 2.68341751,16.0976311 2.29289322,15.7071068 C1.90236893,15.3165825 1.90236893,14.6834175 2.29289322,14.2928932 L8.29289322,8.29289322 C8.67147216,7.91431428 9.28105859,7.90106866 9.67572463,8.26284586 L15.6757246,13.7628459 C16.0828436,14.1360383 16.1103465,14.7686056 15.7371541,15.1757246 C15.3639617,15.5828436 14.7313944,15.6103465 14.3242754,15.2371541 L9.03007575,10.3841378 L3.70710678,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(9.000003, 11.999999) rotate(-270.000000) translate(-9.000003, -11.999999) " />
                                                    </g>
                                                </svg></span></span>
                                        <h3 class="fs-4 fw-bold mb-0 ms-4">Bağlantılar</h3>
                                    </div>
                                    <div id="baglantilar" class="collapse fs-6 ps-10" data-bs-parent="#kt_accordion_2">
                                        <div class="card-body">
                                            <div class="kt-portlet__body kt-scroll" data-scroll="true">
                                                <form id="formUrl" class="form-horizontal">
                                                    <div class="form-group">
                                                        <label for="text">Bağlantı Başlığı</label>
                                                        <div class="input-group">
                                                            <input type="text" class="form-control item-menu" name="text" id="text" placeholder="Text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="href">Bağlantı Adresi</label>
                                                        <input type="text" class="form-control item-menu" id="href" name="href" placeholder="URL">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="target">Bağlantı Tipi</label>
                                                        <select name="target" id="target" class="form-control item-menu kt-selectpicker">
                                                            <option value="_self">Self ( Aynı sekme içerisinde aç)
                                                            </option>
                                                            <option value="_blank">Blank (Yeni sekmede aç)</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group float-right mt-4 mb-0">
                                                        <input type="hidden" name="type" value="url">
                                                        <button type="button" id="linkAdd" class="btn btn-sm btn-success">Menüye Ekle</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-5">
                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#kategoriler">
                                        <span class="accordion-icon"><span class="svg-icon svg-icon-4"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24" />
                                                        <path d="M12.2928955,6.70710318 C11.9023712,6.31657888 11.9023712,5.68341391 12.2928955,5.29288961 C12.6834198,4.90236532 13.3165848,4.90236532 13.7071091,5.29288961 L19.7071091,11.2928896 C20.085688,11.6714686 20.0989336,12.281055 19.7371564,12.675721 L14.2371564,18.675721 C13.863964,19.08284 13.2313966,19.1103429 12.8242777,18.7371505 C12.4171587,18.3639581 12.3896557,17.7313908 12.7628481,17.3242718 L17.6158645,12.0300721 L12.2928955,6.70710318 Z" fill="#000000" fill-rule="nonzero" />
                                                        <path d="M3.70710678,15.7071068 C3.31658249,16.0976311 2.68341751,16.0976311 2.29289322,15.7071068 C1.90236893,15.3165825 1.90236893,14.6834175 2.29289322,14.2928932 L8.29289322,8.29289322 C8.67147216,7.91431428 9.28105859,7.90106866 9.67572463,8.26284586 L15.6757246,13.7628459 C16.0828436,14.1360383 16.1103465,14.7686056 15.7371541,15.1757246 C15.3639617,15.5828436 14.7313944,15.6103465 14.3242754,15.2371541 L9.03007575,10.3841378 L3.70710678,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(9.000003, 11.999999) rotate(-270.000000) translate(-9.000003, -11.999999) " />
                                                    </g>
                                                </svg></span></span>
                                        <h3 class="fs-4 fw-bold mb-0 ms-4">Kategoriler</h3>
                                    </div>
                                    <div id="kategoriler" class="collapse fs-6 ps-10" data-bs-parent="#kt_accordion_2">
                                        <div class="card-body">
                                            <form id="postCat">
                                                <div class="kt-portlet__body kt-scroll" data-scroll="true">
                                                    kategoriler
                                                </div>
                                                <div class="form-group float-right mt-4 mb-0">
                                                    <button type="button" name="menuCat" data-type="postkat" class="btn btn-outline-success">Menüye Ekle</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-5">
                    <div class="card card-docs">
                        <div class="card-header">
                            <div class="col-md-4 pr-3">
                                <label>Menü İsmi</label>
                                <input class="form-control " type="text" name="title" value="<?php if ($process == "edit") {
                                                                                                    echo $menu['menu_title'];
                                                                                                } ?>">
                                <input type="hidden" class="form-control" name="id" value="<?php echo $menu['id']; ?>">
                            </div>
                            <div class="col-md-5">
                                <label>Menü Dili</label>
                                <select class="form-select select-picker" id="floatingSelect">
                                    <?php 
                                    foreach ($param['langs'] as $lang) {
                                        echo '<option value="'.$lang['id'].'">'.$lang['title'].'</option>';
                                    }
                                    ?>
                                   
                                </select>
                            </div>
                            <div class="col-md-2 " style="    display: flex;align-content: center;justify-content: flex-end;align-items: center;">
                                <button type="button" class="btn btn-success" data-type="add" name="set"><i class="fa fa-plus"></i> Ekle</button>
                            </div>
                        </div>
                        <div class="card-body">
                            <ul id="myEditor" class="sortableLists list-group"></ul>
                            <div class="row my-3">
                                <div class="col-md-3" style="display: flex;align-content: center;justify-content: flex-end;align-items: center;">
                                    Menü Pozisyonları
                                </div>
                                <div class="col-md-9">
                                    <div class="form-check form-check-custom form-check-success form-check-solid form-check-md mb-3">

                                        <label class="form-check-label">
                                            <input class="form-check-input" type="radio" name="position" value="1" />
                                            Üst Menü (Header)
                                        </label>
                                    </div>
                                    <div class="form-check form-check-custom form-check-success form-check-solid form-check-md">

                                        <label class="form-check-label">
                                            <input class="form-check-input" type="radio" name="position" value="2" />
                                            Alt Menü (Footer)
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mt-5">
                    <div class="card card-docs">
                        <div class="card-header">
                            <span class="card-title"> Düzenle </span>
                        </div>
                        <div class="card-body">
                            <div class="kt-portlet__body kt-scroll" data-scroll="true">
                                <form id="formEdit" class="form-horizontal">
                                    <div class="form-group">
                                        <label for="text">Bağlantı Başlığı</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control item-menu" name="text" id="text" placeholder="Text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="href">Bağlantı Adresi</label>
                                        <input type="text" class="form-control item-menu" id="href" name="href" placeholder="URL">
                                    </div>
                                    <div class="form-group">
                                        <label for="target">Bağlantı Tipi</label>
                                        <select name="target" id="target" class="form-control item-menu kt-selectpicker">
                                            <option value="_self">Self ( Aynı sekme içerisinde aç)
                                            </option>
                                            <option value="_blank">Blank (Yeni sekmede aç)</option>
                                        </select>
                                    </div>
                                    <div class="form-group float-right mt-4 mb-0">
                                        <input type="hidden" name="type" value="url">
                                        <button type="button" id="btnUpdate" class="btn btn-warning">Güncelle</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.js"></script>
<script src="<?= ADMIN_ASSETS ?>/js/scripts.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" integrity="sha512-6PM0qYu5KExuNcKt5bURAoT6KCThUmHRewN3zUFNaoI6Di7XJPTMoT6K0nsagZKk2OB4L7E3q1uQKHNHd4stIQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="<?= ADMIN_ASSETS ?>/plugins/custom/bootstrap-iconpicker/js/bootstrap-iconpicker.min.js" type="text/javascript"></script>
<script src="<?= ADMIN_ASSETS ?>/plugins/custom/menu-editor/jquery-menu-editor.min.js" type="text/javascript"></script>
<script>
    $(document).ready(() => {
        var iconPickerOptions = {
            searchText: "",
            labelHeader: "{0}/{1}"
        };
        var sortableListOptions = {
            placeholderCss: {
                'background-color': "#cccccc"
            }
        };
        var editor = new MenuEditor('myEditor', {
            listOptions: sortableListOptions,
            iconPicker: iconPickerOptions
        });
        editor.setForm($('#formEdit'));
        editor.setUpdateButton($('#btnUpdate'));


        $('#linkAdd').click(function() {
            let menu = $("#formUrl").serializeArray();
            let data = [{
                "text": menu[0].value,
                "href": menu[1].value,
                "target": menu[2].value,
                "type": menu[3].value,
            }];
            editor.ekle(data);
            console.log(editor.getString());
        });



        $('#menuPost').click(function() {
            $.each($("input[name='posts[]']:checked"), function() {
                editor.ekle([{
                    "text": $(this).attr('datatitle'),
                    "href": $(this).val(),
                    "target": "_self",
                    "type": "yazi"
                }]);
            });

        });

        $('button[name=set]').click(() => {
            let title = $("input[name=title]").val();
            let lang = $("#floatingSelect option:selected").val();
            let position = $("input[name=position]:checked").val();
            if (editor.getString().length > 2) {
                if (title != "") {
                    if (position != undefined) {
                        let data = [{
                                name: "menu",
                                value: editor.getString()
                            },
                            {
                                name: "title",
                                value: title
                            }, {
                                name: "lang",
                                value: lang
                            }, {
                                name: "position",
                                value: position
                            }
                        ];
                        $.ajax({
                            type: "POST",
                            url: "<?= ADMIN_URL ?>menu/setMenuData",
                            data: data,
                            success: function(response) {
                                console.log(response);
                                let obj = JSON.parse(response);
                                if (obj.errortype == "update") {
                                    let data = JSON.parse(obj.data);
                                    console.log(data.menu);
                                    Swal.fire({
                                        text: "" + obj.message + "",
                                        icon: "" + obj.type + "",
                                        showDenyButton: true,
                                        confirmButtonText: 'Evet Güncelle',
                                        denyButtonText: `Hayır`,

                                    }).then((result) => {

                                        if (result.isConfirmed) {
                                            Swal.fire('Saved!', '', 'success')
                                            let data_ = [{
                                                name: "menu",
                                                value: data.menu
                                            }, {
                                                name: "title",
                                                value: title
                                            }, {
                                                name: "lang",
                                                value: lang
                                            }, {
                                                name: "position",
                                                value: position
                                            }];
                                            $.ajax({
                                                type: "POST",
                                                url: "<?= ADMIN_URL ?>menu/updateMenuData",
                                                data: data_,
                                                success: function(response) {
                                                    let obj_update = JSON.parse(response);
                                                    Swal.fire({
                                                        text: "" + obj_update.message + "",
                                                        icon: "" + obj_update.type + ""
                                                    });
                                                }
                                            });
                                        } else if (result.isDenied) {
                                            Swal.fire('Güncelleme İptal Edildi', '', 'info')
                                        }
                                    });
                                } else {
                                    Swal.fire({
                                        text: "" + obj.message + "",
                                        icon: "" + obj.type + ""
                                    });
                                }
                                console.log(obj);
                                console.log(editor.getString());
                            }
                        });
                    } else {
                        Swal.fire({
                            text: "Lütfen menü pozisyonu seçiniz!",
                            icon: "warning"

                        });
                    }
                } else {
                    Swal.fire({
                        text: "Lütfen menü ismi giriniz!",
                        icon: "warning"

                    });
                }
            }
        });

        $('select[name=menuID]').on("change", () => {
            if ($('select[name=menuID]').val() != 0) {
                $("#myEditor").html("");
                $.ajax({
                    type: "POST",
                    url: "<?= ADMIN_URL ?>menu/getMenuData/" + $('select[name=menuID]').val(),
                    data: "",
                    success: function(response) {
                        let obj = JSON.parse(response);
                        editor.setData(obj.menu_json);
                        $("input[name=title]").val(obj.menu_title)
                        $('#floatingSelect option[value="' + obj.menu_langID + '"]').prop("selected", true);
                        $('input[name=position][value=' + obj.menu_position + ']').prop("checked", true);
                        console.log(obj);
                    }
                });
            }
        });
        $('#btnUpdate').click(function() {
            editor.update();
        });

    });
</script>