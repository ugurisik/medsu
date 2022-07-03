<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <form id="mailForm">
                    <div class="col-md-12">
                        <div class="card card-docs">
                            <div class="card-header">
                                <h3 class="card-title"><i class="fa fa-edit" style="margin-right: 10px;"></i>
                                    Mail Şablonu Düzenle</h3>
                                <div class="card-title">
                                    <?php
                                    if ($param['schema'] != null) {
                                    ?>
                                        <button type="button" id="button" data-type="edit" class="btn btn-primary w-100"><i class="fa fa-edit"></i> Düzenle</button>

                                    <?php
                                    } else {
                                    ?>
                                        <button type="button" id="button" data-type="add" class="btn btn-primary w-100"><i class="fa fa-plus"></i> Ekle</button>
                                    <?php
                                    }
                                    ?>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>Şablon Yanıt Adresi</label>
                                        <input type="text" name="receiverMail" value="<?= $param['schema']['receiverMail'] ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <label>Talebin İletileceği Admin E-Posta Adresi</label>
                                        <input type="text" name="adminMail" value="<?= $param['schema']['adminMail'] ?>" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Admin Başlığı</label>
                                        <input type="text" name="adminTitle" value="<?= $param['schema']['adminTitle'] ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>Admin Şablonu</label>
                                        <textarea data-type="html" name="adminSchema" class="form-control" name="admin_sablon"> <?= $param['schema']['adminSchema'] ?> </textarea>
                                    </div>
                                </div>
                                <div class="d-flex flex-column flex-md-row rounded border p-10">
                                    <ul class="nav nav-tabs nav-pills flex-row border-0 flex-md-column me-5 mb-3 mb-md-0 fs-6">

                                        <?php
                                        $c = 0;
                                        foreach ($param['langList'] as $lang) :
                                            if ($c % 2 == 0) {
                                                $activeshow = "btn-active-light-info  active";
                                            } else {
                                                $activeshow = "btn-active-light-danger";
                                            }
                                            $c++;
                                        ?>
                                            <li class="nav-item me-0 mb-md-2">
                                                <a class="nav-link btn btn-flex <?= $activeshow ?>" data-bs-toggle="tab" href="#tab<?= $lang['id'] ?>">
                                                    <span class="symbol symbol-20px me-4"> <img class="rounded-1" src="<?= ADMIN_ASSETS ?>/media/flags/<?= $lang['img'] ?>" alt=""></span>
                                                    <span class="d-flex flex-column align-items-start">
                                                        <span class="fs-4 fw-bolder">Şablon</span>
                                                        <span class="fs-7"><?= $lang['title'] ?></span>
                                                    </span>
                                                </a>
                                            </li>
                                        <?php
                                        endforeach;
                                        ?>
                                    </ul>
                                    <div class="tab-content w-100" id="myTabContent">
                                        <?php
                                        $c = 0;
                                        foreach ($param['langList'] as $lang) :
                                            if ($c % 2 == 0 and $c < 1) {
                                                $activeshow = "active show";
                                            } else {
                                                $activeshow = "";
                                            }
                                            $c++;
                                        ?>
                                            <div class="tab-pane fade <?= $activeshow ?>" id="tab<?= $lang['id'] ?>" role="tabpanel">
                                                <div class="row mb-5">
                                                    <div class="col-md-12">
                                                        <label>Şablon Başlığı <small>[Türkçe]</small></label>
                                                        <input type="text" name="schemaTitle[<?= $lang['id'] ?>]" class="form-control" value="<?= helper::jdilWithLangs($param['schema']['schemaTitle'], $lang['id']) ?>">
                                                    </div>
                                                </div>
                                                <div class="row mb-5">
                                                    <div class="col-md-12">
                                                        <label>Şablon Mesajı <small>[Türkçe]</small></label>
                                                        <input type="text" name="schemaMessage[<?= $lang['id'] ?>]" class="form-control" value="<?= helper::jdilWithLangs($param['schema']['schemaMessage'], $lang['id']) ?>">
                                                    </div>
                                                </div>
                                                <div class="row mb-5">
                                                    <div class="col-md-12">
                                                        <label>Şablon <small>[Türkçe]</small></label>
                                                        <textarea data-type="html" class="form-control" name="receiverSchema[<?= $lang['id'] ?>]"> <?= helper::jdilWithLangs($param['schema']['receiverSchema'], $lang['id']) ?> </textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php
                                        endforeach;
                                        ?>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.js"></script>
<script src="<?= ADMIN_ASSETS ?>/js/scripts.bundle.js"></script>
<script src="<?= ADMIN_ASSETS ?>/plugins/custom/tinymce/tinymce.bundle.js"></script>
<link href="<?= ADMIN_ASSETS ?>/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<script src="<?= ADMIN_ASSETS ?>/plugins/custom/datatables/datatables.bundle.js"></script>
<script src="https://cdn.tiny.cloud/1/78kblgeqqv269eeuitzc3vxyxvork5fiks180ajurxip9z33/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": true,
        "progressBar": true,
        "positionClass": "toastr-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };

    function tinymceset() {
        tinymce.init({
            mode: "textareas",
            selector: "textarea[data-type=html]",
            toolbar_mode: 'wrap',
            language: 'tr',
            fontsize_formats: "13px 14px 15px 16px 17px 18px 19px 20px 21px 22px 23px 24px 36px 40px 50px 60px 70px 72px",
            plugins: 'print preview paste importcss searchreplace autolink directionality code visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists wordcount imagetools textpattern noneditable help charmap quickbars emoticons responsivefilemanager',
            toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl responsivefilemanager | tools',
            toolbar_sticky: false,
            image_advtab: true,
            importcss_append: true,
            height: 600,
            image_caption: true,
            quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
            noneditable_noneditable_class: "mceNonEditable",
            contextmenu: "link image imagetools table",
            element_format: 'html',
            convert_urls: false,
            fullpage_default_doctype: '<!DOCTYPE html>'
        })
    }
    $("#kt_datatable_example_1").DataTable({
        paging: true,
        responsive: true,
        displayLength: 10,
    });
    $(document).ready(() => {
        tinymceset();
        $("#button").on("click", () => {
            tinymce.triggerSave();
            let form = $("#mailForm").serializeArray();
            let type = $("#button").data("type");
            console.log(type);
            let uri = "";
            if (type == "add") {
                uri = "<?= ADMIN_URL ?>mail/add";
            } else if (type == "edit") {
                uri = "<?= ADMIN_URL ?>mail/editSchema/<?= $param['schema']['ID'] ?>"
            }
            $.ajax({
                url: uri,
                type: "post",
                data: form,
                success: function(response) {
                    let obj = JSON.parse(response);
                    Swal.fire({
                        text: "" + obj.message + "",
                        icon: "" + obj.type + ""

                    });
                    if (obj.type == "success") {
                        setTimeout(() => {
                            location.href = "<?= SITE_URL ?>yonetim/mail"
                        }, 1500);
                    }
                }
            });
        });
    });
</script>