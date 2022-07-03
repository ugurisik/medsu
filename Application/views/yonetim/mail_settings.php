<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <form id="mailSettings">
                <div class="row justify-content-center">
                    <form id="mailSettings">
                        <div class="col-md-6">
                            <div class="card card-docs">
                                <div class="card-header">
                                    <h3 class="card-title"><i class="fa fa-add" style="margin-right: 10px;"></i>
                                        Mail Ayarları</h3>
                                    <div class="card-title"> <button type="button" id="button"
                                            class="btn btn-primary w-100"><i class="fa fa-edit"></i> Güncelle</button>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-5">
                                        <div class="col-md-12">
                                            <label>Giden Sunucu Adresi</label>
                                            <input type="text" name="host" class="form-control"
                                                value="<?= $param['settings']['host'] ?>">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-12">
                                            <label>Giden Sunucu Portu</label>
                                            <input type="text" name="port" class="form-control"
                                                value="<?= $param['settings']['port'] ?>">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-12">
                                            <label>SSL</label>
                                            <input type="text" name="encryption" class="form-control"
                                                value="<?= $param['settings']['encryption'] ?>">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-12">
                                            <label>Gönderici Mail Adresi</label>
                                            <input type="text" name="mail" class="form-control"
                                                value="<?= $param['settings']['mail'] ?>">
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-12">
                                            <label>Gönderici Mail Şifresi</label>
                                            <input type="password" name="pass" class="form-control"
                                                value="<?= $param['settings']['pass'] ?>">
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
function iformat(icon) {
    var originalOption = icon.element;
    return $('<span><i class="' + $(originalOption).data('icon') + '"></i> ' + icon.text + '</span>');
}
$("#kt_datatable_example_1").DataTable({
    paging: true,
    responsive: true,
    displayLength: 10,
});
$(document).ready(() => {
    $('.select2-icon').select2({
        templateSelection: iformat,
        templateResult: iformat,
        allowHtml: true
    });
    $("#button").on("click", () => {
        let form = $("#mailSettings").serializeArray();
        $.ajax({
            url: "<?= ADMIN_URL ?>mail/settingsEdit",
            type: "post",
            data: form,
            success: function(response) {
                console.log(response);
                let obj = JSON.parse(response);
                Swal.fire({
                    text: "" + obj.message + "",
                    icon: "" + obj.type + ""

                });
            }
        });
    });
});
</script>