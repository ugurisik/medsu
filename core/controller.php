<?php
class controller
{
    public $sessionManager;
    public $myuserinfo;
    public function  __construct()
    {

        $this->sessionManager = new sessionManager();
        $this->yetkiManager = new yetkiManager();
        // $this->dilim = new dil();
        $this->ayar = new ayar();
        $this->myuserinfo = $this->sessionManager->getUserInfo();

        //$this->ydil=$this->dilim->ydil();
        //$this->dillist=$this->dilim->dillist();
    }

    public function render($file, $param = [])
    {
        if (file_exists(VIEWS_PATH . "/" . $file . ".php")) {
            //extract($param);
            require_once VIEWS_PATH . "/" . $file . ".php";
        } else {
            exit($file . " Görüntü dosyası bulunamadı");
        }
    }
    public function model($file)
    {

        if (file_exists(MODELS_PATH . "/" . $file . ".php")) {
            require_once MODELS_PATH . "/" . $file . ".php";
            if (stripos($file, '/')) {
                $fils = explode('/', $file);
                $file = $fils[1];
            }
            if (class_exists($file)) {
                return new $file;
            } else {
                exit($file . " bir class değil");
            }
        } else {
            exit($file . " Model Dosyası Bulunamadı");
        }
    }

    public function settingsModel($file){
        if (file_exists(SETTINGS_MODELS_PATH . "/" . $file . ".php")) {
            require_once SETTINGS_MODELS_PATH . "/" . $file . ".php";
            if (stripos($file, '/')) {
                $fils = explode('/', $file);
                $file = $fils[1];
            }
            if (class_exists($file)) {
                return new $file;
            } else {
                exit($file . " bir class değil");
            }
        } else {
            exit($file . " Model Dosyası Bulunamadı");
        }
    }
}
