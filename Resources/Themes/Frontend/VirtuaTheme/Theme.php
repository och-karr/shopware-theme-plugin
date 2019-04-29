<?php

namespace Shopware\Themes\VirtuaTheme;

use Doctrine\Common\Collections\ArrayCollection;
use Shopware\Components\Form as Form;
use Shopware\Components\Theme\ConfigSet;

class Theme extends \Shopware\Components\Theme
{
    /** @var string Defines the parent theme */
    protected $extend = 'Responsive';

    /** @var string Defines the human readable name */
    protected $name = 'Virtua Theme';

    /** @var string Description of the theme */
    protected $description = '';

    /** @var string The author of the theme */
    protected $author = 'Karolina Och-Pudło';

    /** @var string License of the theme */
    protected $license = '';

    protected $css = [
        'src/libraries/slick/slick.css',
        'src/css/styles.min.css'
    ];

    protected $javascript = [
        'src/js/jquery.add-menu-class.js',
        'src/js/jquery.show-mobile-menu.js',
        'src/libraries/slick/slick.min.js',
        'src/js/jquery.slick-product-slider.js'
    ];
}