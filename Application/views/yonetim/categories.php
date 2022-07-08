<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="container-fluid">
        <div class="card card-docs my-3">
            <div class="card-header">

                <h3 class="card-title">Kategori Yönetimi</h3>
                <div class=" py-6 text-muted font-size-xs">
                    <div class="card-toolbar">
                        <div class="d-flex align-items-center">
                            <!--begin::Button-->
                            <a href="<?= ADMIN_URL ?>post/categories" class="btn btn-white btn-outline-primary font-weight-bold px-2 px-lg-5 mr-2">
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
            <div class="col-md-12">
                <div id="kt_tree_52" class="tree-demo">
                </div>


                <?php

                $cat = $this->model('postModel')->getCategoryWithTopId(0);
                foreach ($cat as $c) {
                    echo "<b style='color:red'>" . helper::jdil($c['title']) . "</b><br>";
                    $cat_ = $this->model('postModel')->getCategoryWithTopId($c['id']);
                    foreach ($cat_ as $c_) {
                        echo "&emsp;&emsp;<b style='color:red'>" . helper::jdil($c_['title']) . "</b><br>";
                        $cat__ = $this->model('postModel')->getCategoryWithTopId($c_['id']);
                        foreach ($cat__ as $c__) {
                            echo "&emsp;&emsp;&emsp;&emsp;<b style='color:red'>" . helper::jdil($c__['title']) . "</b><br>";
                            $cat___ = $this->model('postModel')->getCategoryWithTopId($c__['id']);
                            foreach ($cat___ as $c___) {
                                echo "&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b style='color:red'>" . helper::jdil($c___['title']) . "</b><br>";
                                $cat____ = $this->model('postModel')->getCategoryWithTopId($c___['id']);
                                foreach ($cat____ as $c____) {
                                    echo "&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b style='color:red'>" . helper::jdil($c____['title']) . "</b><br>";
                                    $cat_____ = $this->model('postModel')->getCategoryWithTopId($c____['id']);
                                    foreach ($cat_____ as $c_____) {
                                        echo "&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b style='color:red'>" . helper::jdil($c_____['title']) . "</b><br>";
                                    }
                                }
                            }
                        }
                    }
                }
                ?>

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
                                            <a href="javascript:;" onclick="del('<?= $categories['id'] ?>')" class="btn btn-sm btn-clean btn-icon" title="Sil">
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
            <div class="col-md-6 col-xl-6 col-lg-6 col-sm-12 col-xs-12">
                <div class="card card-custom gutter-b">
                    <div class="card-header flex-wrap py-3">
                        <div class="card-title">
                            <h3 class="card-label"><?php if ($param['category'] != "") {
                                                        echo "Kategori Düzenle";
                                                    } else {
                                                        echo "Kategori Ekle";
                                                    } ?></h3>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Üst Kategori </label>
                            <div class="col-10">
                                <select class="selectpicker form-select form-control" data-control="select2" data-placeholder="Kategori Seçiniz" data-show-subtext="true" name="subcategories" data-live-search="true" data-size="5">

                                    <option value="0">Ana Kategori</option>
                                    <?php foreach ($param['categories'] as $kat) {

                                        if ($kat['topcat'] == 0) {
                                            $top = "Ana Kategori";
                                        } else {
                                            $topcat = $this->model("postModel")->getCategoryWithId($kat['topcat']);
                                            $top = helper::jdil($topcat['title']);
                                        }


                                        if ($kat['id'] == $param['category']['topcat']) {
                                            $selected = "selected";
                                        } else {
                                            $selected = "";
                                        }

                                    ?>
                                        <option value="<?= $kat['id'] ?>" <?= $selected ?>>
                                            <?= helper::jdil($kat['title']) ?> [<small style="font-size: 3px;"><?= $top ?></small>]</option>
                                    <?php
                                    } ?>
                                </select>
                            </div>
                        </div>
                        <div class="d-flex flex-column flex-md-row rounded border p-10 my-5">
                            <ul class="nav nav-tabs nav-pills flex-row border-0 flex-md-column me-5 mb-3 mb-md-0 fs-6">

                                <?php
                                $c = 0;
                                foreach (dildizi as $lang) :
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
                                                <span class="fs-4 fw-bolder">Kategori</span>
                                                <span class="fs-7"><?= $lang['title'] ?></span>
                                            </span>
                                        </a>
                                    </li>
                                <?php
                                endforeach;
                                ?>
                            </ul>
                            <form name="catForm" class="w-100">
                                <div class="tab-content w-100" id="myTabContent">
                                    <?php
                                    $c = 0;
                                    foreach (dildizi as $lang) :
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
                                                    <label>Kategori Adı <small>[<?= $lang['title'] ?>]</small></label>
                                                    <input type="text" name="title[<?= $lang['id'] ?>]" class="form-control" value="<?= helper::jdilWithLangs($param['category']['title'], $lang['id']) ?>">
                                                </div>
                                            </div>

                                        </div>
                                    <?php
                                    endforeach;
                                    ?>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card-footer text-end">
                        <button name="btn" type="button" data-type="<?php if ($param['category'] != "") {
                                                                        echo "edit";
                                                                    } else {
                                                                        echo "add";
                                                                    } ?>" class="btn btn-primary w-25"><i class="fa fa-plus"></i>Ekle</button>
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


