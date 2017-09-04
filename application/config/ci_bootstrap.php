<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| CI Bootstrap 3 Configuration
| -------------------------------------------------------------------------
| This file lets you define default values to be passed into views 
| when calling MY_Controller's render() function. 
| 
| See example and detailed explanation from:
| 	/application/config/ci_bootstrap_example.php
*/

$config['ci_bootstrap'] = array(

	// Site name
	'site_name' => "L'Artista",

	// Default page title prefix
	'page_title_prefix' => '',

	// Default page title
	'page_title' => "L'Artist - Pizza & Restaurant",

	// Default meta data
	'meta_data'	=> array(
		'author'		=> "L'Artista",
		'description'	=> 'Cea mai buna pizza din oras',
		'keywords'		=> 'pizza,rm. valcea, livrare la domiciliu, margherita, clasic, restaurant'
	),

	// Default scripts to embed at page head or end
	'scripts' => array(
		'head'	=> array(
		    
		),
		'foot'	=> array(
			'assets/dist/frontend/lib.min.js',
			'assets/dist/frontend/app.min.js'
		),
	),

	// Default stylesheets to embed at page head
	'stylesheets' => array(
		'assets/dist/frontend/lib.min.css',
		'assets/dist/frontend/app.min.css'
	),

	// Default CSS class for <body> tag
	'body_class' => 'home page-template page-template-template-home page-template-template-home-php page page-id-7',
	
	// Multilingual settings
	'languages' => array(
		'default'		=> 'en',
		'autoload'		=> array('general'),
		'available'		=> array(
			'en' => array(
				'label'	=> 'English',
				'value'	=> 'english'
			),
			'zh' => array(
				'label'	=> '繁體中文',
				'value'	=> 'traditional-chinese'
			),
			'cn' => array(
				'label'	=> '简体中文',
				'value'	=> 'simplified-chinese'
			),
			'es' => array(
				'label'	=> 'Español',
				'value' => 'spanish'
			)
		)
	),

	// Google Analytics User ID
	'ga_id' => '',

	// Menu items
	'menu' => array(
		'home' => array(
			'name'		=> 'Acasa',
			'url'		=> 'pages'
			
		),
		'menu' => array(
		
			'name'		=> 'Meniu',
			'url'		=> 'menu'
		),
		'pizzas' => array(
		
			'name'		=> 'Pizza',
			'url'		=> 'pizzas'
		),
		'gustari' => array(
		
			'name'		=> 'Gustari',
			'url'		=> 'gustari'
		),
		'about' => array(
		
			'name'		=> 'Despre noi',
			'url'		=> 'about'
		),
		'contact' => array(
		
			'name'		=> 'Contact',
			'url'		=> 'contact'
		),
		'blog' => array(
		
			'name'		=> 'Blog',
			'url'		=> 'blog'
		)
		
	),

	// Login page
	'login_url' => '',

	// Restricted pages
	'page_auth' => array(
	),

	// Email config
	'email' => array(
		'from_email'		=> '',
		'from_name'			=> '',
		'subject_prefix'	=> '',
		
		// Mailgun HTTP API
		'mailgun_api'		=> array(
			'domain'			=> '',
			'private_api_key'	=> ''
		),
	),

	// Debug tools
	'debug' => array(
		'view_data'	=> FALSE,
		'profiler'	=> FALSE
	),
);

/*
| -------------------------------------------------------------------------
| Override values from /application/config/config.php
| -------------------------------------------------------------------------
*/
$config['sess_cookie_name'] = 'ci_session_frontend';