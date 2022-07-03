<?php
	class socialModel extends model
	{
		public function getSocial(){
            return $this->db->get("social");
        }
        public function getSocialWithID($id){
            $this->db->where("id",$id);
            return $this->db->getOne("social");
        }
        public function editSocial($data,$id){
            $this->db->where("id",$id);
            return $this->db->update("social",$data);
        }
        public function addSocial($data){
            return $this->db->insert("social",$data);
        }
        public function deleteSocial($id){
            $this->db->where("id",$id);
            return $this->db->delete("social");
        }
	}