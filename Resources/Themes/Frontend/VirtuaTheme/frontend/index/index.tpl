{extends file="parent:frontend/index/index.tpl"}

{$smarty.block.parent}

{block name='frontend_index_navigation_categories_top'}

    <nav class="navigation-main">
        <div class="container" data-menu-scroller="false" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
            {block name="frontend_index_navigation_categories_top_include"}
                {include file='frontend/index/main-navigation.tpl'}
            {/block}
        </div>
    </nav>

{/block}