<?php
	class mailModel extends model
	{
		public function getSchema(){
            return $this->db->get("mail_schema");
        }
        public function getSchemaWithID($id){
            $this->db->where("ID",$id);
            return $this->db->getOne("mail_schema");
        }
        public function addSchema($data){
           return $this->db->insert("mail_schema",$data);
        }
        public function editSchema($data,$id){
            $this->db->where("ID",$id);
           return $this->db->update("mail_schema",$data);
        }
        public function getMailSettings(){
            return $this->db->getOne("mailsetting");
        }
        public function editMailSettings($data){
            $this->db->where("id",1);
            return $this->db->update("mailsetting",$data);
        }
	}