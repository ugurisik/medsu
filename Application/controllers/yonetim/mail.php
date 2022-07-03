<?php
class mail extends controller
{
    public function index(){
      if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}

        $mail_schema = $this->model("mailModel")->getSchema();

        $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'mail']);
        $this->render('yonetim/mail',["schema"=>$mail_schema]);
        $this->render('yonetim/inc/footer');
      
    }
    public function settings(){
        if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
        $mailsettings =$this->model("mailModel")->getMailSettings();
        $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'mail']);
          $this->render('yonetim/mail_settings',["settings"=>$mailsettings]);
          $this->render('yonetim/inc/footer');
        
      }
      public function settingsEdit(){
        $data = array(
          "host"=>$_POST['host'],
          "port"=>$_POST['port'],
          "encryption"=>$_POST['encryption'],
          "mail"=>$_POST['mail'],
          "pass"=>$_POST['pass'],
        );
        $add = $this->model("mailModel")->editMailSettings($data);
        if ($add>0) {
          $data = array(
            "message"=>"Mail ayarları başarılı bir şekilde güncellendi.",
            "type"=>"success"
          );
        }else{
          $data = array(
            "message"=>"Mail ayarları güncellenirken bir hata oluştu.",
            "type"=>"error",
            "error"=>""
          );
        }
        $json = json_encode($data,JSON_UNESCAPED_UNICODE);
        print_r($json);
      }
      public function edit($id = null){
        if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
        $mail_schema = $this->model("mailModel")->getSchemaWithID($id);
        $langlist = $this->model("langModel")->langlist();
         $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'mail']);
          $this->render('yonetim/mail_schema',["langList"=>$langlist,"schema"=>$mail_schema]);
          $this->render('yonetim/inc/footer');
      }

      public function add(){
        $data = array(
          "receiverMail" => $_POST['receiverMail'],
          "adminMail" => $_POST['adminMail'],
          "adminTitle" => $_POST['adminTitle'],
          "adminSchema" => $_POST['adminSchema'],
          "schemaTitle" => json_encode($_POST['schemaTitle'],JSON_UNESCAPED_UNICODE),
          "schemaMessage" => json_encode($_POST['schemaMessage'],JSON_UNESCAPED_UNICODE),
          "receiverSchema" => json_encode($_POST['receiverSchema'],JSON_UNESCAPED_UNICODE)
        );
        $add = $this->model("mailModel")->addSchema($data);
        if ($add>0) {
          $data = array(
            "message"=>"Mail şablonu başarılı bir şekilde eklendi.",
            "type"=>"success"
          );
        }else{
          $data = array(
            "message"=>"Mail şablonu eklenirken bir hata oluştu.",
            "type"=>"error",
            "error"=>""
          );
        }
        $json = json_encode($data,JSON_UNESCAPED_UNICODE);
        print_r($json);
      }
      public function editSchema($id){
        $data = array(
          "receiverMail" => $_POST['receiverMail'],
          "adminMail" => $_POST['adminMail'],
          "adminTitle" => $_POST['adminTitle'],
          "adminSchema" => $_POST['adminSchema'],
          "schemaTitle" => json_encode($_POST['schemaTitle'],JSON_UNESCAPED_UNICODE),
          "schemaMessage" => json_encode($_POST['schemaMessage'],JSON_UNESCAPED_UNICODE),
          "receiverSchema" => json_encode($_POST['receiverSchema'],JSON_UNESCAPED_UNICODE)
        );
        $add = $this->model("mailModel")->editSchema($data,$id);
        if ($add>0) {
          $data = array(
            "message"=>"Mail şablonu başarılı bir şekilde güncellendi.",
            "type"=>"success"
          );
        }else{
          $data = array(
            "message"=>"Mail şablonu güncellenirken bir hata oluştu.",
            "type"=>"error",
            "error"=>""
          );
        }
        $json = json_encode($data,JSON_UNESCAPED_UNICODE);
        print_r($json);
      }
      
}