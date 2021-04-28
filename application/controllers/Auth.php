<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function __construct(){
        parent::__construct();

        $this->load->library('form_validation');
    }

    public function index()
    {
        if ($this->session->userdata('role_id')) {
            # code...
            redirect('user');
        }
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email', [
            'required' => 'Harap isikan email anda',
            'valid_email' => 'Email anda tidak valid',
            'trim' => 'Harap isikan email anda'
        ]);
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]', [
            'required' => 'Harap isi kata sandi',
            'min_length' => 'Kata sandi terlalu pendek',
        ]);
        if ($this->form_validation->run() == false) {
            # code...
            $data['title'] = 'Sistem Pakar';
            $this->load->view('auth/sign', $data);
        } else {
            //validasinya success
            $this->_login();
        }
        
    }

    public function _login()
    {
        $email = $this->input->post('email'); //mengambil dengan cara post 
        $password = $this->input->post('password');
        //cari di db
        $user = $this->db->get_where('user', ['email' => $email])->row_array();
        //jika usernya ada
        if ($user) {
            if (password_verify($password, $user['password'])) {
                $data = [
                    'email' => $user['email'],
                    'role_id' => $user['role_id'],
                    'nama' => $user['nama'],
                ];
                $this->session->set_userdata($data);
                if ($user['role_id'] == 1) {
                    # code...
                    redirect('admin');
                } else {
                    redirect('user');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Kata Sandi yang anda masukkan salah!</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Email belum terdaftar</div>');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->unset_userdata('nama');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Anda berhasil keluar</div>');
        redirect('auth');
    }

}