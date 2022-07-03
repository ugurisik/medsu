<?php
class logManager extends model
{
    public function createLog($transaction)
    {
        $data=array(
            "Transaction"=>$transaction,
            "TransactionDate"=>date("Y-m-d H:i:s"),
            "userIP" => security::getIP(),
            "userOS" => security::getOS(),
            "userLang" => security::getLang(),
            "userAgent" => security::getUserAgent()
        );
        $this->db->insert("log", $data);
    }
    public function getLogs(){
        return $this->db->get("log");
    }
    public function getWhereLog($array = []){
        foreach ($array as $key => $value) {
            $this->db->where($key,$value);
        }
        return $this->db->get("log");
    }
}