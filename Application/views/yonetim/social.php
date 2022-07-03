<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-6">
                    <div class="card card-docs">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-newspaper" style="margin-right: 10px;"></i>
                                Sosyal Medya Yönetimi</h3>
                            <div class="card-title"> <a href="<?= ADMIN_URL ?>social" class="btn btn-primary w-100"><i class="fa fa-plus"></i> Yeni
                                    Kayıt</a></div>
                        </div>
                        <div class="card-body">
                            <table id="kt_datatable_example_1" class="table table-striped table-row-bordered gy-5">
                                <thead>
                                    <tr class="fw-bold fs-6 text-muted">
                                        <th>Başlık</th>
                                        <th>İkon</th>
                                        <th>Link</th>
                                        <th>Renk</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    foreach ($param['social'] as $social) :
                                    ?>
                                        <tr>
                                            <td><?= $social['baslik'] ?></td>
                                            <td><?= $social['icon'] ?></td>
                                            <td><?= $social['url'] ?></td>
                                            <td><div style="width: 30px;height: 30px;background-color:<?= $social['bg-color'] ?> ;border-radius: 12px"></div></td>
                                            <td>
                                                <a href="<?= ADMIN_URL . "social/" . $social['id'] ?>" class="btn btn-sm btn-light-warning btn-icon" title="Düzenle">
                                                    <span class="svg-icon svg-icon-md">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                                            <path d="M490.3 40.4C512.2 62.27 512.2 97.73 490.3 119.6L460.3 149.7L362.3 51.72L392.4 21.66C414.3-.2135 449.7-.2135 471.6 21.66L490.3 40.4zM172.4 241.7L339.7 74.34L437.7 172.3L270.3 339.6C264.2 345.8 256.7 350.4 248.4 353.2L159.6 382.8C150.1 385.6 141.5 383.4 135 376.1C128.6 370.5 126.4 361 129.2 352.4L158.8 263.6C161.6 255.3 166.2 247.8 172.4 241.7V241.7zM192 63.1C209.7 63.1 224 78.33 224 95.1C224 113.7 209.7 127.1 192 127.1H96C78.33 127.1 64 142.3 64 159.1V416C64 433.7 78.33 448 96 448H352C369.7 448 384 433.7 384 416V319.1C384 302.3 398.3 287.1 416 287.1C433.7 287.1 448 302.3 448 319.1V416C448 469 405 512 352 512H96C42.98 512 0 469 0 416V159.1C0 106.1 42.98 63.1 96 63.1H192z" fill="#000000" fill-rule="nonzero" />
                                                        </svg>
                                                    </span>
                                                </a>
                                                <a href="javascript:;" onclick="del(<?= $social['id'] ?>)" class="btn btn-sm btn-light-danger btn-icon" title="Sil">
                                                    <span class="svg-icon svg-icon-md">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                                            <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                                            <path d="M135.2 17.69C140.6 6.848 151.7 0 163.8 0H284.2C296.3 0 307.4 6.848 312.8 17.69L320 32H416C433.7 32 448 46.33 448 64C448 81.67 433.7 96 416 96H32C14.33 96 0 81.67 0 64C0 46.33 14.33 32 32 32H128L135.2 17.69zM394.8 466.1C393.2 492.3 372.3 512 346.9 512H101.1C75.75 512 54.77 492.3 53.19 466.1L31.1 128H416L394.8 466.1z" fill="#000000" fill-rule="nonzero" />
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
                        </div>
                    </div>
                </div>
                <div class=" col-md-6">
                    <div class="card card-docs">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-add" style="margin-right: 10px;"></i>
                                Sosyal Medya ekle</h3>
                            <div class="card-title"> <?php
                                                        if ($param['media'] == null) {
                                                            echo '<button name="btn" type="button" id="button" data-type="add" class="btn btn-primary w-100"><i
                                class="fa fa-plus"></i>Ekle</button>';
                                                        } else {
                                                            echo '<button name="btn" type="button" id="button" data-type="edit" class="btn btn-primary w-100"><i
                                class="fa fa-plus"></i>Düzenle</button>';
                                                        }
                                                        ?></div>
                        </div>
                        <form id="socialForm">
                            <div class="card-body">
                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <label>Başlık</label>
                                        <input type="text" class="form-control" name="baslik" value="<?= $param['media']['baslik'] ?>">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Renk</label>
                                        <input type="color" class="form-control" name="bg-color" value="<?= $param['media']['bg-color'] ?>">
                                    </div>
                                </div>
                                <div class="row mb-5">
                                    <div class="col-md-6">
                                        <label>İkon</label>
                                        <select class="form-select select-picker select2-icon" data-control="select2" data-placeholder="Select an option" name="icon">
                                            <?php
                                            foreach (helper::iconpack() as $icons) :
                                                if ($param['media']['icon'] == $icons) {
                                                    $select = "selected";
                                                } else {
                                                    $select = "";
                                                }
                                            ?>
                                                <option <?= $select ?> value="<?= $icons ?>" data-icon="<?= $icons ?>"><i class="<?= $icons ?>"><?= $icons ?></i>
                                                </option>
                                            <?php
                                            endforeach;
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Hedef Link</label>
                                        <input type="text" class="form-control" name="url" value="<?= $param['media']['url'] ?>">
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
    function iformat(icon) {
        var originalOption = icon.element;
        return $('<span><i class="' + $(originalOption).data('icon') + '"></i> ' + icon.text + '</span>');
    }
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
                    url: "<?= ADMIN_URL ?>social/delete/" + id,
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
                                location.href = "<?= ADMIN_URL ?>social";
                            }, 1500);
                        }
                    }
                });
            }
        });

    }
    $(document).ready(() => {
        $('.select2-icon').select2({
            templateSelection: iformat,
            templateResult: iformat,
            allowHtml: true
        });
        $("button[name=btn]").on("click", () => {
            let form = $("#socialForm").serializeArray();
            let type = $("button[name=btn]").data("type");
            let uri = "";
            console.log(form);
            if (type == "add") {
                uri = "<?= ADMIN_URL ?>social/add";
            } else if (type == "edit") {
                uri = "<?= ADMIN_URL ?>social/edit/<?= $param['media']['id'] ?>"
            } else if (type == "delete") {
                uri = "<?= ADMIN_URL ?>social/delete/" + $("#button").data("id")
            }
            $.ajax({
                url: uri,
                type: "post",
                data: form,
                success: function(response) {
                    console.log(response);
                    let obj = JSON.parse(response);
                    Swal.fire({
                        text: "" + obj.message + "",
                        icon: "" + obj.type + ""

                    });
                    if (type == "add" ||
                        type == "delete") {
                        setTimeout(() => {
                            location.reload(true);
                        }, 2500);
                    }
                }
            });
        });
    });
</script>