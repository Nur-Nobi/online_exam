<?php 
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');

	class Subject{
		private $db;
		private $fm;
		public function __construct(){
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function getSub(){
			$query = "SELECT * FROM tbl_sub ORDER BY sub_id ASC";
			$result = $this->db->select($query);
			return $result;
		}

		public function addSubject($data){
			$sub_name = mysqli_real_escape_string($this->db->link, $data['sub_name']);
			$query = "INSERT INTO tbl_sub(sub_name) VALUES('$sub_name')";
			$inset_row = $this->db->insert($query);
				$msg = "<span class='success'>Question added Successfully..</span>";
				return $msg;
			}
		
		
		
	}

?>