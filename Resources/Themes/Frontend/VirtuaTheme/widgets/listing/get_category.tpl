{namespace name="frontend/listing/get_category"}

{block name="widgets_listing_get_category"}
    <div class="offcanvas--overlay">

        {block name="widgets_listing_get_category_categories"}
            <ul class="sidebar--navigation categories--sublevel navigation--list" role="menu">

                {* Go back button *}
                {block name="widgets_listing_get_category_categories_back"}
                    <li class="navigation--entry nav-back" role="menuitem">
                        {block name="widgets_listing_get_category_categories_back_link"}
                            <a href="{url module=widgets controller=listing action=getCategory categoryId={$category.parentId}}" data-parentId="{$category.parentId}" class="navigation--link is--back-button link--go-back" title="{s name="ButtonBack"}{/s}">

                                {block name="widgets_listing_get_category_categories_back_link_arrow_left"}
                                    <span class="is--icon-left">
                                        {block name="widgets_listing_get_category_categories_back_link_name"}
                                            <img class="mobile-nav-arrow-icon arrow-icon-back" src="/themes/Frontend/VirtuaTheme/frontend/_public/src/img/icons/menu/icon-nav-arrow-color.svg">
                                        {/block}
                                    </span>
                                {/block}


                                {block name="widgets_listing_get_category_name_link"}
                                    <span class="category--headline">{$category.name}</span>
                                {/block}
                            </a>
                        {/block}
                    </li>
                {/block}

                {* Show this category button - View all *}
                {block name="widgets_listing_get_category_categories_show"}
                    <li class="navigation--entry" role="menuitem">
                        {block name="widgets_listing_get_category_categories_show_link"}

                            {$categoryLink = $category.link}
                            {if $category.external}
                                {$categoryLink = $category.external}
                            {/if}

                            <a href="{$categoryLink}" title="{s name="ButtonShowPrepend"}{/s} {$category.name|escape} {s name="ButtonShowAppend"}{/s}"
                               class="navigation--link is--display-button"
                               {if $category.external && $category.externalTarget}target="{$category.externalTarget}"{/if}>
                                {block name="widgets_listing_get_category_categories_show_link_name"}
                                    {s namespace="widgets/listing/get_category" name="view-all-subcat"}View all{/s}
                                {/block}
                            </a>
                        {/block}
                    </li>
                {/block}

                {* sub categories *}
                {foreach $category.children as $children}
                    {block name="widgets_listing_get_category_categories_item"}
                        {if $children.active}
                            <li class="navigation--entry" role="menuitem">
                                {block name="widgets_listing_get_category_categories_item_link"}

                                    {$link = $children.link}
                                    {if $children.external}
                                        {$link = $children.external}
                                    {/if}

                                    <a href="{$link}" title="{$children.name|escape}"
                                       class="navigation--link{if $children.childrenCount} link--go-forward{/if}" {* go into submenu *}
                                       data-category-id="{$children.id}"
                                       data-fetchUrl="{url module=widgets controller=listing action=getCategory categoryId={$children.id}}"
                                       {if $children.external && $category.externalTarget}target="{$children.externalTarget}"{/if}>

                                        {block name="widgets_listing_get_category_categories_item_link_name"}
                                            <span class="category-name">
                                                {$children.name}
                                                {block name="widgets_listing_get_category_label"}
                                                    {if $children.attribute}
                                                        <sup class="category-label">NEW</sup>
                                                    {/if}
                                                {/block}
                                            </span>
                                        {/block}


                                        {block name="widgets_listing_get_category_categories_item_link_children"}
                                            {if $children.childrenCount}
                                                <span class="is--icon-right">
                                                    <img class="mobile-nav-arrow-icon" src="{link file='frontend/_public/src/img/icons/menu/icon-nav-arrow.svg'}"/>
                                                </span>
                                            {/if}
                                        {/block}
                                    </a>
                                {/block}
                            </li>
                        {/if}
                    {/block}
                {/foreach}
            </ul>
        {/block}
    </div>
{/block}
