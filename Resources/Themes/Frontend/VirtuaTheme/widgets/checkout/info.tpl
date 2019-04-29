{* My account entry *}
{block name="frontend_index_checkout_actions_my_options"}
    <li class="shop-nav-account shop-nav-icon">
        {block name="frontend_index_top_bar_label"}
            <div class="top-label">
                {s namespace="widgets/checkout/info" name="label-account"}ACCOUNT{/s}
            </div>
        {/block}
    </li>
{/block}

{* Cart entry *}
{block name="frontend_index_checkout_actions_cart"}
    <li class="navigation--entry entry--cart shop-nav-icon" role="menuitem">

        {block name="frontend_index_top_bar_label"}
            <div class="top-label">
                {s namespace="widgets/checkout/info" name="label-cart"}CART{/s}
            </div>
        {/block}

        {s namespace="frontend/index/checkout_actions" name="IndexLinkCart" assign="snippetIndexLinkCart"}{/s}
        <a class="btn is--icon-left cart--link" href="{url controller='checkout' action='cart'}" title="{$snippetIndexLinkCart|escape}">
            <span class="badge is--primary is--minimal cart--quantity{if $sBasketQuantity < 1} is--hidden{/if}">{$sBasketQuantity}</span>
        </a>
        <div class="ajax-loader">&nbsp;</div>
    </li>
{/block}

{block name="frontend_index_checkout_actions_inner"}{/block}