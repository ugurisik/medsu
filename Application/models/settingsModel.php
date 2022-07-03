<?php
	class settingsModel extends model
	{
		public function add($data){
            return $this->db->insert("settings",$data);
        }
        public function getList(){
            return $this->db->get("settings");
        }
        public function getSettings($id){
            $this->db->where("id",$id);
            return $this->db->getOne("settings");
        }
        public function update($data,$id){
            $this->db->where("id",$id);
            return $this->db->update("settings",$data);
        }
		
	}
