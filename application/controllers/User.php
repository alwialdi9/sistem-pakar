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