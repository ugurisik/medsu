<?php
class files extends controller
{
    public function index()
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }
        $this->render('yonetim/inc/header');
        $this->render('yonetim/main');
        $this->render('yonetim/inc/footer');
    }
    public function files()
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }
        $files = array();
        $arr = helper::directoryToArray("public/files", true);
        foreach ($arr as $file) {
            if (strpos($file, ".") !== false) {
                $files[] = $file;
            }
        }

        $this->render('yonetim/inc/header', ['mpage' => 'content', 'maltpage' => 'files']);
        $this->render('yonetim/files', ['files' => $files]);
        $this->render('yonetim/inc/footer');
    }
    public function uploadFile()
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }
        echo helper::fileUpload($_FILES, "general");
    }

    public function listFiles()
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }

        $arr = helper::directoryToArray("public/files", true);
        foreach ($arr as $files) {
            if (strpos($files, ".") !== false) {
                echo $files . "<br>";
            }
        }
    }
    public function deleteFiles()
    {
        if (helper::deleteFile($_POST['filepath'])) {
            $data = array(
                "message" => "Dosya başarılı bir şekilde silindi.",
                "type" => "success"
            );
        } else {
            $data = array(
                "message" => "Dosya silinirken bir hata oluştu." . $_POST['filepath'],
                "type" => "error"
            );
        }
        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        print_r($json);
    }
}
