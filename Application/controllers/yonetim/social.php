<?php
class social extends controller
{
    public function index($id = null){
      if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
      $social = $this->model("socialModel")->getSocial();
      $socialmedia = $this->model("socialModel")->getSocialWithID($id);
      $this->render('yonetim/inc/header', ['mpage' => 'setting', 'maltpage' => 'social']);
        $this->render('yonetim/social',["social"=>$social,"media"=>$socialmedia]);
        $this->render('yonetim/inc/footer');
    }
    public function edit($id){
      $data = array(
        "baslik"=>$_POST['baslik'],
        "icon"=>$_POST['icon'],
        "bg-color"=>$_POST['bg-color'],
        "url"=>$_POST['url']
      );
      $add = $this->model("socialModel")->editSocial($data,$id);
        if ($add>0) {
          $data = array(
            "message"=>"Sosyal medya başarılı bir şekilde güncellendi.",
            "type"=>"success"
          );
        }else{
          $data = array(
            "message"=>"Sosyal medya güncellenirken bir hata oluştu.",
            "type"=>"error",
            "error"=>""
          );
        }
        $json = json_encode($data,JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
    public function add(){
      $data = array(
        "baslik"=>$_POST['baslik'],
        "icon"=>$_POST['icon'],
        "bg-color"=>$_POST['bg-color'],
        "url"=>$_POST['url']
      );
      $add = $this->model("socialModel")->addSocial($data);
        if ($add>0) {
          $data = array(
            "message"=>"Sosyal medya başarılı bir şekilde eklendi.",
            "type"=>"success"
          );
        }else{
          $data = array(
            "message"=>"Sosyal medya eklenirken bir hata oluştu.",
            "type"=>"error",
            "error"=>""
          );
        }
        $json = json_encode($data,JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
    public function delete($id){
      
      $add = $this->model("socialModel")->deleteSocial($id);
        if ($add>0) {
          $data = array(
            "message"=>"Sosyal medya başarılı bir şekilde silindi.",
            "type"=>"success"
          );
        }else{
          $data = array(
            "message"=>"Sosyal medya silinirken bir hata oluştu.",
            "type"=>"error",
            "error"=>""
          );
        }
        $json = json_encode($data,JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
 
}