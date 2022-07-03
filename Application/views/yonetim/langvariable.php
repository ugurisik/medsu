<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-docs">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-users" style="margin-right: 10px;"></i>
                                Dile Göre Kelimeler</h3>
                            <div class="card-title"> <button type="button" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#addvariable"><i class="fa fa-plus"></i> Yeni
                                    Kayıt</button></div>
                        </div>
                        <div class="card-body">
                            <table id="kt_datatable_example_1" class="table table-striped table-row-bordered gy-5">
                                <thead>
                                    <tr class="fw-bold fs-6 text-muted">
                                        <th>Kelime</th>
                                        <?php
                                        foreach ($param['langlist'] as $lang) {
                                            echo '<th>' . $lang['title'] . '</th>';
                                        }
                                        ?>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($param['variables'] as $variable) :  ?>
                                        <tr>
                                            <td class="px-5"><?= $variable['type'] ?> <br></td>
                                            <?php
                                            foreach ($param['langlist'] as $lang) :
                                            ?>
                                                <td><input type="text" name="variableUpdate" data-langs="<?= $lang['id'] ?>" data-type="<?= $variable['type'] ?>" class="form-control <?= $variable['type'] ?>" value="<?= helper::jdilWithLangs($variable['type_meta'], $lang['id']) ?>">
                                                </td>
                                            <?php
                                            endforeach;
                                            ?>
                                        </tr>
                                    <?php endforeach;  ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" tabindex="-1" id="addvariable">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="variableForm">
                    <div class="modal-header">
                        <h5 class="modal-title">Kelime Ekle</h5>
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <span class="svg-icon svg-icon-2x"></span>
                        </div>
                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <label>Kelime Kısa Adı</label>
                                <input type="text" name="short" class="form-control">
                            </div>
                        </div>
                        <div class="row my-5">
                            <?php
                            foreach ($param['langlist'] as $lang) :
                            ?>
                                <div class="col-md-6">
                                    <label>Kelime(<?= $lang['title'] ?>)</label>
                                    <input type="text" name="word[<?= $lang['id'] ?>]" class="form-control">
                                </div>
                            <?php
                            endforeach;
                            ?>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Kapat</button>
                        <button type="button" id="button" class="btn btn-primary">Ekle</button>
                    </div>
                </form>
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

    $(document).ready(() => {
        $("input[name=variableUpdate]").on("change keyup", function() {
            let type = $(this).data("type");
            let this_ = $(this);
            let inputs = document.getElementsByClassName(type);
            let data = '{';
            for (let index = 0; index < inputs.length; index++) {
                let i = $(inputs[index]).data("langs");
                data += '"' + i + '":"' + $(inputs[index]).val() + '",';
            }
            data = data.slice(0, -1);
            data += "}";

            let d = [];
            d.push({
                "name": "variables",
                "value": data
            }, {
                "name": "type",
                "value": type
            });
            $.ajax({
                url: "<?= ADMIN_URL ?>langs/updateVariable",
                type: "post",
                data: d,
                success: function(response) {
                    let obj = JSON.parse(response);
                    if (obj.type == "success") {
                        $(this_).addClass("is-valid");
                        $(this_).removeClass("is-invalid");
                    } else {
                        $(this_).addClass("is-invalid");
                        $(this_).removeClass("is-valid");
                    }
                }
            });
        });
        $("#button").on("click", () => {
            let form = $("#variableForm").serializeArray();
            $.ajax({
                url: "<?= ADMIN_URL ?>langs/addVariable",
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