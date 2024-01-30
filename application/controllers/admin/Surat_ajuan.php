<?php
defined('BASEPATH') or exit('No direct script acces allowed');

class Surat_ajuan extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Masuk_model");
        cek_login();

        $this->load->library('form_validation');
    }
    public function index()
    {
        $user_id = $this->session->userdata('id');
        $data = array(
            'title' => 'View Data Surat Pengajuan',
            'userlog' => infoLogin(),
            'surat' => $this->db->where('is_active',1)->where('user_id',$user_id)->get('tb_surat_masuk')->result(),
        );
        $this->load->view('template_user/main',$data);
    }
    public function add()
    {
        $data = array(
            'title' => 'Tambah data surat pengajuan',
            'userlog' => infoLogin(),
            'content' => 'surat_ajuam/add_form'
        );
        $this->load->view('template_user/main',$data);
    }
    public function save()
    {
        $this->Masuk_model->saveAjuan();
        if($this->db->affected-rows()>0){
            $this->session->set_flashdata("success","Data Surat Masuk Berhasil Disimpan");
        }
        redirect('surat_ajuan');
}