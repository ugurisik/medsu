<?php
class sitesettings extends controller
{
  public function index()
  {
    if (!$this->sessionManager->isLogged()) {
      helper::redirect(SITE_URL . "/yonetim/giris");
      die();
    }
    if (helper::yetkiKontrol("sitesettingsview")) {
      die();
    }
    $settings = $this->model("settingsModel")->getList();
    $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'setlink']);
    $this->render('yonetim/sitesettings', ['settings' => $settings]);
    $this->render('yonetim/inc/footer');
  }
  public function add($settingID = null)
  {
    if (!$this->sessionManager->isLogged()) {
      helper::redirect(SITE_URL . "/yonetim/giris");
      die();
    }

    $setting = $this->model("settingsModel")->getSettings($settingID);
    $langs = $this->model("langModel")->langlist();
    $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'setlink']);
    $this->render('yonetim/sitesettings_add', ["settings" => $setting, "langs" => $langs]);
    $this->render('yonetim/inc/footer');
  }
  public function settingsAdd()
  {
    $data = array(
      "langID" => $_POST['langID'],
      "title" => $_POST['title'],
      "content" => $_POST['content'],
      "keywords" => $_POST['keywords'],
      "address" => $_POST['address'],
      "lat" => $_POST['lat'],
      "lng" => $_POST['lng'],
      "tel" => $_POST['tel'],
      "gsm" => $_POST['gsm'],
      "fax" => $_POST['fax'],
      "email" => $_POST['email'],
      "map" => $_POST['map'],
    );
    $add = $this->model("settingsModel")->add($data);
    if ($add) {
      $data = array(
        "message" => "Ayar başarılı bir şekilde eklenmiştir!",
        "type" => "success"
      );
    } else {
      $data = array(
        "message" => "Ayar eklenirken bir hata oluştu!",
        "type" => "error"
      );
    }
    $json = json_encode($data, JSON_UNESCAPED_UNICODE);
    print_r($json);
  }
  public function settingsUpdate()
  {
    $data = array(
      "langID" => $_POST['langID'],
      "title" => $_POST['title'],
      "content" => $_POST['content'],
      "keywords" => $_POST['keywords'],
      "address" => $_POST['address'],
      "lat" => $_POST['lat'],
      "lng" => $_POST['lng'],
      "tel" => $_POST['tel'],
      "gsm" => $_POST['gsm'],
      "fax" => $_POST['fax'],
      "email" => $_POST['email'],
      "map" => $_POST['map'],
    );
    $add = $this->model("settingsModel")->update($data, $_POST['id']);
    if ($add) {
      $data = array(
        "message" => "Ayar başarılı bir şekilde güncellenmiştir!",
        "type" => "success"
      );
    } else {
      $data = array(
        "message" => "Ayar güncellenirken bir hata oluştu!",
        "type" => "error"
      );
    }
    $json = json_encode($data, JSON_UNESCAPED_UNICODE);
    print_r($json);
  }
}
