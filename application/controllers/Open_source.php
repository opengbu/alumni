<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Open_source extends CI_Controller {

	public function index()
	{
		$this->load->view('pages/common/link');
        $this->load->view('pages/common/header');
        $this->load->view('pages/misc/open_source');
        $this->load->view('pages/common/footer');
	}
}
