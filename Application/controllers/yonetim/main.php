<?php
class main extends controller
{
    public function index(){
      if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
        $this->render('yonetim/inc/header');
        $this->render('yonetim/main');
        $this->render('yonetim/inc/footer');
      
    }
}