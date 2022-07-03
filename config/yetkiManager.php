<?php
class yetkiManager extends model
{
    public function yetkiKontrol($yetkiadi){
        $this->db->where("email", $_SESSION['email']);
        $user = $this->db->getOne("users");
        $this->db->where("userID",$user['id']);
        $this->db->where("type_meta",$yetkiadi);
        $yetki = $this->db->get("users_meta");
        if (count($yetki)>0) {
            return true;
        }else{
            return false;
        }
    }
    public function usersYetki($yetkiadi, $userid )
    {
        $this->db->where("id", $userid);

        $user = $this->db->getOne("users");
        $this->db->where("userID", $user['id']);
        $this->db->where("type_meta", $yetkiadi);
        $yetki = $this->db->get("users_meta");
        if (count($yetki) > 0) {
            return true;
        } else {
            return false;
        }
    }
}