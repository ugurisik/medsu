<?php
	
	class blogModel extends model
	{
		public function update($d, $id)
		{
			$data = array(
				"title" => json_encode($d, true)
			);
			$this->db->where("id", $id);
			$upd = $this->db->update("postcat", $data);
			if ($upd) {
				return true;
			} else {
				return false;
			}
		}
		
		public function insert($data)
		{
			$d = array(
				"title" => json_encode($data, true)
			);
			return $this->db->insert("postcat", $d);
		}
		
		public function insertBlog($post, $slug)
		{
			$data = array(
				"post_cover" => json_encode($post['blog_cover_'], true),
				"post_date" => date("Y-m-d H:i:s"),
				"post_content" => json_encode($post['blog_icerik_'], true),
				"post_title" => json_encode($post['blog_baslik_'], true),
				"post_status" => 1,
				"post_author" => 1,
				"post_slug" => json_encode($slug, true),
				"post_summary" => json_encode($post['blog_ozet_'], true),
				"post_keywords" => json_encode($post['blog_anahtarkelime_'], true)
			);
			return $this->db->insert("posts", $data);
		}
		
		public function updateBlog($post, $slug, $id)
		{
			$data = array(
				"post_cover" => json_encode($post['blog_cover_'], true),
				"post_modified" => date("Y-m-d H:i:s"),
				"post_content" => json_encode($post['blog_icerik_'], true),
				"post_title" => json_encode($post['blog_baslik_'], true),
				"post_status" => 1,
				"post_author" => 1,
				"post_slug" => json_encode($slug, true),
				"post_summary" => json_encode($post['blog_ozet_'], true),
				"post_keywords" => json_encode($post['blog_anahtarkelime_'], true)
			);
			$this->db->where("ID", $id);
			return $this->db->update("posts", $data);
		}
		
		public function getPostData($id)
		{
			$this->db->where("ID", $id);
			$getList = $this->db->get("posts");
			return $getList;
		}
		
		public function getMetaData($id)
		{
			$this->db->where("postID", $id);
			$getList = $this->db->get("post_meta");
			return $getList;
		}
		
		public function getMetaData2($id, $catid)
		{
			$this->db->where("postID", $id);
			$this->db->where("type_meta", $catid);
			$this->db->where("type", "cat");
			$getList = $this->db->get("post_meta");
			return $getList;
		}
		
		public function insertMeta($data, $table)
		{
			return $this->db->insert($table, $data);
		}
		
		public function deleteMetaWithPostID($id)
		{
			$this->db->where("postID", $id);
			return $this->db->delete("post_meta");
		}
		
		public function getData($id)
		{
			$this->db->where("id", $id);
			$getList = $this->db->get("postcat");
			return $getList;
		}
		
		public function getAll()
		{
			$getList = $this->db->get("postcat");
			return $getList;
		}
		
		public function delete($id)
		{
			$this->db->where("id", $id);
			$delete = $this->db->delete("postcat");
			return $delete;
		}
		
		public function getPosts($catID)
		{
			$cols = array("postID");
			$this->db->where("type", "cat");
			$this->db->where("type_meta", $catID);
			return $this->db->get("post_meta", null, $cols);
		}
		
		public function getAllPost($limit)
		{
			$this->db->orderBy("RAND ()");
			return $this->db->get("posts", $limit);
		}
		
		public function getPostWithSlug($slug)
		{
			$this->db->where("post_slug", '%' . $slug . '%', 'like');
			return $this->db->getOne("posts");
		}
		
	}
