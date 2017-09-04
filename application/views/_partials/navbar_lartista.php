    <div class="animsition global-wrapper">
        <div id="header" class="header-wrapper">
            <div class="logo">
                <a href="index.html" title="L'Artista - Pizza HTML Theme"><img class="logoImage" src='<?php echo base_url("assets/images/logo.png"); ?>' alt="ALBERTOS - Pizza HTML Theme" /><img class="logoImageRetina" src='<?php echo base_url("assets/images/logo-retina.png"); ?>' alt="L'Artista - Pizza HTML Theme" /></a>
                <div class="clear"></div>
            </div>
            <div class="menu-wrapper">
                <div class="main-menu">
                    <div class="menu-main-nav-menu-container">
                        <ul id="menu-main-nav-menu" class="sf-menu">
							 
							 <?php foreach ($menu as $parent => $parent_params): ?>
								<?php if (empty($parent_params['children'])): ?>
									<?php $active = (  array_slice(explode("/",$current_uri),-1)[0] == $parent_params['url'] || $ctrler==$parent); ?>
									
									<li   <?php if ($active) echo 'class=" active  current_page_item" '; ?> >
										<a href='<?php echo $parent_params['url'];  ?>'>
							                <?php echo $parent_params['name']; ?>
						                </a>
									</li>
								<?php else: ?>
									<?php $parent_active = ($ctrler==$parent); ?>
									<li class='dropdown <?php if ($parent_active) echo 'active'; ?>'>
										<a data-toggle='dropdown' class='dropdown-toggle' href='#'>
											<?php echo $parent_params['name']; ?> <span class='caret'></span>
										</a>
										<ul role='menu' class='dropdown-menu'>
											<?php foreach ($parent_params['children'] as $name => $url): ?>
												<li><a href='<?php echo $url; ?>'><?php echo $name; ?></a></li>
											<?php endforeach; ?>
										</ul>
									</li>

								<?php endif; ?>

							<?php endforeach; ?>
							
                        </ul>
                    </div>
                </div>
                <div class="menu-icons-inside">
                    <div class="menu-icon menu-icon-mobile"><span class="menu-icon-create"></span></div>
                </div>
            </div>
            <div class="clear"></div>
            <div class="footer">
                <div class="footer-socials">
                    <ul class="socials-sh">
                        <li>
                            <a class="fa sh-socials-url fa-twitter" href="#" title="Twitter" target="_blank"></a>
                        </li>
                        <li>
                            <a class="fa sh-socials-url fa-facebook" href="#" title="Facebook" target="_blank"></a>
                        </li>
                        <li>
                            <a class="fa sh-socials-url fa-linkedin" href="#" title="LinkedIn" target="_blank"></a>
                        </li>
                        <li>
                            <a class="fa sh-socials-url fa-google-plus" href="#" title="Google Plus" target="_blank"></a>
                        </li>
                    </ul>
                </div>
                <div class="footer-content">
                    @ 2017 L'Artista. Made by <a href="#" title="Narcisa">Narcisa</a>.</div>
            </div>
        </div>
		
        <div class="mobile-menu-wrapper">
            <div class="menu-main-nav-menu-container">
                <ul id="menu-main-nav-menu-1" class="mobile-menu">
                    <?php foreach ($menu as $parent => $parent_params): ?>
								<?php if (empty($parent_params['children'])): ?>
									<?php $active = ( ((strlen(array_slice(explode("/",$current_uri),-1)[0]) != 2)?  array_slice(explode("/",$current_uri),-1)[0] : '') == $parent_params['url'] || $ctrler==$parent); ?>
									
									<li   <?php if ($active) echo 'class=" active  current_page_item" '; ?> >
										<a href='<?php echo $parent_params['url']; ?>'>
											<?php echo $parent_params['name']; ?>
										</a>
									</li>
								<?php else: ?>
									<?php $parent_active = ($ctrler==$parent); ?>
									<li class='dropdown <?php if ($parent_active) echo 'active'; ?>'>
										<a data-toggle='dropdown' class='dropdown-toggle' href='#'>
											<?php echo $parent_params['name']; ?> <span class='caret'></span>
										</a>
										<ul role='menu' class='dropdown-menu'>
											<?php foreach ($parent_params['children'] as $name => $url): ?>
												<li><a href='<?php echo $url; ?>'><?php echo $name; ?></a></li>
											<?php endforeach; ?>
										</ul>
									</li>
								<?php endif; ?>
							<?php endforeach; ?>
                </ul>
            </div>
        </div>
		