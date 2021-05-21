<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct(){
        parent::__construct();
        $this->load->model('User_model');
        // if ($this->session->userdata('role_id') == null) {
        //     # code...
        //     redirect('auth');
        // }

    }

    public function index()
    {
        $data['title'] = "Sistem Pakar";
        $this->load->view('template/header', $data);
        $this->load->view('template/navbar');
        $this->load->view('users/index');
        $this->load->view('template/footer');
    }

    public function diagnosa(){
        $data['title'] = "Diagnosa";
        $data['indikasi'] = $this->User_model->getIndikasi();
        
        if($this->input->post('kondisi')){

            $kondisi = $this->input->post('kondisi'); // MENANGKAP NILAI NILAI YANG TELAH DIPILIH
            $jumlah_dipilih = count($kondisi); // JUMLAH PILIHAN DARI CHECKBOX
           
           for( $x=0; $x<$jumlah_dipilih; $x++ ){
             
             $tampil = "SELECT DISTINCT p.id, p.deskripsi, p.kecerdasan FROM
             indikasi b, kecerdasan p 
             WHERE b.kondisi='$kondisi[$x]' AND p.kecerdasan=b.kecerdasan
             GROUP BY kondisi";
             
             $result = $this->db->query("SELECT DISTINCT p.id, p.deskripsi, p.kecerdasan FROM
             indikasi b, kecerdasan p 
             WHERE b.kondisi='$kondisi[$x]' AND p.kecerdasan=b.kecerdasan
             GROUP BY kondisi");  

             $hasil = $result->result_array();
            //  var_dump($hasil);
            //  die;
           } //END FOR
           $data['hasil'] = $hasil;
           $data['x'] = $x;
        } else{
            $data['hasil'] = 'no result';
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/navbar');
        $this->load->view('users/diagnosa');
        $this->load->view('template/footer');
    }
    public function kecerdasan(){
        $data['title'] = "Tabel Kecerdasan";
        $data['tabel'] = $this->User_model->getTable();

        $this->load->view('template/header', $data);
        $this->load->view('template/navbar');
        $this->load->view('users/tbl-kecerdasan');
        $this->load->view('template/footer');
    }
    public function about(){
        $data['title'] = "Tentang Kami";
        $this->load->view('template/header', $data);
        $this->load->view('template/navbar');
        $this->load->view('users/about');
        $this->load->view('template/footer');
    }

}