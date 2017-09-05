<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Home extends MY_Controller {

	public function index()
	{
	    $this->mViewData['test'] = 'test';
		$this->render('home', 'default','data');
	}
	
	public function test()
	{ 
	
	    $this->mViewData['test'] = 'test';
		$this->render('test', 'default','data');
	}
}
