<?php
class post extends controller
{
    public function index(){
      if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
        $this->render('yonetim/inc/header');
        $this->render('yonetim/posts');
        $this->render('yonetim/inc/footer');
    }

    public function categories($id = null){
        if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
        $this->render('yonetim/inc/header');
        $this->render('yonetim/categories');
        $this->render('yonetim/inc/footer');
    }
}