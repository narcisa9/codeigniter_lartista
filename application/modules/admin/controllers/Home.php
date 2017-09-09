<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Admin_Controller {

	public function index()
	{
		$this->load->model('user_model', 'users');
		$this->load->model('page_model');
		$this->mViewData['count'] = array(
			'users' => $this->users->count_all(),
			'categories' => count($this->page_model->get_menu()),
			'ingrediens' => count($this->page_model->get_ingredients()),
			'preparats' => count($this->page_model->get_preparats())
		);
		
		$this->mPageTitle = 'Acasa';
		$this->render('home');
	}
}
