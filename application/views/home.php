<link href="https://fonts.googleapis.com/css?family=Contrail+One|Cuprum:400,700|Fjalla+One|Jomhuria|Lalezar" rel="stylesheet">
<style>
.w3-allerta {
  font-family: 'Lalezar', cursive;
}
</style>
 <div class="container-wrapper">
            <div id="rev_slider_1_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-source="gallery" style="background-color:transparent;padding:0px;">
                <!-- START REVOLUTION SLIDER 5.3.1.5 fullscreen mode -->
                <div id="rev_slider_1_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.3.1.5">
                    <ul>
					 <?php  $index = 1?>
					 <?php foreach ($slides as $slide) : ?>
					 <?php 
					       $url = str_replace(":",'',$slide['url']);
                           $url = str_replace("'",'',$slide['url']);  
					       $sld =  base_url("assets/upload/").urlencode($url) ; 
						   $sldt =  base_url("assets/upload/thumb__").urlencode($url) ; 
                         	if($index %2 != 0){ 
									$scalestart = '100';
									$scaleend = '120';
							} else {
									$scalestart = '120';
									$scaleend = '100';
							}		
					 ?>
                        <!-- SLIDE  -->
                        <li data-index="rs-<?php echo  $index++ ?>" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-thumb='<?php echo $sldt; ?>' data-rotate="0" data-saveperformance="off" data-title="<?php echo $slide['title'] ?>" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src='<?php echo  $sld;  ?>' alt="" title="<?php echo $slide['title'] ?>" width="2560" height="1440"  data-bgposition="center center" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone"  data-scalestart="<?php echo $scalestart; ?>" data-scaleend="<?php echo $scaleend; ?>" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                        </li>
						
						<?php  endforeach; ?>
					
                    </ul>
                    <div style="" class="tp-static-layers">

                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption   tp-resizeme tp-static-layer" id="slider-1-layer-5" data-x="['center','center','center','center']" data-hoffset="['70','142','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-150','-148','-60','-40']" data-fontsize="['92','92','92','50']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-startslide="0" data-endslide="2" data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:[-100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5; white-space: nowrap; font-size: 92px; line-height: 92px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Patua One;text-shadow:0px 2px 2px rgba(0, 0, 0, 0.6);">Avem cea mai buna </div>

                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption   tp-resizeme tp-static-layer" id="slider-1-layer-6" data-x="['center','center','center','center']" data-hoffset="['0','110','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-16','-16','74','70']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-startslide="0" data-endslide="2" data-frames='[{"delay":1500,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[5,5,5,5]" data-paddingright="[40,40,40,40]" data-paddingbottom="[5,5,5,5]" data-paddingleft="[40,40,40,40]" style="z-index: 6; white-space: nowrap; font-size: 140px; line-height: 140px; font-weight: 400; color: rgba(250, 185, 64, 1.00);font-family:Patua One;background-color:rgba(36, 36, 36, 1.00);border-radius:10px 10px 10px 10px;">Pizza</div>
<?php $d="block" ?>

<!-- meniul zilei --> 
<div class="w3-card-4 w3-display-container" style="padding-left:250px; display:<?php echo $d ?>">
 <span onclick="this.parentElement.style.display='none'"
  class="w3-button w3-yellow w3-large w3-display-topright">&times;</span>
<header class="w3-container w3-yellow  w3-hover-orange">
  <div class="w3-xlarge w3-yellow  w3-hover-orange w3-allerta">
    <span class="w3-badge w3-red" style="padding-right:10px; font-size:1em">15 lei</span>
	Astăzi la meniul zilei avem: 
  </div>
</header>
<div class="w3-container" style="background-color:black;opacity: 0.7; color:white;filter: alpha(opacity=70);">
  <p style="opacity: 1; color:white;filter: alpha(opacity=100); font-weight:1; font-size:1.1em;padding-top:10px">
	 1. Ciorbă de pui;<br>
     2. Ceafă şi cotlet la cuptor cu piure.
  </p> 
</div>
<footer class="w3-container w3-cyan w3-allerta">
  <h4 class="w3-allerta">Comenzi la domiciliu: 0350 808 780; 0749 058 659</h4>
</footer>
</div>
<!-- /meniul zilei -->




                    </div>

                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                </div>

            </div>
            <!-- END REVOLUTION SLIDER -->
            <div class="clear"></div>
        </div>