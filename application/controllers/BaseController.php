<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BaseController extends CI_Controller 
{
    public function __construct(){
        parent::__construct();
        is_logged_in();
        $this->load->model('Kode_model','kode');
        $this->load->model('Admin_model');
        $this->load->model('Dashboard_model');
        $this->load->model('Menu_model');
    }
    
}
?>