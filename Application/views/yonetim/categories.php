<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="card card-docs my-3">
            <div class="card-header">

                <h3 class="card-title">Kategori Yönetimi</h3>
                <div class=" py-6 text-muted font-size-xs">
                    <div class="card-toolbar">
                        <div class="d-flex align-items-center">
                            <!--begin::Button-->
                            <a href="<?= ADMIN_URL ?>/kategori/ekle/<?= $param['tur'] ?>" class="btn btn-white btn-outline-primary font-weight-bold px-2 px-lg-5 mr-2">
                                <span class="svg-icon svg-icon-success svg-icon-lg">
                                    <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                        <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                        <path d="M432 256c0 17.69-14.33 32.01-32 32.01H256v144c0 17.69-14.33 31.99-32 31.99s-32-14.3-32-31.99v-144H48c-17.67 0-32-14.32-32-32.01s14.33-31.99 32-31.99H192v-144c0-17.69 14.33-32.01 32-32.01s32 14.32 32 32.01v144h144C417.7 224 432 238.3 432 256z" />
                                    </svg>
                                    <!--end::Svg Icon-->
                                </span>Kategori Ekle</a>
                            <!--end::Button-->
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">


            <div class="col-md-6 col-xl-6 col-lg-6 col-sm-12 col-xs-12">
                <div class="card card-custom gutter-b">
                    <div class="card-header flex-wrap py-3">
                        <div class="card-title">
                            <h3 class="card-label">Kategoriler
                        </div>
                    </div>
                    <div class="card-body">
                        <!--begin: Datatable-->
                        <table id="kt_datatable_example_1" class="table table-striped table-row-bordered gy-5">
                            <thead>
                                <tr class="fw-bold fs-6 text-muted">
                                    <th class="w-10px text-center">ID</th>
                                    <th class="text-start">Başlık</th>
                                    <th class="text-end w-50px">İşlem</th>

                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($param['categories'] as $categories) :
                                ?>
                                    <tr>
                                        <td class="text-center"><?= $categories['id'] ?></td>
                                        <td class="text-start"><?= helper::jdil($categories['title']) ?></td>

                                        <td>
                                            <a href="<?= ADMIN_URL ?>post/categories/<?= $categories['id'] ?>" class="btn btn-sm btn-clean btn-icon mr-2" title="Düzenle">
                                                <span class="svg-icon svg-icon-md">
                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                            <rect x="0" y="0" width="24" height="24" />
                                                            <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero" \ transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) " />
                                                            <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1" />
                                                        </g>
                                                    </svg>
                                                </span>
                                            </a>
                                            <a href="javascript:;" onclick="sil('<?= $kat['id'] ?>','kategori','<?= $param['tur'] ?>')" class="btn btn-sm btn-clean btn-icon" title="Sil">
                                                <span class="svg-icon svg-icon-md">
                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                            <rect x="0" y="0" width="24" height="24" />
                                                            <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero" />
                                                            <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3" />
                                                        </g>
                                                    </svg>
                                                </span>
                                            </a>

                                        </td>
                                    </tr>
                                <?php
                                endforeach;
                                ?>

                            </tbody>
                        </table>
                        <!--end: Datatable-->
                    </div>
                </div>
            </div>

        </div>

    </div>
    <div class="modal fade" id="kt_modal_upload" tabindex="-1" aria-hidden="true">
        <!--begin::Modal dialog-->
        <div class="modal-dialog modal-dialog-centered mw-650px">
            <!--begin::Modal content-->
            <div class="modal-content">
                <!--begin::Form-->
                <form class="form" action="none" id="kt_modal_upload_form">
                    <!--begin::Modal header-->
                    <div class="modal-header">
                        <!--begin::Modal title-->
                        <h2 class="fw-bolder">Upload files</h2>
                        <!--end::Modal title-->
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-icon-primary" data-bs-dismiss="modal">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                            <span class="svg-icon svg-icon-1">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
                                    <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
                                </svg>
                            </span>
                            <!--end::Svg Icon-->
                        </div>
                        <!--end::Close-->
                    </div>
                    <!--end::Modal header-->
                    <!--begin::Modal body-->
                    <div class="modal-body pt-10 pb-15 px-lg-17">
                        <!--begin::Input group-->
                        <div class="form-group">
                            <!--begin::Dropzone-->
                            <div class="dropzone" id="modal_upload">

                                <div class="dz-message needsclick">
                                    <i class="bi bi-file-earmark-arrow-up text-primary fs-3x"></i>
                                    <div class="ms-4">
                                        <h3 class="fs-5 fw-bolder text-gray-900 mb-1">
                                            Dosya eklemek için sürükleyin ya da
                                            tıklayın!</h3>
                                    </div>
                                </div>
                                <div class=" needsclick">
                                    <div class="dz-message justify-content-center">
                                        <div class="dz-preview dz-image-preview">
                                            <div class="dz-image">
                                                <img width="100%" onerror="if (this.src == null || '<?= SITE_URL ?>') this.src = '<?= SITE_URL ?>public/yonetim/assets/media/avatars/blank.png';" data-dz-thumbnail="" alt="<?= SITE_URL . $param['user']['image'] ?>" src="<?= SITE_URL . $param['user']['image'] ?>">

                                            </div>
                                            <div class="dz-details">
                                                <div class="dz-size"></div>
                                                <div class="dz-filename"><span data-dz-name=""><?= $param['user']['image'] ?></span></div>
                                            </div>

                                            <div class="dz-error-message"><span data-dz-errormessage=""></span></div>
                                            <div class="dz-success-mark"> <svg width="54px" height="54px" viewBox="0 0 54 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>Check</title>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <path d="M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z" stroke-opacity="0.198794158" stroke="#747474" fill-opacity="0.816519475" fill="#FFFFFF"></path>
                                                    </g>
                                                </svg> </div>
                                            <div class="dz-error-mark"> <svg width="54px" height="54px" viewBox="0 0 54 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>Error</title>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <g stroke="#747474" stroke-opacity="0.198794158" fill="#FFFFFF" fill-opacity="0.816519475">
                                                            <path d="M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z"></path>
                                                        </g>
                                                    </g>
                                                </svg> </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--end::Dropzone-->
                            <!--begin::Hint-->
                            <span class="form-text fs-6 text-muted">Max file size is 1MB per file.</span>
                            <!--end::Hint-->
                        </div>
                        <!--end::Input group-->
                    </div>
                    <!--end::Modal body-->
                </form>
                <!--end::Form-->
            </div>
        </div>
    </div>
