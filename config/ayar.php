<?php
class ayar extends model
{
		
		 public function firmam($field,$veri)
    {

			if($_SESSION['firmam']!='') {
				return json_decode($_SESSION['firmam'][$field],true)[$veri];
			}else{
				$sorgu=$this->db->query("select * from ayar ")->fetch();
				$_SESSION['firmam']=$sorgu;
				return json_decode($sorgu[$field],true)[$veri];
			}
           
       
    }


    public function kategori($id)
    {
        $sorgu=$this->db->query("select * from kategori where  tur = '$id' ");
        return $sorgu->fetchAll(PDO::FETCH_ASSOC);

    }

    public function sube()
    {
        $sorgu=$this->db->query("select * from sube ");
        return $sorgu->fetchAll(PDO::FETCH_ASSOC);

    }
    public function kurumsal()
    {
        $sorgu=$this->db->query("select * from kurumsal ");
        return $sorgu->fetchAll(PDO::FETCH_ASSOC);

    }

    public function banner($field)
    {
        $sorgu=$this->db->query("select * from banner where id = '1' ");
        $q= $sorgu->fetch(PDO::FETCH_ASSOC);
        return $q[$field];
    }

	
}