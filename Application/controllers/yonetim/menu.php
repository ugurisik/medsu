<?php
class menu extends controller
{
  public function index()
  {
    if (!$this->sessionManager->isLogged()) {
      helper::redirect(SITE_URL . "/yonetim/giris");
      die();
    }


    $pages = $this->model("sayfaModel")->getPages();
    $langList = $this->model("langModel")->langlist();
    $menu = $this->model("menuModel")->getList();
    $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'viewlink']);
    if (helper::yetkiKontrol("menusettingsview")) {
      $this->render('yonetim/yetkiyok');
    } else {
      $this->render('yonetim/menu', ["pages" => $pages, "langs" => $langList, "menu" => $menu]);
    }

    $this->render('yonetim/inc/footer');
  }

  public function getMenuData($id)
  {
    $menu = $this->model("menuModel")->getData($id);
    $json = json_encode($menu, JSON_UNESCAPED_UNICODE);
    print_r($json);
  }
  public function setMenuData()
  {
    if (helper::yetkiKontrol("addmenu")) {
      die();
    }
    $menu = $this->model("menuModel")->checkMenu($_POST['position'], $_POST['lang']);
    if (count($menu) > 0) {
      $data = array(
        "message" => "Menü daha önce eklenmiş durumda, güncellemek ister misiniz ?",
        "type" => "warning",
        "errortype" => "update",
        "data" => json_encode($_POST, JSON_UNESCAPED_UNICODE)
      );
    } else {
      $data = array(
        "menu_title" => $_POST['title'],
        "menu_position" => $_POST['position'],
        "menu_author" => "1",
        "menu_langID" => $_POST['lang'],
        "menu_json" => str_replace("\&quot;", '"', $_POST['menu']),
      );
      $menu = $this->model("menuModel")->addMenu($data);
      if ($menu) {
        $data = array(
          "message" => "Menü başarılı bir şekilde eklenmiştir.",
          "type" => "success",
          "errortype" => "none"
        );
      } else {
        $data = array(
          "message" => "Menü eklenirken bir hata oluştu. ",
          "type" => "error",
          "errortype" => "none"
        );
      }
    }
    $json = json_encode($data, JSON_UNESCAPED_UNICODE);
    print_r($json);
  }
  public function updateMenuData()
  {
    if (helper::yetkiKontrol("updatemenu")) {
      die();
    }
    $data = array(
      "menu_title" => $_POST['title'],
      "menu_position" => $_POST['position'],
      "menu_author" => "1",
      "menu_langID" => $_POST['lang'],
      "menu_json" => str_replace("\&quot;", '"', $_POST['menu']),
    );
    $menu = $this->model("menuModel")->updateMenuWithPosLang($_POST['position'], $_POST['lang'], $data);
    if ($menu) {
      $data = array(
        "message" => "Menü başarılı bir şekilde güncellendi.",
        "type" => "success",
        "errortype" => "none"
      );
    } else {
      $data = array(
        "message" => "Menü güncellenirken bir hata oluştu. ",
        "type" => "error",
        "errortype" => "none"
      );
    }
    $json = json_encode($data, JSON_UNESCAPED_UNICODE);
    print_r($json);
  }
}
