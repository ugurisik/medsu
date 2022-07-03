<?php
	class contactModel extends model
	{
		public function addContact($data){
            $d = array(
                "name"=>$data['name'],
                "email"=>$data['email'],
                "phone"=>$data['phone'],
                "message"=>$data['message'],
                "file_path"=>$data['file_path']
            );
            return $this->db->insert("contactform",$d);
        }
		
	}
