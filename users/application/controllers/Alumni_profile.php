<?php

/*
 *  Created on :Sep 02, 2015, 2:20:36 AM
 *  Author     :Varun Garg <varun.10@live.com>
 */

class Alumni_profile extends CI_Controller {

    function basic_form_1() {
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('dob', 'Date Of birth', 'required|max_length[100]');
        $this->form_validation->set_rules('address', 'Address', 'required');
        $this->form_validation->set_rules('gender', 'Gender', 'required');
        $this->form_validation->set_rules('marital_status', 'Marital status', 'required|max_length[100]');

        $this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');
    }

    function basic_form_2() {

        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('start_year', 'Start Year', 'required|max_length[15]');
        $this->form_validation->set_rules('end_year', 'End Year (Enter CURRENT in case of ongoing)', 'required|max_length[15]');
        $this->form_validation->set_rules('company_name', 'Company Name', 'required|max_length[50]');
        $this->form_validation->set_rules('location', 'Location', 'max_length[100]');
        $this->form_validation->set_rules('designation', 'Designation', 'required|max_length[100]');
        $this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');
    }

    function basic_form_3() {

        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('start_year', 'Start Year', 'required|max_length[15]');
        $this->form_validation->set_rules('passout_year', 'passout Year', 'required|max_length[15]');
        $this->form_validation->set_rules('course_name', 'Course Name', 'required|max_length[50]');
        $this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');
    }

    function create() {
        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $check_q = $this->db->query("select count(*) as profiles from alumni_basic where user_id = '" . $this->session->userdata('user_id') . "'");
        $check = $check_q->row();
        if ($check->profiles >= 1)
            redirect('alumni_profile/update');

        $this->basic_form_1();


        if ($this->form_validation->run() == FALSE) { // validation hasn't been passed
            $this->load->view('common/header');
            $this->load->view('alumni/create_profile');
            $this->load->view('common/footer');
        } else {
            $this->load->helper('htmlpurifier');
            $form_data = array(
                'user_id' => $this->session->userdata('user_id'),
                'dob' => html_purify($this->input->post('dob')),
                'address' => html_purify($this->input->post('address')),
                'gender' => html_purify($this->input->post('gender')),
                'marital_status' => html_purify($this->input->post('marital_status'))
            );


            $this->db->insert('alumni_basic', $form_data);

            redirect('Alumni_profile/success');
        }
    }

    function update() {
        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $check_q = $this->db->query("select count(*) as profiles from alumni_basic where user_id = '" . $this->session->userdata('user_id') . "'");
        $check = $check_q->row();
        if ($check->profiles == 0)
            redirect('alumni_profile/create');

        $this->basic_form_1();

        if ($this->form_validation->run() == FALSE) { // validation hasn't been passed
            $this->load->view('common/header');

            $query = $this->db->get_where('alumni_basic', array('user_id' => $this->session->userdata('user_id')));

            $form_data = $query->row();

            $this->load->view('alumni/create_profile', $form_data);
            $this->load->view('common/footer');
        } else {
            $this->load->helper('htmlpurifier');

            $form_data = array(
                'user_id' => $this->session->userdata('user_id'),
                'dob' => html_purify($this->input->post('dob')),
                'address' => html_purify($this->input->post('address')),
                'gender' => html_purify($this->input->post('gender')),
                'marital_status' => html_purify($this->input->post('marital_status')),
            );


            $this->db->update('alumni_basic', $form_data, "user_id = '" . $form_data['user_id'] . "'");
            redirect('Alumni_profile/update');
        }
    }

    function view_work_info() {
        $this->load->view('common/header');
        $u_info['user_id'] = $this->session->userdata('user_id');
        $this->load->view('alumni/work_info', $u_info);
        $this->load->view('common/footer');
    }

    function add_work_info() {

        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);
        $this->basic_form_2();

