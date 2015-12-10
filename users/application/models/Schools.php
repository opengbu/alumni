<?php

/*
 *  Created on :Dec 10, 2015, 10:04:16 PM
 *  Author     :Varun Garg <varun.10@live.com>
 */

class Schools extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    var $schools = array(
        "SOICT" => "School Of Information and Communication  Technology",
        "SOVSAS" => "School Of Vocational Studies And Applied Sciences",
        "SOBT" => "School Of Biotechnology",
        "SOE" => "School Of Engineering",
        "SOM" => "School Of Management",
        "SOLJ" => "School of Law, Justice and Governance",
        "SOBSC" => " School of Buddhist Studies And Civilization ",
        "SOHSS" => "School of Humanities and Social Sciences",
    );

    function get_schools() {
        return $this->schools;
    }

}
