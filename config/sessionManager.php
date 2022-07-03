<?php
class sessionManager extends model
{
    static function createSession($array = [])
    {
        foreach ($array as $key => $value) {
            $_SESSION[$key] = helper::cleaner($value);
        }
    }

    static function deleteSession($key)
    {
        unset($_SESSION[$key]);
    }
    static function allSessionDelete()
    {
        session_unset();
        session_destroy();
    }
    public function isLogged()
    {
        if (isset($_SESSION['email'])) {
            $this->db->where("email", $_SESSION['email']);
            $sorgu = $this->db->getOne("users");
            if (count(array($sorgu)) != 0) {
                $veri = $sorgu;
                $id = (($veri['id'] * 2020) + 1122) * 123;
                setcookie("id", $id, time() + 3600 * 31556926, '/');
                return true;
            } else {
                return false;
            }
        }
//        else {
//            if (isset($_COOKIE['id'])) {
//                $kid = (($_COOKIE['id'] / 123) - 1122) / 2020;
//                $this->db->where("id", $kid);
//                $sorgu = $this->db->getOne("users");
//                if (count(array($sorgu)) != 0) {
//                    $veri = $sorgu;
//                    sessionManager::createSession(['email' => $veri['email']]);
//                    return true;
//                } else {
//                    return false;
//                }
//            }
//        }
    }
    public function getUserInfo()
    {
        if ($this->isLogged()) {
            $this->db->where("email", $_SESSION['email']);
            $sorgu = $this->db->getOne("users");
            return $sorgu;
        } else {
            return false;
        }
    }
}
