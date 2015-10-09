<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Alumni extends CI_Controller {

    public function index() {

        $this->load->view('pages/common/link');
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

    public function alumni_list($dist) {
        $data['special'] = $dist;
        $this->load->view('pages/common/link');
        $this->load->view('pages/common/header');
        $this->load->view('pages/alumni/all_alumni', $data);
        $this->load->view('pages/common/footer');
    }

}
