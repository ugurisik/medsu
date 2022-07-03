<?php
	class sayfaModel extends model
	{
		public function getPages(){
            return $this->db->get("posts");
        }
	}