        if ($this->form_validation->run() == FALSE) { // validation hasn't been passed
            $this->load->view('common/header');
            $this->load->view('alumni/work_info_form');
            $this->load->view('common/footer');
        } else {
            $this->load->helper('htmlpurifier');

            $form_data = array(
                'user_id' => $this->session->userdata('user_id'),
                'start_year' => html_purify($this->input->post('start_year')),
                'end_year' => html_purify($this->input->post('end_year')),
                'company_name' => html_purify($this->input->post('company_name')),
                'location' => html_purify($this->input->post('location')),
                'designation' => html_purify($this->input->post('designation')),
            );

            $this->db->insert('work_details', $form_data);
            redirect('Alumni_profile/view_work_info');
        }
    }

    function edit_work_info() {

        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $this->basic_form_2();

        if ($this->form_validation->run() == FALSE) { // validation hasn't been passed
            $this->load->view('common/header');

            $query = $this->db->get_where('work_details', array('id' => $this->input->get('work_id')));

            $form_data = $query->row();

            $this->load->view('alumni/work_info_form', $form_data);
            $this->load->view('common/footer');
        } else {
            $this->load->helper('htmlpurifier');

            $form_data = array(
                'user_id' => $this->session->userdata('user_id'),
                'start_year' => html_purify($this->input->post('start_year')),
                'end_year' => html_purify($this->input->post('end_year')),
                'company_name' => html_purify($this->input->post('company_name')),
                'location' => html_purify($this->input->post('location')),
                'designation' => html_purify($this->input->post('designation')),
            );

            $this->db->update('work_details', $form_data, "id = '" . $this->input->get('work_id') . "'");
            redirect('Alumni_profile/view_work_info');
        }
    }

    function delete_work() {

        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $work_id = $this->input->get('work_id');
        $this->db->query("delete from work_details where id = '$work_id'");
        redirect('Alumni_profile/view_work_info');
    }

    function view_education_info() {
        $this->load->view('common/header');
        $u_info['user_id'] = $this->session->userdata('user_id');
        $this->load->view('alumni/edu_info', $u_info);
        $this->load->view('common/footer');
    }

    function add_education_info() {
        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $this->basic_form_3();


        if ($this->form_validation->run() == FALSE) { // validation hasn't been passed
            $this->load->view('common/header');
            $this->load->view('alumni/edu_info_form');
            $this->load->view('common/footer');
        } else {
            $this->load->helper('htmlpurifier');

            $form_data = array(
                'user_id' => $this->session->userdata('user_id'),
                'start_year' => html_purify($this->input->post('start_year')),
                'passout_year' => html_purify($this->input->post('passout_year')),
                'course_name' => html_purify($this->input->post('course_name')),
            );


            $this->db->insert('edu_info', $form_data);

            redirect('Alumni_profile/view_education_info');
        }
    }

    function edit_education_info() {
        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $this->basic_form_3();


        if ($this->form_validation->run() == FALSE) { // validation hasn't been passed
            $this->load->view('common/header');
            $query = $this->db->get_where('edu_info', array('id' => $this->input->get('edu_id')));
            $form_data = $query->row();

            $this->load->view('alumni/edu_info_form', $form_data);
            $this->load->view('common/footer');
        } else {
            $this->load->helper('htmlpurifier');

            $form_data = array(
                'user_id' => $this->session->userdata('user_id'),
                'start_year' => html_purify($this->input->post('start_year')),
                'passout_year' => html_purify($this->input->post('passout_year')),
                'course_name' => html_purify($this->input->post('course_name')),
            );

            $this->db->update('edu_info', $form_data, "id = '" . $this->input->get('edu_id') . "'");
            redirect('Alumni_profile/view_education_info');
        }
    }

    function delete_edu() {

        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $edu_id = $this->input->get('edu_id');
        $this->db->query("delete from edu_info where id = '$edu_id'");
        redirect('Alumni_profile/view_education_info');
    }

    function index() {
        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . current_url() . "?" . $_SERVER['QUERY_STRING']);

        $this->load->view('common/header');
        $this->load->view('alumni/all_alumni');
        $this->load->view('common/footer');
    }

    function load_profile() {
        if ($this->session->userdata('loggedin') != 1)
            redirect('/users?redirect=' . base_url('alumni_profile'));

        $this->load->view('common/header');
        $this->load->view('alumni/load_profile');
        $this->load->view('common/footer');
    }

}
