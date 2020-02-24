<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller 
{
    public function __construct(){
        parent::__construct();
        is_logged_in();
        $this->load->model('Kode_model','kode');
        $this->load->model('Master_model');
    }

    public function index(){
        require('Gunung.php');
        $gunung = new Gunung;
        return $gunung->index();
        // die(print_r($this->uri->segment(3,0),1));
    }
    
}
?>