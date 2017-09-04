<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Page_model extends CI_Model {
  public function __construct()
        {
			 parent::__construct();
             $this->load->database();
				
        }
	//about	 us
	public function get_page_aboutus($id)
    {   
        $query = $this->db->get_where('aboutus', array('id' => $id));
        return $query->row_array()['aboutus'];
    }
    public function update_page_aboutus($data,$id)
    {   
        if(!empty($this->input->post($data)))
		{
			$editor1 = $this->input->post($data);
			$this->db->set('aboutus', $editor1);
			$this->db->where('id', $id);
			$this->db->update('aboutus');
		}
    } 
    //menu
    public function get_menu()
    {   
	  $sql3 = "SELECT 
				   *
				   FROM
				   menu_item_ingredien INNER JOIN menu_items ON  menu_item_ingredien.item_id = menu_items.item_id 
									   INNER JOIN menu_ingredients ON  menu_item_ingredien.ingredient_id = menu_ingredients.ingredient_id
									   ";
		$sql4 = "SELECT 
				   *
                FROM
				menu_items
				";
		$sql5 = "SELECT * FROM menu_category";
		$q3 = $this->db->query($sql3);
		$q4 = $this->db->query($sql4);
		$q5 = $this->db->query($sql5);
		foreach($q5->result() as $k => $row)
		{
			$test5[$row->category_id]['category']=$row->category;	
		}
		foreach($q4->result() as $k => $row)
		{
		   
			if(array_key_exists($row->category_id, $test5))
			{
		    $test4[$test5[$row->category_id]['category']][$row->item_name]=$row->item_name;	 
		    }
		}
		
		foreach($q4->result() as $k => $row)
		{
		  $test[$row->item_id]['item_name']=$row->item_name;
		  $test[$row->item_name]['item_weight']=$row->item_weight;
          $test[$row->item_name]['item_price']=$row->item_price;
          $test[$row->item_name]['item_information']=$row->item_information;			  
		}
		
	   foreach($q3->result() as $k => $row)
	   {
		  
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['ingredient_id']= $row->ingredient_id;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['item_id']= $row->item_id;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['item_weight']= $row->item_weight;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['item_information']= $row->item_information;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['item_price']= $row->item_price;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['priority']= $row->priority;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['ingredient']= $row->ingredient;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['item_image']= $row->item_image;
		 $category1[$test[$row->item_id]['item_name']][$row->ingredient]['ingredient_alergic']= $row->ingredient_alergic; 
		  
	   }

	  foreach($test4 as $k_test4 => $row_test4)
	  {
		 foreach($row_test4 as $k_row_test4 => $val_row_test4)
		 {
		
			if(!empty($category1[$k_row_test4]))
			{
			$cat[$k_test4][$k_row_test4]= $category1[$k_row_test4];
			}else{
			$cat[$k_test4][$k_row_test4]= $test[$k_row_test4];	
			}
			
		 }
		 
	  }
	
	  return  $cat;
	 
    }	
}