<style>
b { 
    font-weight: bold;
}
</style>

<div class="container-wrapper">
            <div class="page-bg" style=" background-image: url(<?php echo base_url(); ?>assets/upload/bg-pizza.jpg); "></div>
            <div id="container">
                <!-- start container -->
                <div class="page-title-wrapper">
                    <div class="page-title-outher">
                        <div class="page-title-inner">
                            <span class="page-title-icon flaticon-pizza-slice"></span>
                            <h1 class="page-title">Meniu</h1>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="clear"></div>
				  <div class="page-wrapper">
                <div class="offer-menu-wrapper">
					 <?php 
					 $index = 1; 
					 $index1 = 1;
					  ?>
				<ul id="filters" class="single-offer-category-filter option-set" data-option-key="filter">
					<?php  foreach ($categories  as $key_cat => $cat): ?>
					  <?php  if($key_cat != 'gustari'): ?>
					       <li class="filter-cat"><a class="<?php echo ($index == 1)? 'selected':'' ?>" href= "#filter" data-option-value=".cat<?php echo  $index++ ?>"><?php  echo $key_cat;  ?></a>
						   </li>
					  <?php endif; ?>
					<?php endforeach; ?>
				 </ul> 
					<!--//list  items -->
					 <div class="offer-menu-items">
					<?php //print_r($categories); ?>
					<?php  foreach ($categories  as $key_cat => $cat): ?>
					<?php  if($key_cat != 'gustari'): ?>
					    <?php $simbol= '';
						($key_cat=='ciorbe')? $simbol = 'ml': $simbol = 'g' ; ?>
						 <div class="single-offer-category-item isotope-item cat<?php echo $index1++; ?>">
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
								   }else{
									   $item_weight = $item['item_weight'];
									   $item_price = $item['item_price'];
									   $item_information = $item['item_information'] ;
								   }
								}
							
                   	       $ingredients =  mb_strtolower(rtrim($ingredient, ', '),"UTF-8");
								}else{
								$ingredients = '';	
								}
							?>
							  <div class="single-offer-item">
                                    <div class="single-offer-details">
                                        <div class="single-offer-title">
										    <?php echo $name_menu; ?><span class="single-offer-weigth"><?php echo !empty($item_weight) ? "(".$item_weight."".$simbol.")": '' ?><span>
										</div>
										<div class="single-offer-information">
										    <?php echo !empty($item_information) ? "(".$item_information.")": '' ?>
										</div>
                                        <div class="single-offer-content">
                                            <p><?php echo  $ingredients; ?></p>
                                        </div>
                                    </div>
                                    <div class="single-offer-price"><?php echo $item_price; ?><span style="   font-size: 20px;margin-left:5px;">lei<span></div>
                                    <div class="clear"></div>
                               </div> 
							<?php endforeach; ?>
						 </div>
					  <?php endif; ?>
					<?php endforeach; ?>
					</div>
                        <div class="clear"></div>
						<hr>
						<p><i>Ingredientele ce conțin factori alergeni sunt scrise îngrosat. *Prețurile sunt valabile până la <b>30.06.2017</b></i></p>
                    </div>
                </div>
                <!-- end page wrapper -->
            </div>
            <!-- end container -->
        <div class="clear"></div>
    </div>
    <!-- end container-wrapper -->