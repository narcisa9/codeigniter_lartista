<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Panel management, includes: 
 * 	- Admin Users CRUD
 * 	- Admin User Groups CRUD
 * 	- Admin User Reset Password
 * 	- Account Settings (for login user)
 */
class Pages extends Admin_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_builder');
		$this->load->database();
		$this->load->model('page_model');
		$this->load->helper(array('url','file'));
	}
function _example_output($output = null)
	{
		$this->load->view('pages/homep.php',$output);	
	}
	
	public function homep()
	{
		//------ image crud --------------
		$img = $this->generate_image_crud('slides', 'url', 'assets/upload', $order_field = 'priority', $title_field = 'title');
		$output = $img->render();
		$this->mViewData['output'] = $output;
	  //---- end  iage crud -------------------
      

		$form = $this->form_builder->create_form();

		if ($form->validate())
		{
			// passed validation
			$username = $this->input->post('username');
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			$additional_data = array(
				'first_name'	=> $this->input->post('first_name'),
				'last_name'		=> $this->input->post('last_name'),
			);
			$groups = $this->input->post('groups');

			// create user (default group as "members")
			$user = $this->ion_auth->register($username, $password, $email, $additional_data, $groups);
			if ($user)
			{
				// success
				$messages = $this->ion_auth->messages();
				$this->system_message->set_success($messages);
			}
			else
			{
				// failed
				$errors = $this->ion_auth->errors();
				$this->system_message->set_error($errors);
			}
			refresh();
		}

		$groups = $this->ion_auth->groups()->result();
		unset($groups[0]);	// disable creation of "webmaster" account
		$this->mViewData['groups'] = $groups;
		$this->mPageTitle = 'Home Page';

		$this->mViewData['form'] = $form;
		$this->render('pages/homep');
	}
	
	public function menu_categories()
	{
	$crud = $this->generate_crud('menu_category');
	$crud->columns('category');
	$crud->unique_fields(['category']);
	$this->render_crud();

	//set
	$this->mPageTitle = 'Menu categories';  
	//$this->render('pages/menu');
	}
	public function menu_ingredients()
	{
	$crud = $this->generate_crud('menu_ingredients');
	$crud->change_field_type('ingredient_alergic', 'true_false', array('no', 'yes'));
	$crud->columns('ingredient');
	$crud->unique_fields(['ingredient']);
	$this->render_crud();

	//set
	$this->mPageTitle = 'Menu ingredients';  
	//$this->render('pages/menu');
	}
	public function menu_items()
	{
	$crud = $this->generate_crud('menu_items');
	//display
	$crud->display_as('category_id','Menu Category');
	$crud->display_as('ingredient_id','Ingredients');
	$crud->display_as('item_name','Menu name');
	$crud->display_as('item_price','Menu price');
	$crud->columns('item_name','category_id','item_information','item_weight','item_price','item_image');
    $crud->set_subject('Menu');
	
	//relation
    $crud->set_relation('category_id','menu_category','category');
	$crud->set_relation_n_n('intredient', 'menu_item_ingredien', 'menu_ingredients', 'item_id', 'ingredient_id', 'ingredient');
	
	$crud->required_fields('item_name','category_id');
    $crud->set_field_upload('item_image','assets/upload/menu');
	
	$this->render_crud();

	//set
	$this->mPageTitle = 'Menu items';  
	}
	
	
	public function about()
	{    
		$this->mPageTitle = 'About Us';       
		//update
		$form = $this->form_builder->create_form();
		if ($form->validate())
		{
		  $this->page_model->update_page_aboutus('editor1',1);
		}	
         //get  
		$editor_get = $this->page_model->get_page_aboutus(1);  
		//set data
		$this->mViewData['editor1'] = $editor_get;
		$this->mViewData['form'] = $form;
		//page view
		$this->render('pages/about');
	}

	//dropzone -- upload
	function proses_upload(){

        $config['upload_path']   = FCPATH.'/upload-foto/';
        $config['allowed_types'] = 'gif|jpg|png|ico';
        $this->load->library('upload',$config);

        if($this->upload->do_upload('userfile')){
        	$token=$this->input->post('token_foto');
        	$nama=$this->upload->data('file_name');
        	$this->db->insert('foto',array('nama_foto'=>$nama,'token'=>$token));
        }
	}
    //dropzone --remove
	function remove_foto(){

		//Ambil token foto
		$token=$this->input->post('token');
      if($token){
		$foto=$this->db->get_where('foto',array('token'=>$token));
		if($foto->num_rows()>0){
			$hasil=$foto->row();
			$nama_foto=$hasil->nama_foto;
			if(file_exists($file=FCPATH.'/upload-foto/'.$nama_foto)){
				unlink($file);
			}
			$this->db->delete('foto',array('token'=>$token));

		}
	  }else{
           $name=$this->input->post('name');
		 $foto=$this->db->get_where('foto',array('nama_foto'=>$name));
		if($foto->num_rows()>0){
			$hasil=$foto->row();
			$nama_foto=$hasil->nama_foto;
			if(file_exists($file=FCPATH.'/upload-foto/'.$nama_foto)){
				unlink($file);
			}
			$this->db->delete('foto',array('nama_foto'=>$name));

		}
	  }
	  $name=$this->input->post('name');
	  //print_r ('n='.$name);
	 // $data =$this->input->post('data');
     //var_dump( $data);
     //echo "{}";
	}
	//dropzone --show
	public function list_files()
	{
		 $result  = array();
 
   $this->load->helper("file");
	$files = get_filenames(FCPATH.'/upload-foto/');
	$fotos = $this->db->select('*')
	                  ->from('foto')
					  ->order_by('nama_foto', 'ASC')
				      ->get();
	//var_dump($fotos->result_array());
	foreach ($files as &$file) {
			$file = array(
				'name' => $file,
				'size' => filesize(FCPATH.'/upload-foto/' . $file)
			);
		}

		header("Content-type: text/json");
		header("Content-type: application/json");
		echo json_encode($files);
		
	/*
    $files = scandir(FCPATH.'/upload-foto/');                 //1
    if ( false!==$files ) {
        foreach ( $files as $file ) {
            if ( '.'!=$file && '..'!=$file) {       //2
                $obj['name'] = $file;
				$obj['size'] = filesize(FCPATH.'/upload-foto/'.$file);
                $result[] = $obj;
            }
        }
    }
     
    header('Content-type: text/json');              //3
    header('Content-type: application/json');
    echo json_encode($result);
*/
		
		/*
		$this->load->helper("file");
		$files = get_filenames($this->upload_path);
		// we need name and size for dropzone mockfile
		foreach ($files as &$file) {
			$file = array(
				'name' => $file,
				'size' => filesize($this->upload_path . "/" . $file)
			);
		}

		header("Content-type: text/json");
		header("Content-type: application/json");
		echo json_encode($files);
		
		*/
	}
	
	public function test()
	{
		$this->mPageTitle = 'About Us';
        $form = $this->form_builder->create_form();
		$this->mViewData['form'] = $form;
		$this->render('pages/about');
	}
	
	
	
	// Admin Users CRUD
	public function admin_user()
	{
		$crud = $this->generate_crud('admin_users');
		$crud->columns('groups', 'username', 'first_name', 'last_name', 'active');
		$this->unset_crud_fields('ip_address', 'last_login');

		// cannot change Admin User groups once created
		if ($crud->getState()=='list')
		{
			$crud->set_relation_n_n('groups', 'admin_users_groups', 'admin_groups', 'user_id', 'group_id', 'name');
		}

		// only webmaster can reset Admin User password
		if ( $this->ion_auth->in_group(array('webmaster', 'admin')) )
		{
			$crud->add_action('Reset Password', '', $this->mModule.'/panel/admin_user_reset_password', 'fa fa-repeat');
		}
		
		// disable direct create / delete Admin User
		$crud->unset_add();
		$crud->unset_delete();

		$this->mPageTitle = 'Admin Users';
		$this->render_crud();
	}

	// Create Admin User
	public function admin_user_create()
	{
		// (optional) only top-level admin user groups can create Admin User
		//$this->verify_auth(array('webmaster'));

		$form = $this->form_builder->create_form();

		if ($form->validate())
		{
			// passed validation
			$username = $this->input->post('username');
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			$additional_data = array(
				'first_name'	=> $this->input->post('first_name'),
				'last_name'		=> $this->input->post('last_name'),
			);
			$groups = $this->input->post('groups');

			// create user (default group as "members")
			$user = $this->ion_auth->register($username, $password, $email, $additional_data, $groups);
			if ($user)
			{
				// success
				$messages = $this->ion_auth->messages();
				$this->system_message->set_success($messages);
			}
			else
			{
				// failed
				$errors = $this->ion_auth->errors();
				$this->system_message->set_error($errors);
			}
			refresh();
		}

		$groups = $this->ion_auth->groups()->result();
		unset($groups[0]);	// disable creation of "webmaster" account
		$this->mViewData['groups'] = $groups;
		$this->mPageTitle = 'Create Admin User';

		$this->mViewData['form'] = $form;
		$this->render('panel/admin_user_create');
	}

	// Admin User Groups CRUD
	public function admin_user_group()
	{
		$crud = $this->generate_crud('admin_groups');
		$this->mPageTitle = 'Admin User Groups';
		$this->render_crud();
	}

	// Admin User Reset password
	public function admin_user_reset_password($user_id)
	{
		// only top-level users can reset Admin User passwords
		$this->verify_auth(array('webmaster'));

		$form = $this->form_builder->create_form();
		if ($form->validate())
		{
			// pass validation
			$data = array('password' => $this->input->post('new_password'));
			if ($this->ion_auth->update($user_id, $data))
			{
				$messages = $this->ion_auth->messages();
				$this->system_message->set_success($messages);
			}
			else
			{
				$errors = $this->ion_auth->errors();
				$this->system_message->set_error($errors);
			}
			refresh();
		}

		$this->load->model('admin_user_model', 'admin_users');
		$target = $this->admin_users->get($user_id);
		$this->mViewData['target'] = $target;

		$this->mViewData['form'] = $form;
		$this->mPageTitle = 'Reset Admin User Password';
		$this->render('panel/admin_user_reset_password');
	}

	// Account Settings
	public function account()
	{
		// Update Info form
		$form1 = $this->form_builder->create_form($this->mModule.'/panel/account_update_info');
		$form1->set_rule_group('panel/account_update_info');
		$this->mViewData['form1'] = $form1;

		// Change Password form
		$form2 = $this->form_builder->create_form($this->mModule.'/panel/account_change_password');
		$form1->set_rule_group('panel/account_change_password');
		$this->mViewData['form2'] = $form2;

		$this->mPageTitle = "Account Settings";
		$this->render('panel/account');
	}

	// Submission of Update Info form
	public function account_update_info()
	{
		$data = $this->input->post();
		if ($this->ion_auth->update($this->mUser->id, $data))
		{
			$messages = $this->ion_auth->messages();
			$this->system_message->set_success($messages);
		}
		else
		{
			$errors = $this->ion_auth->errors();
			$this->system_message->set_error($errors);
		}

		redirect($this->mModule.'/panel/account');
	}

	// Submission of Change Password form
	public function account_change_password()
	{
		$data = array('password' => $this->input->post('new_password'));
		if ($this->ion_auth->update($this->mUser->id, $data))
		{
			$messages = $this->ion_auth->messages();
			$this->system_message->set_success($messages);
		}
		else
		{
			$errors = $this->ion_auth->errors();
			$this->system_message->set_error($errors);
		}

		redirect($this->mModule.'/panel/account');
	}
	
	/**
	 * Logout user
	 */
	public function logout()
	{
		$this->ion_auth->logout();
		redirect($this->mConfig['login_url']);
	}
}
