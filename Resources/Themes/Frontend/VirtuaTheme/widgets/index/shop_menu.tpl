{block name='frontend_index_actions_currency'}
    {if $currencies|count > 1}
        <div class="top-bar--currency navigation--entry">
            {block name='frontend_index_actions_currency_form'}
                <form method="post" class="currency--form">
                    {block name="frontend_index_actions_currency_form_content"}
                        <div class="field--select">
                            {block name="frontend_index_actions_currency_form_select"}
                                <div class="select-field">
                                    <select name="__currency" class="currency--select" data-auto-submit="true">
                                        {foreach $currencies as $currency}
                                            <option value="{$currency->getId()}"{if $currency->getId() === $shop->getCurrency()->getId()} selected="selected"{/if}>
                                                {if $currency->getSymbol() != $currency->getCurrency()}{$currency->getSymbol()} {/if}{$currency->getCurrency()}
                                            </option>
                                        {/foreach}
                                    </select>
                                </div>
                            {/block}
                        </div>
                    {/block}
                </form>
            {/block}
        </div>
    {/if}
{/block}