</div>

<script src="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.js"></script>
<script src="<?= ADMIN_ASSETS ?>/js/scripts.bundle.js"></script>
<link href="<?= ADMIN_ASSETS ?>/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<script src="<?= ADMIN_ASSETS ?>/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
    $(".table").DataTable({
        paging: true,
        responsive: true,
        displayLength: 10,
    });
</script>
<script>
    function delFile(path) {
        Swal.fire({
            text: "Silmek istediğinize emin misiniz?",
            icon: "info",
            showDenyButton: true,
            confirmButtonText: 'Evet Sil',
            denyButtonText: `Hayır`,
        }).then((result) => {

            if (result.isConfirmed) {
                let data = [];
                data.push({
                    name: "filepath",
                    value: path
                })
                $.ajax({
                    url: "<?= ADMIN_URL ?>files/deleteFiles",
                    type: "post",
                    data: data,
                    success: function(response) {
                        console.log(response);
                        let obj = JSON.parse(response);
                        Swal.fire({
                            text: "" + obj.message + "",
                            icon: "" + obj.type + ""

                        });
                        if (obj.type == "success") {
                            setTimeout(function() {
                                location.reload();
                            }, 2000);
                        }
                    }
                });
            }
        });
    }

    function dropZone() {
        var myDropzone = new Dropzone("#modal_upload", {
            url: "<?= ADMIN_URL ?>files/uploadFile",
            paramName: "file",
            maxFiles: 5,
            maxFilesize: 150,
            addRemoveLinks: true,
            dictDefaultMessage: 'Yüklemek istediğiniz dosyaları buraya bırakın',
            dictFallbackMessage: "Tarayıcınız sürükle bırak yüklemelerini desteklemiyor",
            dictFileTooBig: "Dosya boyutu çok büyük ({{filesize}} Mb). Yükleyebileceğiniz en büyük dosya boyutu: {{maxFilesize}} Mb.",
            dictInvalidFileType: "Bu tür dosyaları yükleyemezsiniz",
            dictResponseError: "Sunucu hatası. Hata kodu : {{statusCode}}",
            dictCancelUpload: "Yüklemeyi İptal Et",
            dictUploadCanceled: "Yükleme iptal edildi",
            dictCancelUploadConfirmation: "Bu yüklemeyip iptal etmek istediğinizden emin misiniz ?",
            dictRemoveFile: "Dosyayı Sil",
            dictMaxFilesExceeded: "Başka dosya yükleyemezsiniz.",
            init: function() {

                this.on("success", function(file, responseText) {

                    console.log(responseText);

                });
            },
            accept: function(file, done) {
                done();
            }

        });
    }
    $(document).ready(function() {
        dropZone();
    });
</script>