<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-docs">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-newspaper" style="margin-right: 10px;"></i>
                                Mail Şablonları</h3>

                        </div>
                        <div class="card-body">
                            <table id="kt_datatable_example_1" class="table table-striped table-row-bordered gy-5">
                                <thead>
                                    <tr class="fw-bold fs-6 text-muted">
                                        <th>Şablon</th>
                                        <th>Yanıt Adresi</th>
                                        <th>Admin Başlığı</th>
                                        <th>Şablon Mesajı</th>
                                        <th>Şablon Başlığı</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($param['schema'] as $schema) : ?>
                                        <tr>
                                            <td><?= $schema['schema_'] ?></td>
                                            <td><?= $schema['adminTitle'] ?></td>
                                            <td><?= helper::jdilWithLangs($schema['schemaTitle'], 1) ?></td>
                                            <td><?= helper::jdilWithLangs($schema['schemaMessage'], 1) ?></td>
                                            <td><?= helper::jdilWithLangs($schema['schemaTitle'], 1) ?></td>
                                            <td> <a href="<?= ADMIN_URL . "mail/edit/" . $schema['ID'] ?>" class="btn btn-sm btn-light-warning btn-icon" title="Düzenle">
                                                    <span class="svg-icon svg-icon-md">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                                            <path d="M490.3 40.4C512.2 62.27 512.2 97.73 490.3 119.6L460.3 149.7L362.3 51.72L392.4 21.66C414.3-.2135 449.7-.2135 471.6 21.66L490.3 40.4zM172.4 241.7L339.7 74.34L437.7 172.3L270.3 339.6C264.2 345.8 256.7 350.4 248.4 353.2L159.6 382.8C150.1 385.6 141.5 383.4 135 376.1C128.6 370.5 126.4 361 129.2 352.4L158.8 263.6C161.6 255.3 166.2 247.8 172.4 241.7V241.7zM192 63.1C209.7 63.1 224 78.33 224 95.1C224 113.7 209.7 127.1 192 127.1H96C78.33 127.1 64 142.3 64 159.1V416C64 433.7 78.33 448 96 448H352C369.7 448 384 433.7 384 416V319.1C384 302.3 398.3 287.1 416 287.1C433.7 287.1 448 302.3 448 319.1V416C448 469 405 512 352 512H96C42.98 512 0 469 0 416V159.1C0 106.1 42.98 63.1 96 63.1H192z" fill="#000000" fill-rule="nonzero" />
                                                        </svg>
                                                    </span>
                                                </a>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
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
    $(document).ready(() => {

    });
</script>