<?php
class usersModel extends model
{
	public function getUserInformation($email)
	{
		$this->db->where("email", $email);
		return $this->db->getOne("users");
	}
	public function getUsers()
	{
		return $this->db->get("users");
	}
	public function getData($id)
	{
		$this->db->where("id", $id);
		return $this->db->getOne("users");
	}
	public function addUser($data)
	{
		return $this->db->insert("users", $data);
	}
	public function yetkiEkle($data)
	{
		return $this->db->insert("users_meta", $data);
	}
	public function userUpdate($data, $id)
	{
		$this->db->where("id", $id);
		return $this->db->update("users", $data);
	}
	public function yetkiSil($id)
	{
		$this->db->where("userID", $id);
		return $this->db->delete("users_meta");
	}
	public function userDelete($id)
	{
		$this->db->where("id", $id);
		return $this->db->delete("users");
	}
}
