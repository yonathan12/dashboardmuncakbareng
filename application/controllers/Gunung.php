<?php
require('BaseController.php');
defined('BASEPATH') OR exit('No direct script access allowed');

class Gunung extends BaseController 
{
    public function index(){
        die(print_r($this->uri->segment(1,0),1));
    }
    
}
?>