<?php
class loginModel extends model
{
    public function emailControl($email)
    {
        $this->db->where("email", $email);
        $account = $this->db->getOne("users");
        return $account;
    }
    public function authorityControl($userID)
    {
        $this->db->where("userID", $userID);
        $this->db->where("type", "yetki");
        $yetki =  $this->db->getOne("users_meta");
        return $yetki;
    }
    public function updateUserData($data,$userID)
    {
        $this->db->where("id", $userID);
        $update =  $this->db->update ('users', $data);
        return $update;
    }
    public function insertData($tablename,$data){
        $id = $this->db->insert ($tablename, $data);
        return $id;
    }
    public function lastLogin($userid){
        $this->db->where("userID", $userid);
        $this->db->orderBy("id","DESC");
        return $this->db->getOne("login_info");
    }
}
