<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        <?php echo $title; ?>
    </title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">



    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>



			
			<?php if ($maskedfields_status && isset($mask_rules) && $mask_rules) { ?>
				<script type="text/javascript" src="catalog/view/javascript/maskedfields.js"></script>
				<script type="text/javascript">
			
				<?php if ($mask_definitions) { ?>
					jQuery(function($){
						<?php foreach ($mask_definitions as $definition) { ?>
   							$.mask.definitions["<?php echo $definition['placeholder']; ?>"] = "<?php echo $definition['rule']; ?>";
   						<?php } ?>
   					});
				<?php } ?>
			
				$(document).ready(function(){
					<?php foreach ($mask_rules as $mask) { ?>
						<?php if ($mask['field'] && $mask['mask'] && isset($mask['enabled'])) { ?>
							$("body").on('focus', "input[name='<?php echo $mask['field']; ?>']", function() {
								$(this).mask("<?php echo $mask['mask']; ?>", {
									placeholder: "<?php echo $mask_placeholder; ?>"
								});
							});
						<?php } ?>
					<?php } ?>
				});
			
				</script>
			<?php } ?>
						
			

			
			<style type="text/css">
	
			.table-responsive
			{
				overflow: visible;
			}
	
			.status-description
			{
				border-bottom: 1px dashed;
			}
	
			[data-tooltip]
			{
  				position: relative;
  				z-index: 2;
  				cursor: pointer;
			}

			[data-tooltip]:before,
			[data-tooltip]:after
			{
  				display: none;
			}

			[data-tooltip]:before
			{
    			background-color: #555555;
    			border: 1px solid #555555;
    			border-radius: 3px;
    			bottom: 150%;
    			box-shadow: 0 0 3px #dddddd;
    			color: #ffffff;
    			content: attr(data-tooltip);
    			font-size: 90%;
    			left: 50%;
    			line-height: 125%;
    			margin-bottom: 5px;
    			margin-left: -125px;
    			padding: 7px;
    			position: absolute;
    			text-align: center;
    			width: 250px;
			}

			[data-tooltip]:after
			{
  				position: absolute;
  				bottom: 150%;
  				left: 50%;
  				margin-left: -5px;
  				width: 0;
  				border-top: 5px solid #555555;
  				border-right: 5px solid transparent;
  				border-left: 5px solid transparent;
  				content: " ";
  				font-size: 0;
  				line-height: 0;
  				box-shadow: none;
			}

			[data-tooltip]:hover:before,
			[data-tooltip]:hover:after
			{
  				display: block;
			}
	 	
    		</style>
			
			
</head>

<body class="<?php echo $class; ?>">
    <nav id="top">
        <div class="container-fluid">
            <?php echo $currency; ?>
            <?php echo $language; ?>
            <div id="top-links" class="nav pull-right">
                <ul class="list-inline">
                    <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
                    <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <?php if ($logged) { ?>
                            <li>
                                <a href="<?php echo $account; ?>">
                                    <?php echo $text_account; ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $order; ?>">
                                    <?php echo $text_order; ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $transaction; ?>">
                                    <?php echo $text_transaction; ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $download; ?>">
                                    <?php echo $text_download; ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $logout; ?>">
                                    <?php echo $text_logout; ?>
                                </a>
                            </li>
                            <?php } else { ?>
                            <li>
                                <a href="<?php echo $register; ?>">
                                    <?php echo $text_register; ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo $login; ?>">
                                    <?php echo $text_login; ?>
                                </a>
                            </li>
                            <?php } ?>
                        </ul>
                    </li>
                    <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
                    <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
                    <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4">
                    <div id="logo">
                        <?php if ($logo) { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                        <?php } else { ?>
                        <h1>
                            <a href="<?php echo $home; ?>">
                                <?php echo $name; ?>
                            </a>
                        </h1>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-sm-5">
                    <?php echo $search; ?>
                </div>
                <div class="col-sm-3">
                    <?php echo $cart; ?>
                </div>
            </div>
        </div>
    </header>
    <?php if ($categories) { ?>
    <div class="container-fluid">
        <nav id="menu" class="navbar">
            <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <?php foreach ($categories as $category) { ?>
                    <?php if ($category['children']) { ?>
                    <li class="dropdown">
                        <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown">
                            <?php echo $category['name']; ?>
                        </a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                <ul class="list-unstyled">
                                    <?php foreach ($children as $child) { ?>
                                    <li>
                                        <a href="<?php echo $child['href']; ?>">
                                            <?php echo $child['name']; ?>
                                        </a>
                                    </li>
                                    <?php } ?>
                                </ul>
                                <?php } ?>
                            </div>
                            <a href="<?php echo $category['href']; ?>" class="see-all">
                                <?php echo $text_all; ?>
                                <?php echo $category['name']; ?>
                            </a>
                        </div>
                    </li>
                    <?php } else { ?>
                    <li>
                        <a href="<?php echo $category['href']; ?>">
                            <?php echo $category['name']; ?>
                        </a>
                    </li>
                    <?php } ?>
                    <?php } ?>
                </ul>
            </div>
        </nav>
    </div>
    <?php } ?>