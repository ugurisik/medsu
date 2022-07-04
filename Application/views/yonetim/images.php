<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="card card-docs my-3">
            <div class="card-header">

                <h3 class="card-title">Dosya Yönetimi</h3>
                <div class=" py-6 text-muted font-size-xs">
                    <div class="card-toolbar">
                        <div class="d-flex justify-content-end" data-kt-filemanager-table-toolbar="base">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_upload">
                                <span class="svg-icon svg-icon-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                        <path opacity="0.3" d="M10 4H21C21.6 4 22 4.4 22 5V7H10V4Z" fill="currentColor"></path>
                                        <path d="M10.4 3.60001L12 6H21C21.6 6 22 6.4 22 7V19C22 19.6 21.6 20 21 20H3C2.4 20 2 19.6 2 19V4C2 3.4 2.4 3 3 3H9.20001C9.70001 3 10.2 3.20001 10.4 3.60001ZM16 11.6L12.7 8.29999C12.3 7.89999 11.7 7.89999 11.3 8.29999L8 11.6H11V17C11 17.6 11.4 18 12 18C12.6 18 13 17.6 13 17V11.6H16Z" fill="currentColor"></path>
                                        <path opacity="0.3" d="M11 11.6V17C11 17.6 11.4 18 12 18C12.6 18 13 17.6 13 17V11.6H11Z" fill="currentColor"></path>
                                    </svg>
                                </span>
                                Dosya Yükle
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">

            <?php
            foreach ($param['images'] as $file) :
                $filename = explode("/", $file);

            ?>
                <div class="col-md-3 col-xl-3 col-lg-3 col-sm-6 col-xs-6">
                    <div class="card my-3 card-custom card-stretch">
                        <div class="card-header border-0">
                            <h3 class="card-title"></h3>
                            <div class="card-toolbar">
                                <a href="javascript:;" onclick="navigator.clipboard.writeText('<?= SITE_URL . $file ?>')" class="btn btn-sm btn-light-danger btn-icon mx-3" title="Link Kopyala">
                                    <span class="svg-icon svg-icon-md">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                            <!-- Font Awesome Pro 5.15.4 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) -->
                                            <path d="M433.941 65.941l-51.882-51.882A48 48 0 0 0 348.118 0H176c-26.51 0-48 21.49-48 48v48H48c-26.51 0-48 21.49-48 48v320c0 26.51 21.49 48 48 48h224c26.51 0 48-21.49 48-48v-48h80c26.51 0 48-21.49 48-48V99.882a48 48 0 0 0-14.059-33.941zM266 464H54a6 6 0 0 1-6-6V150a6 6 0 0 1 6-6h74v224c0 26.51 21.49 48 48 48h96v42a6 6 0 0 1-6 6zm128-96H182a6 6 0 0 1-6-6V54a6 6 0 0 1 6-6h106v88c0 13.255 10.745 24 24 24h88v202a6 6 0 0 1-6 6zm6-256h-64V48h9.632c1.591 0 3.117.632 4.243 1.757l48.368 48.368a6 6 0 0 1 1.757 4.243V112z" />
                                        </svg>
                                    </span>
                                </a>
                                <a href="javascript:;" onclick="delFile('<?= $file ?>')" class="btn btn-sm btn-light-danger btn-icon" title="Sil">
                                    <span class="svg-icon svg-icon-md">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                            <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                            <path d="M135.2 17.69C140.6 6.848 151.7 0 163.8 0H284.2C296.3 0 307.4 6.848 312.8 17.69L320 32H416C433.7 32 448 46.33 448 64C448 81.67 433.7 96 416 96H32C14.33 96 0 81.67 0 64C0 46.33 14.33 32 32 32H128L135.2 17.69zM394.8 466.1C393.2 492.3 372.3 512 346.9 512H101.1C75.75 512 54.77 492.3 53.19 466.1L31.1 128H416L394.8 466.1z" fill="#000000" fill-rule="nonzero"></path>
                                        </svg>
                                    </span>
                                </a>

                            </div>
                        </div>
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center">
                                <img alt="" class="max-h-65px" style="max-height: 65px;" src="<?= SITE_URL . $file ?>">
                                <span class="text-dark-75 font-weight-bold mt-15 font-size-lg">
                                    <?= $filename[count($filename) - 1] ?>
                                    <?= $fileext[1] ?>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            endforeach;
            ?>
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
            url: "<?= ADMIN_URL ?>files/uploadImages",
            paramName: "file",
            maxFiles: 5,
            acceptedFiles: ".png,.jpg,.gif,.bmp,.jpeg,.webp",
            maxFilesize: 5,
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