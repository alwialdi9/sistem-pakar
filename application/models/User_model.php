<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * 
 */
class User_model extends CI_Model
{
	public function getTable(){
		return $this->db->get('kecerdasan')->result_array();
	}

	public function getIndikasi()
	{
		return $this->db->get('kriteria_d')->result_array();
	}
}