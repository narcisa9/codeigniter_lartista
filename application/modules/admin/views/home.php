<div class="row">
	<div class="col-md-3">
		<?php echo modules::run('adminlte/widget/info_box', 'yellow', $count['users'], 'Utilizatori', 'fa fa-users', 'user'); ?>
	</div>
	<div class="col-md-3">
		<?php echo modules::run('adminlte/widget/info_box', 'green', $count['categories'], 'Meniuri', 'fa fa-book ', 'pages/menu_categories'); ?>
	</div>
	<div class="col-md-3">
		<?php echo modules::run('adminlte/widget/info_box', 'blue', $count['ingrediens'], 'Ingrediente', 'fa fa-apple ', 'pages/menu_ingredients'); ?>
	</div>
	<div class="col-md-3">
		<?php echo modules::run('adminlte/widget/info_box', 'red', $count['preparats'], 'Preparate', 'fa fa-cutlery  ', 'pages/menu_items'); ?>
	</div>
</div>
<div class="row">
	<div class="col-md-4">
		<?php echo modules::run('adminlte/widget/box_open', 'Informatii'); ?>
			<?php echo modules::run('adminlte/widget/app_btn', 'fa fa-user', 'Contul meu', 'panel/account'); ?>
			<?php echo modules::run('adminlte/widget/app_btn', 'fa fa-sign-out', 'Delogare', 'panel/logout'); ?>
		<?php echo modules::run('adminlte/widget/box_close'); ?>
	</div>
</div>
