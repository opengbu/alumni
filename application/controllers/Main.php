<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

        public function index()
	{
		$data['title'] = 'Welcome to Gbu Alumni';
		$this->load->view('pages/common/link',$data);
		$this->load->view('pages/common/header');
		$this->load->view('pages/alumni/home');
        $this->load->view('pages/common/footer');
		$this->load->helper('date');
    }
	
	
	
	   
}
