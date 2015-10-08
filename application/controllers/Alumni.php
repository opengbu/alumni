<?php

/*  Note : class="active" in navbar is dynamic
  home=1
  distinguished=2
  alumnilist=3
  events=4
  gallery=5
  profile=6
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Alumni extends CI_Controller {

    public function index() {
        $data['title'] = 'Welcome to Gbu Alumni';
        $this->load->view('pages/common/link', $data);
        $this->load->view('pages/common/header');
        $this->load->view('pages/alumni/home');
        $this->load->view('pages/common/footer');
        $this->load->helper('date');
    }

    public function events() {

        $this->load->view('pages/common/link');
        $this->load->view('pages/common/header');
        $this->load->view('pages/alumni/events');
        $this->load->view('pages/common/footer');
    }

    public function gallery() {

        $this->load->view('pages/common/link');
        $this->load->view('pages/common/header');
        $this->load->view('pages/alumni/gallery');
        $this->load->view('pages/common/footer');
    }

}
