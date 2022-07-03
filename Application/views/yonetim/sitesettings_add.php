<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-docs">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-users" style="margin-right: 10px;"></i>
                                Site Ayarları</h3>
                            <div class="card-title"> <button type="button" class="btn btn-primary w-100" name="set"><i class="fa fa-edit"></i> Düzenle</button></div>
                        </div>
                    </div>
                </div>
            </div>
            <form id="settingsForm">
                <div class="row my-5">
                    <div class="col-md-6">
                        <div class="card card-docs">
                            <div class="card-header">
                                <h3 class="card-title"><i class="fa fa-users" style="margin-right: 10px;"></i>
                                    Site Bilgileri</h3>
                            </div>
                            <div class="card-body">
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>*Site Başlığı</label>
                                        <input value="<?= $param['settings']['title'] ?>" type="text" name="title" class="form-control">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>*Site Açıklama</label>
                                        <textarea  class="form-control" name="content" rows="5"><?= $param['settings']['content'] ?></textarea>
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>*Seo Kelimeler</label>
                                        <input value="<?php $tag = ""; foreach (json_decode($param['settings']['keywords'],true) as $tags) {
                                                $tag.= $tags['value'].",";
                                            } echo substr($tag,0,strlen($tag)-1); ?>" class="form-control" name="keywords"  id="kt_tagify_1" />
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <label>*Ayar Dili</label>
                                        <select class="form-select select-picker" name="langID" data-control="select2" data-placeholder="Select an option">
                                        <?php
                                        foreach ($param['langs'] as $lang) {
                                            if ($param['settings']['langID'] == $lang['id']) {
                                                $selected = "selected";
                                            }else{
                                                $selected = "";
                                            }
                                            echo '<option value="'.$lang['id'].'" '.$selected.'>'.$lang['title'].'</option>';
                                        }
                                        ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card card-docs">
                            <div class="card-header">
                                <h3 class="card-title"><i class="fa fa-users" style="margin-right: 10px;"></i>
                                    İletişim Bilgileri</h3>
                            </div>
                            <div class="card-body">
                                <div class="col-md-12">
                                    <div class="row mb-5">
                                        <div class="col-md-6">
                                            <label>Telefon</label>
                                            <input value="<?= $param['settings']['tel'] ?>" type="text" name="tel" class="form-control">
                                        </div>
                                        <div class="col-md-6">
                                            <label>Fax</label>
                                            <input value="<?= $param['settings']['fax'] ?>" type="text" name="fax" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-6">
                                            <label>GSM</label>
                                            <input value="<?= $param['settings']['gsm'] ?>" type="text" name="gsm" class="form-control">
                                        </div>
                                        <div class="col-md-6">
                                            <label>E-Posta</label>
                                            <input value="<?= $param['settings']['email'] ?>" type="text" name="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-6">
                                            <label>Harita Enlem</label>
                                            <input value="<?= $param['settings']['lat'] ?>" type="text" name="lng" class="form-control">
                                        </div>
                                        <div class="col-md-6">
                                            <label>Harita Boylam</label>
                                            <input value="<?= $param['settings']['lng'] ?>" type="text" name="lat" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-12">
                                            <label>Google Harita Link</label>
                                            <input value="<?= $param['settings']['map'] ?>" type="text" name="map" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-12">
                                            <label>Adres</label>
                                            <input value="<?= $param['settings']['address'] ?>" type="text" name="address" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
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
    $(document).ready(() => {
        var input1 = document.querySelector("#kt_tagify_1")
        new Tagify(input1)
        $("button[name=set]").on("click", () => {
            let form = $("#settingsForm").serializeArray();
            console.log(form);
            form.push(
                {
                    name:"id",
                    value:"<?= $param['settings']['id'] ?>"
                }
            );
            $.ajax({
                url: "<?= ADMIN_URL ?>sitesettings/settingsUpdate",
                type: "post",
                data: form,
                success: function(response) {
                    console.log(response);
                    let obj = JSON.parse(response);
                    Swal.fire({
                        text: "" + obj.message + "",
                        icon: "" + obj.type + ""

                    });
                    if (obj.type == "success") {
                        setTimeout(() => {
                            location.href = "<?= ADMIN_URL ?>sitesettings";
                        }, 1500);
                    }
                }
            });
        });
    });
</script>