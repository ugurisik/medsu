<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card card-docs">
                                <div class="card-header">
                                    <h3 class="card-title"><i class="fa fa-users" style="margin-right: 10px;"></i>
                                        Kullanıcılar</h3>
                                </div>
                                <div class="card-body">
                                    <table id="kt_datatable_example_1" class="table table-striped table-row-bordered gy-5">
                                        <thead>
                                            <tr class="fw-bold fs-6 text-muted">
                                                <th>İsim Soyisim</th>
                                                <th>Telefon</th>
                                                <th>E-Posta</th>
                                                <th>Firma</th>
                                                <th>Departman</th>
                                                <th>İşlemler</th>
                                                <th>Son Giriş Tarihi</th>
                                                <th>Son Giriş IP</th>
                                                <th>Son Giriş Cihaz</th>
                                                <th>Son Giriş Tarayıcı</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            foreach ($param['users'] as $user) :
                                                $lastlogin =  $this->model("loginModel")->lastLogin($user['id']);
                                            ?>
                                                <tr>
                                                    <td><?= $user['name'] ?> <?= $user['surname'] ?></td>
                                                    <td><?= $user['phone'] ?></td>
                                                    <td><?= $user['email'] ?></td>
                                                    <td><?= $user['company'] ?></td>
                                                    <td><?= $user['department'] ?></td>
                                                    <td>
                                                        <a href="<?= ADMIN_URL . "users/" . $user['id'] ?>" class="btn btn-sm btn-light-warning btn-icon" title="Düzenle">
                                                            <span class="svg-icon svg-icon-md">
                                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                                    <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                                                    <path d="M490.3 40.4C512.2 62.27 512.2 97.73 490.3 119.6L460.3 149.7L362.3 51.72L392.4 21.66C414.3-.2135 449.7-.2135 471.6 21.66L490.3 40.4zM172.4 241.7L339.7 74.34L437.7 172.3L270.3 339.6C264.2 345.8 256.7 350.4 248.4 353.2L159.6 382.8C150.1 385.6 141.5 383.4 135 376.1C128.6 370.5 126.4 361 129.2 352.4L158.8 263.6C161.6 255.3 166.2 247.8 172.4 241.7V241.7zM192 63.1C209.7 63.1 224 78.33 224 95.1C224 113.7 209.7 127.1 192 127.1H96C78.33 127.1 64 142.3 64 159.1V416C64 433.7 78.33 448 96 448H352C369.7 448 384 433.7 384 416V319.1C384 302.3 398.3 287.1 416 287.1C433.7 287.1 448 302.3 448 319.1V416C448 469 405 512 352 512H96C42.98 512 0 469 0 416V159.1C0 106.1 42.98 63.1 96 63.1H192z" fill="#000000" fill-rule="nonzero" />
                                                                </svg>
                                                            </span>
                                                        </a>
                                                        <a href="javascript:;" onclick="del(<?= $user['id'] ?>)" class="btn btn-sm btn-light-danger btn-icon" title="Sil">
                                                            <span class="svg-icon svg-icon-md">
                                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                                                    <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                                                    <path d="M135.2 17.69C140.6 6.848 151.7 0 163.8 0H284.2C296.3 0 307.4 6.848 312.8 17.69L320 32H416C433.7 32 448 46.33 448 64C448 81.67 433.7 96 416 96H32C14.33 96 0 81.67 0 64C0 46.33 14.33 32 32 32H128L135.2 17.69zM394.8 466.1C393.2 492.3 372.3 512 346.9 512H101.1C75.75 512 54.77 492.3 53.19 466.1L31.1 128H416L394.8 466.1z" fill="#000000" fill-rule="nonzero" />
                                                                </svg>
                                                            </span>
                                                        </a>
                                                    </td>
                                                    <td><?= $lastlogin['date'] ?></td>
                                                    <td><?= $lastlogin['ip'] ?></td>
                                                    <td><?= $lastlogin['os'] ?></td>
                                                    <td><?= $lastlogin['browser'] ?></td>
                                                </tr>
                                            <?php
                                            endforeach;
                                            ?>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mt-5">
                            <div class="card card-docs">
                                <div class="card-header">
                                    <h3 class="card-title"><i class="fa fa-user-cog" style="margin-right: 10px;"></i>Yetkiler</h3>
                                </div>
                                <div class="card-body d-flex flex-wrap">
                                    <div class="row">
                                        <?php
                                        foreach (helper::yetki() as $yetki) :

                                            if ($this->yetkiManager->usersYetki($yetki['short'], $param['user']['id'])) {
                                                $checked = "checked";
                                            } else {
                                                $checked = "";
                                            }
                                        ?>
                                            <div class="col-md-3">
                                                <div class="form-check form-check-custom form-check-success form-check-solid form-check-sm mb-3">
                                                    <label class="form-check-label d-flex align-items-center">
                                                        <input class="form-check-input mx-1" name="yetkiler" type="checkbox" <?= $checked ?> value="<?= $yetki['short'] ?>" />
                                                        <?= $yetki['title'] ?>
                                                    </label>
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
                </div>
                <div class="col-md-4">
                    <div class="card card-docs">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-user-edit" style="margin-right: 10px;"></i>Kullanıcı
                                Ekle</h3>
                            <div class="card-title"> <button type="button" class="btn btn-primary w-100" data-type="add" name="set"><i class="fa fa-plus"></i> Ekle</button></div>
                        </div>
                        <form id="userForm">
                            <div class="card-body">
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>*Profil Fotoğrafı</label>
                                        <div class="dropzone" id="profil">

                                            <div class="dz-message needsclick">
                                                <i class="bi bi-file-earmark-arrow-up text-primary fs-3x"></i>
                                                <div class="ms-4">
                                                    <h3 class="fs-5 fw-bolder text-gray-900 mb-1">
                                                        Görsel eklemek için sürükleyin ya da
                                                        tıklayın!</h3>
                                                </div>
                                            </div>
                                            <div class=" needsclick">
                                                <div class="dz-message justify-content-center">
                                                    <div class="dz-preview dz-image-preview">
                                                        <div class="dz-image"><img width="100%" data-dz-thumbnail="" alt="http://localhost/medsu/medsu/public/yonetim/assets/media/avatars/300-1.jpg" src="http://localhost/medsu/medsu/public/yonetim/assets/media/avatars/300-1.jpg"></div>
                                                        <div class="dz-details">
                                                            <div class="dz-size"></div>
                                                            <div class="dz-filename"><span data-dz-name="">http://localhost/medsu/medsu/public/yonetim/assets/media/avatars/300-1.jpg</span></div>
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
                                                            </svg> </div> <a onclick="deletaAvatar()" class="dz-remove" href="javascript:undefined;" data-dz-remove="">Dosyayı Sil</a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <label>*İsim</label>
                                        <input type="text" class="form-control" name="isim" value="<?= $param['user']['name'] ?>">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Soyisim</label>
                                        <input type="text" class="form-control" name="soyisim" value="<?= $param['user']['surname'] ?>">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <label>*E-Posta</label>
                                        <input type="text" class="form-control" name="email" value="<?= $param['user']['email'] ?>">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Telefon</label>
                                        <input type="text" class="form-control" name="telefon" value="<?= $param['user']['phone'] ?>">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <label>Firma</label>
                                        <input type="text" class="form-control" name="firma" value="<?= $param['user']['company'] ?>">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Departman</label>
                                        <input type="text" class="form-control" name="departman" value="<?= $param['user']['department'] ?>">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>Adres</label>
                                        <input type="text" class="form-control" name="adres" value="<?= $param['user']['address'] ?>">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <div class="fv-row passwordmeter" id="passwordmeter" data-kt-password-meter="true">
                                            <div class="mb-1">
                                                <label class="form-label mb-2">
                                                    *Şifre
                                                </label>
                                                <div class="position-relative mb-3">
                                                    <input class="form-control form-control-lg form-control-solid" type="password" placeholder="" name="new_password" autocomplete="off" />
                                                    <span class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2" data-kt-password-meter-control="visibility">
                                                        <i class="bi bi-eye-slash fs-2"></i>

                                                        <i class="bi bi-eye fs-2 d-none"></i>
                                                    </span>
                                                </div>
                                                <div class="d-flex align-items-center mb-3" data-kt-password-meter-control="highlight">
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2">
                                                    </div>
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2">
                                                    </div>
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2">
                                                    </div>
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-muted">
                                                Harf, sayı ve sembol karışımı ile 8 karakterden fazla karakter kullanın.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="fv-row passwordmeter" data-kt-password-meter="true">
                                            <div class="mb-1">
                                                <label class="form-label mb-2">
                                                    *Şifre Doğrula
                                                </label>
                                                <div class="position-relative mb-3">
                                                    <input class="form-control form-control-lg form-control-solid" type="password" placeholder="" name="renew_password" autocomplete="off" />
                                                    <span class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2" data-kt-password-meter-control="visibility">
                                                        <i class="bi bi-eye-slash fs-2"></i>

                                                        <i class="bi bi-eye fs-2 d-none"></i>
                                                    </span>
                                                </div>
                                                <div class="d-flex align-items-center mb-3" data-kt-password-meter-control="highlight">
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2">
                                                    </div>
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2">
                                                    </div>
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2">
                                                    </div>
                                                    <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-muted">
                                                Harf, sayı ve sembol karışımı ile 8 karakterden fazla karakter kullanın.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-5 d-none">

                                    <div class="col-md-12">
                                        <label>*Kullanıcı Durumu</label>
                                        <select class="form-select select-picker" name="status" data-control="select2" data-placeholder="Select an option">
                                            <option value="0">Pasif</option>
                                            <option value="1" selected>Aktif</option>
                                            <option value="2">Yasaklı</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>

