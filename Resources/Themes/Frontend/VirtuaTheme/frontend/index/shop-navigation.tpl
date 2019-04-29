<nav class="shop--navigation block-group">
    <ul class="navigation--list block-group" role="menubar">

        {block name='frontend_index_shop_navigation_search'}
            <li class="shop-nav-search shop-nav-icon">

                {block name="frontend_index_top_bar_label"}
                    <div class="top-label">
                        {s namespace="frontend/index/shop-navigation" name="label-search"}SEARCH{/s}
                    </div>
                {/block}

            </li>
        {/block}

        {* Cart entry *}
        {block name='frontend_index_checkout_actions'}
            {* Include of the cart *}
            {block name='frontend_index_checkout_actions_include'}
                {action module=widgets controller=checkout action=info}
            {/block}
        {/block}
    </ul>
</nav>
