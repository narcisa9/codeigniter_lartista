<?php echo $form->messages(); ?>
<?php
// var_dump($output->output);
 foreach($output->css_files as $file)
 { ?>
 <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php }
 foreach($output->js_files as $file)
 { ?>
 <script src="<?php echo $file; ?>"></script>
<?php } ?>

<div class="row">
  <div class="col-md-12">
   <div class="box box-primary">
      <div class="box-header">
	    <h3 class="box-title">Slider Images</h3>
	  </div>
      <div class="box-body"><?php echo $output->output; ?></div>
    </div>
  </div>
 <!--
  <div class="col-md-6">
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">Home Page</h3>
			</div>
			<div class="box-body">
				<?php echo $form->open(); ?>

					<?php echo $form->bs3_text('Motto', 'motto'); ?>
					<?php echo $form->bs3_upload('Slide 1', 'slide1'); ?>
					<?php echo $form->bs3_upload('Slide 2', 'slide2'); ?>
					<?php echo $form->bs3_upload('Slide 3', 'slide3'); ?>
					<?php echo $form->bs3_text('Last Name', 'last_name'); ?>
					<?php echo $form->bs3_password('Password', 'password'); ?>
					<?php echo $form->bs3_password('Retype Password', 'retype_password'); ?>

					<?php if ( !empty($groups) ): ?>
					<div class="form-group">
						<label for="groups">Groups</label>
						<div>
						<?php foreach ($groups as $group): ?>
							<label class="checkbox-inline">
								<input type="checkbox" name="groups[]" value="<?php echo $group->id; ?>"> <?php echo $group->name; ?>
							</label>
						<?php endforeach; ?>
						</div>
					</div>
					<?php endif; ?>

					<?php echo $form->bs3_submit(); ?>
					
				<?php echo $form->close(); ?>
			</div>
		</div>
	</div>
-->
	
</div>