<?php
class lang extends controller
{ 
    public function index(){
      
     if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
		$data = $this->model('langModel')->langlist();
        $this->render('yonetim/inc/header');
        $this->render('yonetim/lang', ['data'=>$data]);
        $this->render('yonetim/inc/footer');
		
    }
	public function ekle(){

     if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
        $this->render('yonetim/inc/header');
        $this->render('yonetim/lang',['is'=>'ekle']);
        $this->render('yonetim/inc/footer');

    }
	public function duzenle($id){

     if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
		$data = $this->model('langModel')->getData($id);
        $this->render('yonetim/inc/header');
        $this->render('yonetim/lang',['is'=>'duzenle','data'=>$data]);
        $this->render('yonetim/inc/footer');
		
    }
    public function yonetim(){

        if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
          
           $this->render('yonetim/inc/header');
           $this->render('yonetim/lang', ['is'=>'yonetim']);
           $this->render('yonetim/inc/footer');
           
       }
       public function site(){
      
        if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL."/yonetim/giris");die();}
          
           $this->render('yonetim/inc/header');
           $this->render('yonetim/lang', ['is'=>'site']);
           $this->render('yonetim/inc/footer');
           
       }

    public function usite() {

        foreach(dildizi as $dilm) {
            $dilid=$dilm['id'];
            $json=json_encode($_POST[$dilid],JSON_UNESCAPED_UNICODE);
            if(!$this->model('langModel')->dilveri($dilid,$json,'anadizin')){
                helper::uyari("statu","Veri Güncellenemedi. Lütfen tekrar deneyiniz.");
                helper::uyari("tur","error");
                helper::redirect(ADMIN_URL."/lang/site");
            }
        }
        helper::uyari("statu","Veri Başarıyla Güncellendi.");
        helper::uyari("tur","success");
        helper::redirect(ADMIN_URL."/lang/site");

    }
	 public function insert()
    {
        if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL); die();}

        if($_POST) 
        {	
			$resim = $_POST['resim'][0];
			$dil=helper::cleaner($_POST['dil']);
			$kisa=helper::cleaner($_POST['kisa']);
			if($_POST['durum']==1){$durum=1;}else{$durum=0;}
		
            if($dil!='')
            {
                $ekle = $this->model('langModel')->ekle($dil,$resim,$kisa,$durum);
			
                if($ekle)
                {
                    helper::uyari("statu","Dil Başarıyla eklendi");
                    helper::uyari("tur","success");
                    helper::redirect(ADMIN_URL."/lang");
                }
                else
                {
                    helper::uyari("statu","Dil Eklenemedi");
                    helper::uyari("tur","error");
                    helper::redirect(ADMIN_URL."/lang/ekle");
                }
            }
            else
            {
                helper::uyari("statu","Lütfen Tüm Alanları Doldurunuz!");
                helper::uyari("tur","error");
                helper::redirect(ADMIN_URL."/lang/ekle");
            }
        }
        else
        {
           helper::uyari("statu","Lütfen Tüm Alanları Doldurunuz!");
           helper::uyari("tur","error");
           helper::redirect(ADMIN_URL."/lang/ekle");
        }
    }
	public function update($id)
    {
        if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL); die();}
        if($_POST)
        {
			$resim = $_POST['resim'][0];
			$dil=helper::cleaner($_POST['dil']);
			$kisa=helper::cleaner($_POST['kisa']);
			if($_POST['durum']==1){$durum=1;}else{$durum=0;}
            if($dil!='')
            {
                $duzenle = $this->model('langModel')->update($id,$dil,$resim,$kisa,$durum);
                if($duzenle)
                {
                    helper::uyari("statu","Dil Başarıyla Düzenlendi");
					helper::uyari("tur","success");
                    helper::redirect(ADMIN_URL."/lang");
                }
                else
                {
                    helper::uyari("statu","Dil Düzenlenemedi");
					helper::uyari("tur","error");
                    helper::redirect(ADMIN_URL."/lang/duzenle/".$id);
                }
            }
            else
            {
                helper::uyari("statu","Lütfen Tüm alanları giriniz");
				helper::uyari("tur","error");
                helper::redirect(ADMIN_URL."/lang/duzenle/".$id);
				
            }
        }
        else
        {
            helper::uyari("statu","Lütfen Tüm Alanları Doldurunuz!");
           helper::uyari("tur","error");
           helper::redirect(ADMIN_URL."/lang/duzenle/".$id);
        }
    }
	 public function sil($id)
    {  exit;
		if(!$this->sessionManager->isLogged()){helper::redirect(SITE_URL); die();}
		
		
        $delete = $this->model('langModel')->delete($id);
		helper::uyari("statu","Dil Başarıyla Silindi");
        helper::uyari("tur","success");
        helper::redirect(ADMIN_URL . "/lang");
    }
}