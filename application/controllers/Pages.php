<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Pages extends MY_Controller {
	
		function __construct() {
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('slide_model');
		$this->load->model('page_model');
	}

	public function index()
	{
		$this->mViewData['slides'] = $this->slide_model->get_slides();
	    $this->mViewData['test'] = 'test';
		$this->render('home', 'default_lartista','data');
	}
	
	public function menu()
	{
	    $this->mViewData['test'] = 'test';
		$this->mViewData['categories'] = $this->page_model->get_menu();
		$this->render('menu', 'default_lartista');
	}
	public function pizzas()
	{
	    $this->mViewData['test'] = 'test';
		$this->mViewData['categories'] = $this->page_model->get_menu();
		//print_r($this->mViewData['categories']);
		$this->render('pizzas', 'default_lartista');
	}
	public function gustari()
	{
	    $this->mViewData['test'] = 'test';
		$this->mViewData['categories'] = $this->page_model->get_menu();
		//print_r($this->mViewData['categories']);
		$this->render('pizzas', 'default_lartista');
	}
	public function about()
	{
		$aboutus =  $this->page_model->get_page_aboutus(1);
		//var_dump($aboutus)
	    $this->mViewData['aboutus'] = $aboutus;
		$this->render('about', 'default_lartista','data');
	}
	
	public function contact()
	{
		//$aboutus =  $this->page_model->get_page_aboutus(1);
		//var_dump($aboutus)
	    //$this->mViewData['aboutus'] = $aboutus;
		$this->render('contact', 'default_lartista','data');
	}
}
