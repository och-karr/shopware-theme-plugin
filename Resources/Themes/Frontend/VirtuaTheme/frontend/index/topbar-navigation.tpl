{* Top bar main *}
{block name="frontend_index_top_bar_main"}
    <div class="top-bar">

        {* Top bar main container *}
        {block name="frontend_index_top_bar_main_container"}
            <div class="container block-group">

                {* Top bar navigation *}
                {block name="frontend_index_top_bar_nav"}
                    <nav class="top-bar--navigation block" role="menubar">

                        {* Currency *}
                        {block name="frontend_index_top_bar_currency"}
                            <div class="top-bar-currency top-bar-icon" role="menuitem">
                                {* Label *}
                                {block name="frontend_index_top_bar_label"}
                                    <div class="top-label">
                                        {s namespace="frontend/index/topbar-navigation" name="label-currency"}CURRENCY{/s}
                                    </div>
                                {/block}
                            </div>
                        {/block}


                        {* Contact *}
                        {block name="frontend_index_top_bar_contact"}
                            <div class="top-bar-contact top-bar-icon" role="menuitem">
                                {* Label *}
                                {block name="frontend_index_top_bar_label"}
                                    <div class="top-label">
                                        {s namespace="frontend/index/topbar-navigation" name="label-contact"}CONTACT{/s}
                                    </div>
                                {/block}
                            </div>
                        {/block}

                        {* Sell *}
                        {block name="frontend_index_top_bar_sell"}
                            <div class="top-bar-sell top-bar-icon" role="menuitem">

                                {* Label *}
                                {block name="frontend_index_top_bar_label"}
                                    <div class="top-label">
                                        {s namespace="frontend/index/topbar-navigation" name="label-sell"}SELL{/s}
                                    </div>
                                {/block}
                            </div>
                        {/block}

                        {* Hamburger menu *}
                        {block name="frontend_index_top_bar_hamburger"}
                            <a class="entry--link entry--trigger btn is--icon-left" href="#offcanvas--left" data-offcanvas="true" data-offcanvasselector=".sidebar-main">
                                <i class="icon--menu top-bar-hamburger top-bar-icon"></i>
                            </a>
                        {/block}

                    </nav>
                {/block}
            </div>
        {/block}
    </div>
{/block}