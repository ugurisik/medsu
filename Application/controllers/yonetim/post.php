<?php
class post extends controller
{
    public function index()
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }
        $this->render('yonetim/inc/header');
        $this->render('yonetim/posts');
        $this->render('yonetim/inc/footer');
    }

    public function categories($id = null)
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }


        $categories = $this->model('postModel')->getCategories("post");
        $category = $this->model('postModel')->getCategoryWithId($id);

        $this->render('yonetim/inc/header', ['mpage' => 'content', 'maltpage' => 'post']);
        $this->render('yonetim/categories', ['categories' => $categories, 'category' => $category]);
        $this->render('yonetim/inc/footer');
    }

    public function deleteCategories()
    {
        if (!$this->sessionManager->isLogged()) {
            helper::redirect(SITE_URL . "/yonetim/giris");
            die();
        }
        $delete = $this->model('postModel')->deleteCategories($_POST['catid']);
        if ($delete) {
            $data = array(
                "message" => "Kategori başarılı bir şekilde silindi.",
                "type" => "success"
            );
        } else {
            $data = array(
                "message" => "Kategori silinirken bir hata oluştu.",
                "type" => "error",
            );
        }
        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        echo $json;
    }

    public function addCategories()
    {
        $data = array(
            "title" => json_encode($_POST['title'], JSON_UNESCAPED_UNICODE),
            "topcat" => $_POST['subcategories'],
            "type" => "post",
        );
        $add = $this->model('postModel')->addCategory($data);
        if ($add) {
            $data = array(
                "message" => "Kategori başarılı bir şekilde eklendi.",
                "type" => "success"
            );
        } else {
            $data = array(
                "message" => "Kategori eklenirken bir hata oluştu.",
                "type" => "error",
            );
        }
        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        echo $json;
    }
    public function updateCategories()
    {
        $data = array(
            "title" => json_encode($_POST['title'], JSON_UNESCAPED_UNICODE),
            "topcat" => $_POST['subcategories'],
            "type" => "post",
        );
        $add = $this->model('postModel')->updateCategory($data,$_POST['id']);
        if ($add) {
            $data = array(
                "message" => "Kategori başarılı bir şekilde güncellendi.",
                "type" => "success"
            );
        } else {
            $data = array(
                "message" => "Kategori güncellenirken bir hata oluştu.",
                "type" => "error",
            );
        }
        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        echo $json;
    }
}
