{extends file="parent:widgets/emotion/components/component_banner_slider.tpl"}

{$smarty.block.parent}

{block name="frontend_widgets_banner_slider_banner"}
    <div class="banner-slider--banner">

        {block name="frontend_widgets_banner_slider_banner_picture"}
            {$srcSet = ''}
            {$itemSize = ''}

            {if $banner.thumbnails}
                {$baseSource = $banner.thumbnails[0].source}

                {foreach $element.viewports as $viewport}
                    {$cols = ($viewport.endCol - $viewport.startCol) + 10}  {*tu zmieniłam 1 na 10 ale nie wiem jak to dokładnie wpływa*}
                    {$elementSize = $cols * $cellWidth}
                    {$size = "{$elementSize}vw"}

                    {if $breakpoints[$viewport.alias]}

                        {if $viewport.alias === 'xl' && !$emotionFullscreen}
                            {$size = "calc({$elementSize / 100} * {$baseWidth}px)"}
                        {/if}

                        {$size = "(min-width: {$breakpoints[$viewport.alias]}) {$size}"}
                    {/if}

                    {$itemSize = "{$size}{if $itemSize}, {$itemSize}{/if}"}
                {/foreach}

                {foreach $banner.thumbnails as $image}
                    {$srcSet = "{if $srcSet}{$srcSet}, {/if}{$image.source} {$image.maxWidth}w"}

                    {if $image.retinaSource}
                        {$srcSet = "{if $srcSet}{$srcSet}, {/if}{$image.retinaSource} {$image.maxWidth * 2}w"}
                    {/if}
                {/foreach}
            {else}
                {$baseSource = $banner.source}
            {/if}

            <img src="{$baseSource}"
                 class="banner-slider--image"
                 {if $srcSet}sizes="{$itemSize}" srcset="{$srcSet}"{/if}
                    {if $banner.altText}alt="{$banner.altText|escape}" {/if}/>
        {/block}
    </div>
{/block}

{block name="frontend_widgets_banner_slider_link"}
    <div class="banner-slider--text">
        <h2 class="banner-slider--text-title">{$banner.title|escape}</h2>
        <a class="banner-slider--text-link body-font-2" href="{$banner.link}" title="{$banner.title|escape}">
            {$banner.altText}
        </a>
    </div>
{/block}


{block name="frontend_widgets_banner_slider_navigation"}
    {if $Data.banner_slider_numbers}
        <div class="image-slider--dots">
            {foreach $Data.values as $link}
                <div class="dot--link"></div>
            {/foreach}
        </div>
    {/if}
{/block}