<script src="<?= ADMIN_ASSETS ?>/js/custom/jstree/jstree.js"></script>
<script>
    $(".table").DataTable({
        paging: true,
        responsive: true,
        displayLength: 10,
    });
</script>
<script>
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
                    name: "catid",
                    value: id
                })
                $.ajax({
                    url: "<?= ADMIN_URL ?>post/deleteCategories",
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


    $(document).ready(function() {
        $("button[name=btn]").on("click", () => {
            let type = $("button[name=btn]").data("type");
            let subcategories = $("select[name=subcategories]").val();
            if (subcategories == "") {
                Swal.fire({
                    text: "Kategori seçiniz",
                    icon: "error"
                });
                return false;
            }
            let form = $("form[name=catForm]").serializeArray();
            form.push({
                name: "subcategories",
                value: subcategories
            });

            let uri = "";
            if (type == "add") {
                uri = "<?= ADMIN_URL ?>post/addCategories";
            } else {
                uri = "<?= ADMIN_URL ?>post/updateCategories";
                let id = "<?= $param['category']['id'] ?>";
                form.push({
                    name: "id",
                    value: id
                });
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
                    if (obj.type == "success") {
                        setTimeout(function() {
                            location.reload();
                        }, 2000);
                    }
                }
            });
        });

        $("#kt_tree_5").jstree({
            "core": {
                "themes": {
                    "responsive": true
                },
                // so that create works
                "check_callback": true,
                "data": [{
                        "text": "Parent Node",
                        "children": [{
                            "text": "Initially selected",
                            "state": {
                                "selected": true
                            }
                        }, {
                            "text": "Custom Icon",
                            "icon": "flaticon2-warning text-danger"
                        }, {
                            "text": "Initially open",
                            "icon": "fa fa-folder text-success",
                            "state": {
                                "opened": true
                            },
                            "children": [{
                                "text": "Another node",
                                "icon": "fa fa-file text-waring"
                            }]
                        }, {
                            "text": "Another Custom Icon",
                            "icon": "flaticon2-bell-5 text-waring"
                        }, {
                            "text": "Disabled Node",
                            "icon": "fa fa-check text-success",
                            "state": {
                                "disabled": true
                            }
                        }, {
                            "text": "Sub Nodes",
                            "icon": "fa fa-folder text-danger",
                            "children": [{
                                    "text": "Item 1",
                                    "icon": "fa fa-file text-waring"
                                },
                                {
                                    "text": "Item 2",
                                    "icon": "fa fa-file text-success"
                                },
                                {
                                    "text": "Item 3",
                                    "icon": "fa fa-file text-default"
                                },
                                {
                                    "text": "Item 4",
                                    "icon": "fa fa-file text-danger"
                                },
                                {
                                    "text": "Item 5",
                                    "icon": "fa fa-file text-info"
                                }
                            ]
                        }]
                    },
                    "Another Node"
                ]
            },
            "types": {
                "default": {
                    "icon": "fa fa-folder text-success"
                },
                "file": {
                    "icon": "fa fa-file  text-success"
                }
            },
            "state": {
                "key": "demo2"
            },
            "plugins": ["dnd", "state", "types"]
        });
    });
</script>