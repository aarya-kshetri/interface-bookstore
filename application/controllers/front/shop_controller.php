<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_controller extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('front/shop_model');
		$this->load->model('front/category_model');
		$this->load->library('pagination');
}

	public function view()
	{
		$config = array();
		$config['base_url'] = base_url().'/front/shop_controller/view/';
		// echo $this->shop_model->count_books();
		// die();
		$config['total_rows'] = $this->shop_model->count_books();
		$config['per_page'] = 9;
		$config['uri_segment'] = 4;
		$config['num_links'] = 5;
		// $config['use_page_numbers'] = TRUE;
		$config['full_tag_open'] = '<ul class="pagination">';
		$config['full_tag_close'] = '</ul>';
		// $config['first_link'] = 'First';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		// $config['last_link'] = 'Last';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		$config['first_tag_open'] = "<li>";
    	$config['first_tag_close'] = "</li>";
		$config['num_tag_open'] = '<li>';
    	$config['num_tag_close'] = '</li>';
		// $config['next_link'] = '&gt;';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		// $config['prev_link'] = '&lt;';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';
		
		$this->pagination->initialize($config);

		if($this->uri->segment(4)){
				$page = ($this->uri->segment(4)) ;
				}
				else{
				$page = 1;
				}
				// echo $this->uri->segment(4);
				// die();


		$data['records']=$this->shop_model->book_detail($config['per_page'],$page);
		$data['links'] = $this->pagination->create_links();
		$data['categories'] = $this->category_model->view_bookcategory();
		$data['subcategories'] = $this->category_model->view_booksubcategory();
		$this->load->view('front/shop_view.php',$data);
	}
	
}

/* End of file shop.php */
/* Location: ./application/controllers/front/shop.php */