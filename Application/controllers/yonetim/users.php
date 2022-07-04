<?php
class users extends controller
{
    public function index($userid = null)
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }


        $users = $this->model("usersModel")->getUsers();
        if ($userid != null) {
            $user = $this->model("usersModel")->getData($userid);
        } else {
            $user = null;
        }

        $this->render('yonetim/inc/header', ['mpage' => 'users', 'maltpage' => 'user']);
        if ($this->yetkiManager->yetkiKontrol("usersview")) {
            $this->render('yonetim/users', ['users' => $users, "user" => $user]);
        } else {
            $this->render('yonetim/yetkiyok');
        }

        $this->render('yonetim/inc/footer');
    }

    public function userAdd()
    {
        if (helper::yetkiKontrol("useradd")) {
            die();
        }
        $data = array(
            "name" => $_POST['isim'],
            "surname" => $_POST['soyisim'],
            "email" => $_POST['email'],
            "phone" => $_POST['telefon'],
            "address" => $_POST['adres'],
            "company" => $_POST['firma'],
            "department" => $_POST['departman'],
            "password" => password_hash($_POST['new_password'], PASSWORD_DEFAULT),
            "image" => $_POST['image'],
            "status" => 3,
        );
        if ($this->model("usersModel")->getUserInformation($_POST["email"]) != null) {
            $data = array(
                "message" => "Bu mail adresiyle kayıtlı bir kullanıcı bulunmaktadır!",
                "type" => "error"
            );
        } else {
            $add = $this->model("usersModel")->addUser($data);
            if ($add) {
                $data = array(
                    "userID" => $add,
                    "type" => "yetki",
                    "type_meta" => "2"
                );
                $add = $this->model("usersModel")->yetkiEkle($data);
                $data = array(
                    "message" => "Kullanıcı başarılı bir şekilde eklendi",
                    "type" => "success",
                    "userID" => $add
                );
            } else {
                $data = array(
                    "message" => "Kullanıcı eklenirken bir hata oluştu.",
                    "type" => "error"
                );
            }
        }

        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
    public function userUpdate($id)
    {
        if (helper::yetkiKontrol("userupdate")) {
            die();
        }
        if ($_POST['new_password'] == "") {
            $user = $this->model("usersModel")->getUserInformation($_POST["email"]);
            $pass = $user['password'];
        } else {
            $pass = password_hash($_POST['new_password'], PASSWORD_DEFAULT);
        }
        $data = array(
            "name" => $_POST['isim'],
            "surname" => $_POST['soyisim'],
            "email" => $_POST['email'],
            "phone" => $_POST['telefon'],
            "address" => $_POST['adres'],
            "company" => $_POST['firma'],
            "department" => $_POST['departman'],
            "password" => $pass,
            "image" => $_POST['image'],
            "status" => 3,
        );
        $add = $this->model("usersModel")->userUpdate($data, $id);
        if ($add) {
            $delete = $this->model("usersModel")->yetkiSil($id);
            $data = array(
                "userID" => $id,
                "type" => "yetki",
                "type_meta" => "2"
            );
            $add = $this->model("usersModel")->yetkiEkle($data);
            $data = array(
                "message" => "Kullanıcı başarılı bir şekilde güncellendi.",
                "type" => "success",
                "userID" => $id
            );
        } else {
            $data = array(
                "message" => "Kullanıcı güncellenirken bir hata oluştu.",
                "type" => "error"
            );
        }

        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
    public function yetkiEkle()
    {
        $data = array(
            "userID" => $_POST['userID'],
            "type" => "yetki",
            "type_meta" => $_POST['yetki']
        );
        $add = $this->model("usersModel")->yetkiEkle($data);
        if ($add) {
            print_r($_POST);
        } else {
            print_r($_POST);
        }
    }
    public function userDelete()
    {
        if (helper::yetkiKontrol("userdelete")) {
            die();
        }
        $id = $_POST["id"];
        $add = $this->model("usersModel")->userDelete($id);
        if ($add) {
            $data = array(
                "message" => "Kullanıcı başarılı bir şekilde silindi.",
                "type" => "success"
            );
            $delete = $this->model("usersModel")->yetkiSil($id);
        } else {
            $data = array(
                "message" => "Kullanıcı silinirken bir hata oluştu.",
                "type" => "error"
            );
        }

        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
    public function imageAdd()
    {
        echo helper::imageUpload($_FILES, "profile");
    }
    public function imageDelete(){
        if(helper::deleteFile($_POST['image'])){
            $data = array(
                "message" => "Resim başarılı bir şekilde silindi.",
                "type" => "success"
            );
        }else{
            $data = array(
                "message" => "Resim silinirken bir hata oluştu.".$_POST['image'],
                "type" => "error"
            );
        }
        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
}