<script src="<?= ADMIN_ASSETS ?>/plugins/global/plugins.bundle.js"></script>
<script src="<?= ADMIN_ASSETS ?>/js/scripts.bundle.js"></script>
<link href="<?= ADMIN_ASSETS ?>/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<script src="<?= ADMIN_ASSETS ?>/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
    $("#kt_datatable_example_1").DataTable({
        paging: true,
        responsive: true,
        displayLength: 10,
    });

    function del(id) {
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
                    name: "id",
                    value: id
                })
                $.ajax({
                    url: "<?= ADMIN_URL ?>users/userDelete",
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
                            setTimeout(() => {
                                location.href = "<?= ADMIN_URL ?>users";
                            }, 1500);
                        }
                    }
                });
            }
        });

    }

    function dropZone() {
        var myDropzone = new Dropzone("#profil", {
            url: "<?= ADMIN_URL ?>users/imageAdd",
            paramName: "file",
            maxFiles: 1,
            acceptedFiles: ".png,.jpg,.gif,.bmp,.jpeg,.webp",
            maxFilesize: 3,
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

    $(document).ready(() => {
        dropZone();


        $("button[name=set]").on("click", () => {
            let form = $("#userForm").serializeArray();

            let yetki = $("input[name=yetkiler]:checked").serializeArray();
            form.push({
                "name": "yetki",
                "value": yetki
            });
            let new_password = $("input[name=new_password]").val();
            let renew_password = $("input[name=renew_password]").val();
            let uri = "";
            if ("<?= $param['user'] ?>" != "") {
                uri = "<?= ADMIN_URL ?>users/userUpdate/<?= $param['user']['id'] ?>";
            } else {
                if (new_password != renew_password) {
                    Swal.fire({
                        text: "Şifreleriniz uyuşmuyor!",
                        icon: "warning"
                    });
                    error;
                } else if (new_password.length < 8) {
                    Swal.fire({
                        text: "Şifre karakter sayısı 8'den fazla olmalıdır!",
                        icon: "info"
                    });
                    error;
                } else {
                    uri = "<?= ADMIN_URL ?>users/userAdd";
                }
            }


            $.ajax({
                url: uri,
                type: "post",
                data: form,
                success: function(response) {
                    console.log(response);
                    let obj = JSON.parse(response);

                    if (obj.type == "success") {
                        
                        for (let index = 0; index < yetki.length; index++) {
                            let yetkidata = [{
                                    name: "yetki",
                                    value: yetki[index]['value']
                                },
                                {
                                    name: "userID",
                                    value: obj.userID
                                }
                            ];
                            $.ajax({
                                url: "<?= ADMIN_URL ?>users/yetkiEkle/",
                                type: "post",
                                data: yetkidata,
                                success: function(response) {
                                    console.log(response);
                                }
                            });
                        }
                        setTimeout(() => {
                            location.href = "<?= ADMIN_URL ?>users";
                        }, 3000);
                    }
                    Swal.fire({
                        text: "" + obj.message + "",
                        icon: "" + obj.type + ""
                    }).then((result) => {

                        if (result.isConfirmed) {
                            setTimeout(() => {
                                location.href = "<?= ADMIN_URL ?>users";
                            }, 1000);
                        }
                    });
                }
            });

        });
    });
</script>