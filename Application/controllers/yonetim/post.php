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


        $categories = $this->model('postModel')->getCategories("post");

        $this->render('yonetim/inc/header',['mpage'=>'content','maltpage'=>'post']);
        $this->render('yonetim/categories',['categories'=>$categories]);
        $this->render('yonetim/inc/footer');
    }
}