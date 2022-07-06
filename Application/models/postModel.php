<?php
	class postModel extends model
	{
		public function getCategories($type){
            $this->db->where("type",$type);
            return $this->db->get("postcat");
        }
        public function getCategoryWithId($id){
            $this->db->where("id",$id);
            return $this->db->getOne("postcat");
        }
		
	}
