{namespace name="frontend/index/menu_footer"}

{* Logo and newsletter *}
{block name="frontend_index_footer_column_newsletter"}
    <div class="column--newsletter is--last block">
        {block name="frontend_index_footer_column_newsletter_logo"}
            <div class="column--logo">
                <picture>
                    {*<source srcset="{link file='frontend/_public/src/img/images/stadium-goods-logo-animated.webp'}" type="image/webp">*}
                    <source srcset="{link file='frontend/_public/src/img/images/stadium-goods-logo-img.png'}" type="image/png">
                    <img src="{link file='frontend/_public/src/img/images/stadium-goods-logo-img.png'}" alt="logo">
                </picture>
            </div>
        {/block}

        {block name="frontend_index_footer_column_newsletter_content"}
            <div class="column--content" data-newsletter="true">

                {block name="frontend_index_footer_column_newsletter_form"}
                    <form class="newsletter--form" action="{url controller='newsletter'}" method="post">
                        <input type="hidden" value="1" name="subscribeToNewsletter" />

                        {block name="frontend_index_footer_column_newsletter_form_field_wrapper"}
                            <div class="content">
                                {block name="frontend_index_footer_column_newsletter_form_field"}
                                    <input type="email" name="newsletter" class="newsletter--field" placeholder="{s name="IndexFooterNewsletterValue"}{/s}" />
                                    {if {config name="newsletterCaptcha"} !== "nocaptcha"}
                                        <input type="hidden" name="redirect">
                                    {/if}
                                {/block}

                                {block name="frontend_index_footer_column_newsletter_form_submit"}
                                    <button type="submit" class="newsletter--button btn">
                                    </button>
                                {/block}
                            </div>
                        {/block}
                    </form>
                {/block}
            </div>
        {/block}
    </div>
{/block}

{* Service hotline - Contact *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline is--first block column--contact">
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <h5 class="column--headline">{s name="sFooterServiceHotlineHead"}{/s}</h5>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <nav class="column--navigation column--content">
                <ul class="navigation--list" role="menu">

                    {block name="frontend_index_footer_column_service_hotline_before"}{/block}
                    {foreach $sMenu.footercol1 as $item}

                        {block name="frontend_index_footer_column_service_hotline_entry"}
                            <li class="navigation--entry" role="menuitem">
                                <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                    {$item.description}
                                </a>

                                {* Sub categories *}
                                {if $item.childrenCount > 0}
                                    <ul class="navigation--list is--level1" role="menu">
                                        {foreach $item.subPages as $subItem}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                    {$subItem.description}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/if}
                            </li>
                        {/block}
                    {/foreach}
                </ul>
            </nav>
        {/block}
    </div>
{/block}

{* Info *}
{block name="frontend_index_footer_column_information_menu"}
    <div class="footer--column column--menu block column--info">
        {block name="frontend_index_footer_column_information_menu_headline"}
            <h5 class="column--headline">{s name="sFooterShopNavi2"}{/s}</h5>
        {/block}

        {block name="frontend_index_footer_column_information_menu_content"}

            <nav class="column--navigation column--content">
                <ul class="navigation--list" role="menu">

                    {block name="frontend_index_footer_column_information_menu_before"}{/block}
                    {foreach $sMenu.footercol2 as $item}

                        {block name="frontend_index_footer_column_information_menu_entry"}
                            <li class="navigation--entry" role="menuitem">
                                <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                    {$item.description}
                                </a>

                                {* Sub categories *}
                                {if $item.childrenCount > 0}
                                    <ul class="navigation--list is--level1" role="menu">
                                        {foreach $item.subPages as $subItem}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                    {$subItem.description}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/if}
                            </li>
                        {/block}
                    {/foreach}
                </ul>
            </nav>
        {/block}
    </div>
{/block}

{* Follow *}
{block name="frontend_index_footer_column_follow_menu"}
    <div class="footer--column column--menu block column--follow">
        {block name="frontend_index_footer_column_follow_menu_headline"}
            <h5 class="column--headline">{s name="sFooterShopNavi1"}{/s}</h5>
        {/block}

        {block name="frontend_index_footer_column_follow_menu_content"}
            <nav class="column--navigation column--content">
                <ul class="navigation--list" role="menu">
                    {block name="frontend_index_footer_column_follow_menu_before"}{/block}
                    {foreach $sMenu.footercol3 as $item}

                        {block name="frontend_index_footer_column_follow_menu_entry"}
                            <li class="navigation--entry" role="menuitem">
                                <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                    {$item.description}
                                </a>

                                {* Sub categories *}
                                {if $item.childrenCount > 0}
                                    <ul class="navigation--list is--level1" role="menu">
                                        {foreach $item.subPages as $subItem}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                    {$subItem.description}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/if}
                            </li>
                        {/block}
                    {/foreach}
                </ul>
            </nav>
        {/block}
    </div>
{/block}
