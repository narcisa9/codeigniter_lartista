<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/dropzone/dropzone.min.css') ?>">
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/dropzone/basic.min.css') ?>">

<script type="text/javascript" src="<?php echo base_url('assets/js/dropzone/jquery.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/dropzone/dropzone.min.js') ?>"></script>

<style type="text/css">

body{
	background-color: #E8E9EC;
}

.dropzone {
	margin-top: 100px;
	border: 2px dashed #0087F7;
}

</style>

<!-- 1.DROPZONE -->
<h3> <i class="fa fa-folder-open-o" aria-hidden="true"></i> upload-foto </h3>
<div class="dropzone" >
  <div class="dz-message">
   <h3>Add  images</h3>
  </div>
</div>



<script type="text/javascript">
Dropzone.autoDiscover = false;
var foto_upload= new Dropzone(".dropzone",{
url: "<?php echo base_url('admin/pages/proses_upload') ?>",
maxFilesize: 2,
method:"post",
acceptedFiles:"image/*",
paramName:"userfile",
dictInvalidFileType:"Type file ini tidak dizinkan",
addRemoveLinks:true,	
init: function() {
				var me = this;
				$.get("<?php echo base_url('admin/pages/list_files') ?>", function(data) {
					// if any files already in server show all here
					if (data.length > 0) {
						$.each(data, function(key, value) {
							var mockFile = { name: value.name,size: value.size };
							me.emit("addedfile", mockFile);
                            me.createThumbnailFromUrl(mockFile, "<?php echo base_url('upload-foto/'); ?>" + value.name);
							me.emit("complete", mockFile);
						});
					}
				});
		}
});

//1.
foto_upload.on("sending",function(a,b,c){
	a.token=Math.random();
	c.append("token_foto",a.token); 
});
//2.
foto_upload.on("removedfile",function(file){
	var token=file.token;
	var name = file.name;
	//alert(name);
	$.ajax({
		type:"post",
		data:{"name":name,"token":token},
		url:"<?php echo base_url('admin/pages/remove_foto') ?>",
		cache:false,
		//dataType: 'json',
		success: function(data){
			console.log("Foto terhapus");
			console.log(data);
		},
		error: function(data){
			console.log("Error");

		}
	});
});

</script>
<br>

<!-- 2.CKEDITOR  -->
<script src="<?php echo base_url('assets/ckeditor/ckeditor.js'); ?>"></script>
	<div id="ckeditort">
	    <?php echo $form->open(); ?>
		<?php echo $form->bs3_textarea('', 'editor1',$editor1); ?>
		<?php echo $form->bs3_submit(); ?>
		<?php echo $form->close(); ?>
	</div>	
<script>
    CKEDITOR.replace('editor1' ,{
		
	});
 </script>
             
  <?php /* ---TINYMCE---
 <script type='text/javascript' src='<?php echo base_url("assets/js/tinymce/tinymce.min.js?apiKey=swbybi7fof17p8sqen4mwrqzswmch84smj96lwvpkwztkeqn"); ?>'>
  */ ?>
