{extends file="parent:frontend/index/sidebar.tpl"}

{block name="frontend_index_sidebar"}
    {*Trigger to close the off canvas menu*}
    {block name="frontend_index_left_categories_close_menu"}
        <li class="navigation--entry entry--close-off-canvas not-displayed">
            <a href="#close-categories-menu" title="{s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s}" class="navigation--link close-link">
                <i class="icon--arrow-right">
                    <img class="close-icon" src="/themes/Frontend/VirtuaTheme/frontend/_public/src/img/icons/menu/menu-off-grey.svg">
                </i>
            </a>
        </li>
    {/block}
    <aside class="sidebar-main off-canvas">
        {block name="frontend_index_left_inner"}
            {* Mobile specific menu actions *}
            {block name="frontend_index_left_navigation_smartphone"}
                <div class="navigation--smartphone">
                    <ul class="navigation--list ">
                    </ul>

                    {block name='frontend_index_mobine_nav_logo'}
                        <div class="mobile-nav-logo--shop block">
                            <a class="logo--link" href="{url controller='index'}" title="{"{config name=shopName}"|escapeHtml} - {$snippetIndexLinkDefault|escape}">
                                <img class="mobile-nav-logo-img" src="{link file='frontend/_public/src/img/images/logo-mobile.svg'}" alt="{"{config name=shopName}"|escapeHtml} - {$snippetIndexLinkDefault|escape}" />
                            </a>
                        </div>
                    {/block}
                </div>
            {/block}

            {* if sCategoryContent is not available use sArticle.categoryID *}
            {if isset($sCategoryContent) && $sCategoryContent.id}
                {$subCategoryId = $sCategoryContent.id}
            {elseif isset($sArticle) && $sArticle.categoryID}
                {$subCategoryId = $sArticle.categoryID}
            {elseif isset($sCustomPage) && $sCustomPage.id}
                {$subCategoryId = $sCustomPage.id}
            {else}
                {$subCategoryId = 0}
            {/if}

            <div class="sidebar--categories-wrapper"
                 data-subcategory-nav="true"
                 data-mainCategoryId="{$sCategoryStart}"
                 data-categoryId="{$subCategoryId}"
                 data-fetchUrl="{if $subCategoryId}{if $sCustomPage}{url module=widgets controller=listing action=getCustomPage pageId={$subCategoryId}}{else}{url module=widgets controller=listing action=getCategory categoryId={$subCategoryId}}{/if}{/if}">

                {* Sidebar category tree *}
                {block name='frontend_index_left_categories'}

                    {* Actual include of the categories *}
                    {block name='frontend_index_left_categories_inner'}
                        <div class="sidebar--categories-navigation">
                            {include file='frontend/index/sidebar-categories.tpl'}
                        </div>
                    {/block}
                {/block}

                {* Static sites *}
                {block name='frontend_index_left_menu'}
                    {include file='frontend/index/sites-navigation.tpl'}
                {/block}
            </div>
        {/block}
    </aside>
{/block}