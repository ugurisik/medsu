<?php

class system
{
    
    protected $controller;
    protected $method;
    public function __construct()
    {
        
        
        $this->controller ="main";
        $this->method ="index";
        $this->dil = new dil();
       if(isset($_GET['act'])) {
           $url=explode("/",filter_var(rtrim($_GET['act'],'/'),FILTER_SANITIZE_URL));
       }else{           
           $url[0]=$this->controller;
           $url[1]=$this->method;
       }

        $dilverim=$this->dil->dillist();
       $dilveri[0]=$dilverim[0];
       $dilveri[1]=$dilverim[1];
        define("dildizi",$dilverim);
        $key = array_search($url[0], array_column($dilveri, 'kisa'));
        
        if(is_numeric($key))
        {
            $_SESSION['dil']=$url[0];
            define("did",$dilveri[$key]['id']);
            define("d_ana",json_decode($dilveri[$key]['anadizin'],true));
            define("d_y",json_decode($dilveri[$key]['yonetim'],true));
            array_shift($url);
           
        }else{
            if($_SESSION['dil']!='') {
                $key = array_search($_SESSION['dil'], array_column($dilveri, 'kisa'));
            }else{
            $key = array_search($this->dil->defaultdil(), array_column($dilveri, 'kisa'));
            $_SESSION['dil']=$this->dil->defaultdil();
            }
            define("did",$dilveri[$key]['id']);
            
            
        }

 
        if($url[0]=='yonetim' and !isset($url[1]))
        {
            $url[0]='yonetim';
            $url[1]='main';
        }


       if(file_exists(CONTROLLERS_PATH."/".$url[0].".php")){
           $this->controller=$url[0];
           if($url[0]=='yonetim' and $url[1]!='')
           {
               $this->controller=$url[1];
           }
         
       }

       if($url[0]=='yonetim' and $url[1]!='' ) {
        require_once ADMIN_CONTROLLERS_PATH . "/" . $this->controller . ".php";
    }else {
        require_once CONTROLLERS_PATH . "/" . $this->controller . ".php";
    }

       if(class_exists($this->controller)) {
           $this->controller = new $this->controller;
           if($url[0]=='yonetim' and $url[1]!='')
           {
               array_shift($url);
           }
           array_shift($url);

       }else{
           exit($this->controller."  Classı Bulunamadı");
        }

       if(isset($url[0])){
           if(method_exists($this->controller,$url[0])) {
               $this->method = $url[0];
               array_shift($url);
           }else{
               //exit($url[0]." Methodu Bulunamadı");
               $this->method ="index";
           }
       }

       call_user_func_array([$this->controller,$this->method],$url);

    }
}