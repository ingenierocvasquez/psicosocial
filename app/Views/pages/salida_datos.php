		<?php 
		foreach($css_files as $file): ?>
			<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
		<?php endforeach; ?>

		<div style='height:20px;'></div>  
		<div class="container" style="padding: 10px">
			<?php echo $output; ?>
			</br>
		</div>	
	
		<?php foreach($js_files as $file): ?>
			<script src="<?php echo $file; ?>"></script>
		<?php endforeach; ?>		
