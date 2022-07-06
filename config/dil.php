<?php
class dil extends model
{
		
	public function dillist(){

		$dil=$this->db->get("langs");
		return $dil;

	}

	public function dilkisa(){
		
		$this->db->orderBy("id","ASC");
		$dil = $this->db->get("langs");
		//$arraym[0]="dil sıfır ".$d['kisa'];
		//$arraym[1]="dil bir ".$d['kisa'];
		//return $arraym;
		//foreach($dil as $d){$dilarr[0][]=$d['kisa'];$dilarr[1][]=$arraym;}
		//return $dilarr;
		return $dil;
	}

	public function defaultdil(){
		return "tr";
	}

}