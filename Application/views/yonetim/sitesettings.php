<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-docs">
                        <div class="card-header">
                            <h3 class="card-title"><i class="fa fa-users" style="margin-right: 10px;"></i>
                                Site Ayarları</h3>

                        </div>
                        <div class="card-body">
                            <table id="kt_datatable_example_1" class="table table-striped table-row-bordered gy-5">
                                <thead>
                                    <tr class="fw-bold fs-6 text-muted">
                                        <th>ID</th>
                                        <th>Ayar Dili</th>
                                        <th>Başlık</th>
                                        <th>Açıklama</th>
                                        <th>Seo Kelimeler</th>
                                        <th>İletişim Telefon</th>
                                        <th>İletişim Fax</th>
                                        <th>İletişim GSM</th>
                                        <th>İletişim E-Posta</th>
                                        <th>İletişim Harita Enlem</th>
                                        <th>İletişim Harita Boylam</th>
                                        <th>İletişim Map Link</th>
                                        <th>İletişim Adres</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    foreach ($param['settings'] as $setting) :
                                    ?>
                                        <tr>
                                            <td><?= $setting['id'] ?></td>
                                            <td><?= $setting['langID'] ?></td>
                                            <td><?= $setting['title'] ?></td>
                                            <td><?= $setting['content'] ?></td>
                                            <td><?php $tag = ""; foreach (json_decode($setting['keywords'],true) as $tags) {
                                                $tag.= $tags['value'].",";
                                            } echo substr($tag,0,strlen($tag)-1); ?></td>
                                            <td><?= $setting['tel'] ?></td>
                                            <td><?= $setting['fax'] ?></td>
                                            <td><?= $setting['gsm'] ?></td>
                                            <td><?= $setting['email'] ?></td>
                                            <td><?= $setting['lat'] ?></td>
                                            <td><?= $setting['lng'] ?></td>
                                            <td><?= $setting['map'] ?></td>
                                            <td><?= $setting['address'] ?></td>
                                            <td><a href="<?= ADMIN_URL . "sitesettings/add/" . $setting['id'] ?>" class="btn btn-sm btn-light-warning btn-icon" title="Düzenle">
                                                    <span class="svg-icon svg-icon-md">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                                            <path d="M490.3 40.4C512.2 62.27 512.2 97.73 490.3 119.6L460.3 149.7L362.3 51.72L392.4 21.66C414.3-.2135 449.7-.2135 471.6 21.66L490.3 40.4zM172.4 241.7L339.7 74.34L437.7 172.3L270.3 339.6C264.2 345.8 256.7 350.4 248.4 353.2L159.6 382.8C150.1 385.6 141.5 383.4 135 376.1C128.6 370.5 126.4 361 129.2 352.4L158.8 263.6C161.6 255.3 166.2 247.8 172.4 241.7V241.7zM192 63.1C209.7 63.1 224 78.33 224 95.1C224 113.7 209.7 127.1 192 127.1H96C78.33 127.1 64 142.3 64 159.1V416C64 433.7 78.33 448 96 448H352C369.7 448 384 433.7 384 416V319.1C384 302.3 398.3 287.1 416 287.1C433.7 287.1 448 302.3 448 319.1V416C448 469 405 512 352 512H96C42.98 512 0 469 0 416V159.1C0 106.1 42.98 63.1 96 63.1H192z" fill="#000000" fill-rule="nonzero" />
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
</script>