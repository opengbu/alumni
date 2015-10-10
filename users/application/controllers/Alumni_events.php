<?php

/*
 *  Created on :Oct 8, 2015, 11:38:46 PM
 *  Author     :Varun Garg <varun.10@live.com>
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Alumni_events extends CI_Controller {

    function index() {
        redirect(base_url() . 'Alumni_events/view_all');
    }

    var $image_path = NULL;

    function secure_hard() {
        if ($this->permissions->get_level() == 0) {
            echo $this->load->view('common/header', '', TRUE);
            $message['errors'] = "Insufficient Privelleges. Please Contact Our Content Head";
            echo $this->load->view('Error_message', $message, TRUE);
            echo $this->load->view('common/footer', '', TRUE);
            die();
        }
        return 1;
    }

    function CreateOrUpdate() {
        $this->secure_hard();
        $this->load->library('form_validation');
        $this->load->helper(array('form', 'url'));

        $this->form_validation->set_rules('event_date', 'event_date', 'required');
        $this->form_validation->set_rules('event_name', 'event_name', 'required');
        $this->form_validation->set_rules('event_profile', 'event_profile', 'required');
        $this->form_validation->set_rules('event_location', 'event_location', 'required');
        $this->form_validation->set_rules('director_name', 'Organizer\'s name', 'required');
        $this->form_validation->set_rules('director_info', 'Organizer\'s Role', 'required');
        $this->form_validation->set_rules('director_image', 'Organizer\'s Picture', 'callback_check_image_and_upload');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('common/header');

            if ($this->input->get("event_id") != NULL) {

                $query = $this->db->get_where('alumni_events', array('event_id' => $this->input->get('event_id')));
                if ($query->num_rows() == 0) {
                    echo "<br /><br /><br /><br />No such Event exists";
                    return;
                }
                $form_data = $query->row();
                $this->load->view('alumni/event_form', $form_data);
            } else
                $this->load->view('alumni/event_form');
            $this->load->view('common/footer');
        } else {
            $this->load->helper('htmlpurifier');
            $extra_log_message = NULL;

            $form_data = array(
                'event_date' => html_purify($this->input->post('event_date')),
                'event_name' => html_purify($this->input->post('event_name')),
                'event_profile' => html_purify($this->input->post('event_profile')),
                'event_location' => html_purify($this->input->post('event_location')),
                'director_name' => html_purify($this->input->post('director_name')),
                'director_info' => html_purify($this->input->post('director_info')),
                'director_image' => $this->image_path,
            );

            if (strlen($this->image_path) == 0)
                unset($form_data['director_image']);

            if ($this->input->get('event_id') != "") {

                $this->db->update('alumni_events', $form_data, " event_id = '" . $this->input->get('event_id') . "'");
                $this->logger->insert('Updated alumni event ' . html_purify($this->input->post('event_name')) . ' (' . $this->input->get('event_id') . ')');
            } else {
                $this->db->insert('alumni_events', $form_data);
                $this->logger->insert('Created alumni event ' . html_purify($this->input->post('event_name')));
            }
            redirect(base_url() . 'Alumni_events/view_all');
        }
    }

    function view_all() {

        $this->load->view('common/header');
        $this->load->view('alumni/event_all');
        $this->load->view('common/footer');
    }

    function check_image_and_upload() {

        if (isset($_FILES['director_image']['tmp_name']) && strlen($_FILES['director_image']['tmp_name']) > 0) {

            if (!file_exists('../user_uploads/director_images')) {
                mkdir('../user_uploads/director_images', 0777, true);
            }

            $info = new SplFileInfo($_FILES['director_image']['name']);

            $config['upload_path'] = '../user_uploads/director_images';
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '2048';
            $config['overwrite'] = TRUE;
            $config['file_name'] = $this->input->get('event_id') . '.' . $info->getExtension();

            $this->image_path = 'user_uploads/director_images/' . $config['file_name']; //to be used by main f'n

            $this->load->library('upload', $config);
            if ($this->upload->do_upload("director_image")) {
                return TRUE;
            } else {
                $this->form_validation->set_message('check_image_and_upload', $this->upload->display_errors());
                return FALSE;
            }
        } else {
            return TRUE;
        }
    }

    function delete() {
        $this->secure_hard();

        $title_q = $this->db->query("select event_name from alumni_events where event_id = '" . $this->input->get('event_id') . "' ");
        $title_r = $title_q->row();
        $title = $title_r->event_name;

        $this->db->query("delete from alumni_events where event_id = '" . $this->input->get('event_id') . "'");

        $this->logger->insert('deleted event ' . $title . ' (' . $this->input->get('event_id') . ')', TRUE, TRUE);

        redirect(base_url() . 'Alumni_events/view_all');
    }

}
