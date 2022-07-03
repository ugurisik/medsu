<?php
class langModel extends model
{
    public function langlist()
    {
		return $this->db->get("langs");
    }
	 
    public function getVariables(){
        return $this->db->get("langs_meta");
    }
    public function addVariable($data){
        return $this->db->insert("langs_meta",$data);
    }
    public function updateVariable($data,$type){
        $this->db->where("type",$type);
        return $this->db->update("langs_meta",$data);
    }
    public function getVariableWithType($type){
        $this->db->where("type",$type);
       return $this->db->get("langs_meta");
    }

}