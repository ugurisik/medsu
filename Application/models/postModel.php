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
    public function getCategoryWithTopId($id)
    {
        $this->db->where("topcat", $id);
        return $this->db->get("postcat");
    }
    public function deleteCategories($id)
    {
        $this->db->where("id", $id);
        return $this->db->delete("postcat");
    }
    public function addCategory($data)
    {
        return $this->db->insert("postcat", $data);
    }
    public function updateCategory($data, $id)
    {
        $this->db->where("id", $id);
        return $this->db->update("postcat", $data);
    }

    public function query()
    {
        return $this->db->rawQuery("WITH RECURSIVE category_path (id, title, path) AS ( SELECT id, title, title as path FROM nictr_postcat WHERE topcat = 0 UNION ALL SELECT c.id, c.title, CONCAT(cp.path, ' > ', c.id) FROM category_path AS cp JOIN nictr_postcat AS c ON cp.id = c.topcat ) SELECT * FROM category_path ORDER BY path;");
    }
}
