<?php
	class menuModel extends model
	{
		public function getList(){
            return $this->db->get("menu");
        }
        public function getData($id){
            $this->db->where("id",$id);
            return $this->db->getOne("menu");
        }
        public function checkMenu($position,$lang){
            $this->db->where("menu_position",$position);
            $this->db->where("menu_langID",$lang);
            return $this->db->get("menu");
        }
        public function addMenu($data){
            return $this->db->insert("menu",$data);
        }
        public function updateMenuWithPosLang($pos,$lang,$data){
            $this->db->where("menu_position",$pos);
            $this->db->where("menu_langID",$lang);
            return $this->db->update("menu",$data);
        }
	}