<?php
	class postModel extends model
	{
		public function getCategories($type){
            $this->db->where("type",$type);
            return $this->db->get("postcat");
        }
		
	}
