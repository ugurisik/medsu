<?php
class langs extends controller
{
  public function index()
  {
    if (!$this->sessionManager->isLogged()) {
      helper::redirect(SITE_URL . "/yonetim/giris");
      die();
    }
    $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'lang']);
    $this->render('yonetim/langvariable2');
    $this->render('yonetim/inc/footer');
  }
  public function langvariable()
  {
    if (!$this->sessionManager->isLogged()) {
      helper::redirect(SITE_URL . "/yonetim/giris");
      die();
    }
    $variables = $this->model("langModel")->getVariables();
    $langlist = $this->model("langModel")->langlist();
    $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'lang']);
    $this->render('yonetim/langvariable', ["variables" => $variables, "langlist" => $langlist]);
    $this->render('yonetim/inc/footer');
  }
  public function addVariable()
  {
    $data = array(
      "type" => $_POST['short'],
      "type_meta" => json_encode($_POST['word'], JSON_UNESCAPED_UNICODE)
    );
    if (count($this->model("langModel")->getVariableWithType($_POST['short'])) > 0) {
      $data = array(
        "message" => "Kelime daha önce eklenmiş durumdadır!",
        "type" => "error",
        "error" => ""
      );
    } else {
      $add = $this->model("langModel")->addVariable($data);
      if ($add) {
        $data = array(
          "message" => "Kelime başarılı bir şekilde eklendi.",
          "type" => "success"
        );
      } else {
        $data = array(
          "message" => "Kelime eklenirken bir hata oluştu.",
          "type" => "error",
          "error" => ""
        );
      }
    }

    $json = json_encode($data, JSON_UNESCAPED_UNICODE);
    print_r($json);
  }
  public function updateVariable()
  {
    $data = array(
      "type_meta" => $_POST['variables']
    );
    $add = $this->model("langModel")->updateVariable($data, $_POST['type']);
    if ($add > 0) {
      $data = array(
        "message" => "Kelime başarılı bir şekilde güncellendi.",
        "type" => "success"
      );
    } else {
      $data = array(
        "message" => "Kelime güncellenirken bir hata oluştu.",
        "type" => "error",
        "error" => ""
      );
    }

    $json = json_encode($data, JSON_UNESCAPED_UNICODE);
    print_r($json);
  }
  public function getVariable($type)
  {
    $add = $this->model("langModel")->getVariableWithType($type);
    print_r(json_encode($add, JSON_UNESCAPED_UNICODE));
  }
}
