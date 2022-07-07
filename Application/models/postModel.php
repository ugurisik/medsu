<?php
class postModel extends model
{
    public function getCategories($type)
    {
        $this->db->where("type", $type);
        return $this->db->get("postcat");
    }
    public function getCategoryWithId($id)
    {
        $this->db->where("id", $id);
        return $this->db->getOne("postcat");
    }

    public function deleteCategories($id)
    {
        $this->db->where("id", $id);
        return $this->db->delete("postcat");
    }
    public function addCategory($data){
       return $this->db->insert("postcat",$data);
    }
    public function updateCategory($data,$id){
        $this->db->where("id", $id);
        return $this->db->update("postcat",$data);
     }
}
