<?php echo $form->messages(); ?>

<div class="row">

	<div class="col-md-6">
		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">Informatii utilizator</h3>
			</div>
			<div class="box-body">
				<?php echo $form->open(); ?>

					<?php echo $form->bs3_text('Username', 'username'); ?>
					<?php echo $form->bs3_text('Numele', 'first_name'); ?>
					<?php echo $form->bs3_text('Prenumele', 'last_name'); ?>
					<?php echo $form->bs3_password('Parola', 'password'); ?>
					<?php echo $form->bs3_password('Retipareste parola', 'retype_password'); ?>

					<?php if ( !empty($groups) ): ?>
					<div class="form-group">
						<label for="groups">Grupuri</label>
						<div>
						<?php foreach ($groups as $group): ?>
							<label class="checkbox-inline">
								<input type="checkbox" name="groups[]" value="<?php echo $group->id; ?>"> <?php echo $group->name; ?>
							</label>
						<?php endforeach; ?>
						</div>
					</div>
					<?php endif; ?>

					<?php echo $form->bs3_trimite(); ?>
					
				<?php echo $form->close(); ?>
			</div>
		</div>
	</div>
	
</div>