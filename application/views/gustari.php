 <style>
b { 
    font-weight: bold;
}
</style>
 <div class="container-wrapper">
            <div class="page-bg" style=" background-image: url(<?php echo base_url(); ?>assets/upload/bg-pizza.jpg); "></div>
            <div id="fullwidth-container">
                <!-- start container -->
                <div class="page-title-wrapper">
                    <div class="page-title-outher">
                        <div class="page-title-inner">
                            <span class="page-title-icon flaticon-pizza-slice"></span>
                            <h1 class="page-title">Pizza</h1>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="clear"></div>
				
	
				
				
				
                <div class="page-wrapper">
                    <div class="offer-menu2-wrapper">
                        <div class="offer-menu2-items">
<?php  foreach ($categories  as $key_cat => $cat): ?>
   <?php if($key_cat == 'gustari'): ?>
    <?php $simbol= ''; ($key_cat=='ciorbe')? $simbol = 'ml': $simbol = 'g' ; ?>
		<?php  foreach ($cat  as $name_menu => $item): ?>
							<?php  
								$ingredient = '';
								
								if(!empty($item))
								{
							    foreach ($item  as $name_ingredient => $information)
								{  
	  
							        if (isset($information['ingredient_alergic'])){
									if($information['ingredient_alergic'] == 1)
									{
										$ingredient .= '<b>'.$information['ingredient'].'</b>, ';
									}else{
										$ingredient .= $information['ingredient'].', ';
									}
									
									$item_weight =$information['item_weight'] ;
									$item_information =$information['item_information'] ;
									$item_price =$information['item_price'] ;
									$item_image =$information['item_image'] ;
								   }else{
									   $item_weight = $item['item_weight'];
									   $item_price = $item['item_price'];
									   $item_information = $item['item_information'] ;
									   $item_image =$item['item_image'] ;
								   }
								}
							
                   	       $ingredients =  mb_strtolower(rtrim($ingredient, ', '),"UTF-8");
								}else{
								$ingredients = '';	
								}
						// print_r($item);
							?>
						
 
  
			
                           <div class="offer-menu2-item-single w3-card-4  w3-yellow w3-margin" style="padding:0px;"> 
						   
   <div style="margin-bottom: 10px;">
    <?php if(!empty($item_image)): ?>
								   <img src="<?php  echo !empty($item_image)?  base_url('assets/upload/menu/'.$item_image) : ''; ?>" width="402"  alt="<?php echo $item_image ?>" />
	<?php endif; ?>
	</div>
    <div class="w3-container">

 

                    	<!--       <img class="offer-menu2-frame" src="<?php echo base_url('assets/images/frame.png'); ?>" />
                              
                                <div class="offer-menu2-thumb">
                                    <img class="offer-menu2-inner-frame" src="<?php echo  base_url('assets/images/inner-shadow.png'); ?>" />
                                </div> 
                                <div class="offer-menu2-thumb-image">
								  <?php if(!empty($item_image)): ?>
								   <img src="<?php  echo !empty($item_image)?  base_url('assets/upload/menu/'.$item_image) : ''; ?>" width="313" height="220" alt="<?php echo $item_image ?>" />
					    		   <?php endif; ?>
								   </div> -->
                                <div class="clear"></div>
                                <span class="offer-menu2-icon flaticon-pizza-slice"></span>
                                <div class="offer-menu2-details">
                                   <div class="single-offer-menu2-title"> <?php echo  ucfirst($name_menu); ?>
									      <span class="single-offer-weigth"><?php echo !empty($item_weight) ? "(".$item_weight."".$simbol.")": '' ?><span>
									</div>
									<div class="single-offer-information">
										<?php echo !empty($item_information) ? "(".$item_information.")": '' ?>
									</div>
                                    <div class="single-offer-menu2-content">
                                        <p><?php echo  $ingredients; ?></p>
                                    </div>
                                    <div class="single-offer-menu2-price">
									   <?php echo $item_price; ?>
									   <span style="font-size:1em;margin-left:3px;">lei<span>
									</div>
                                </div>  	
                            </div>
						</div>
			<?php endforeach; ?>
		  <?php endif; ?>
		<?php endforeach; ?>
                            
                            <div class="clear"></div>
							<hr>
							<p>
							   Ingredientele ce conțin factori alergeni sunt scrise îngrosat. *Prețurile sunt valabile până la <b>30.06.2017 </b>
							</p>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <!-- end page wrapper -->
            </div>
            <!-- end container -->
            <div class="clear"></div>
        </div>
        <!-- end container-wrapper -->