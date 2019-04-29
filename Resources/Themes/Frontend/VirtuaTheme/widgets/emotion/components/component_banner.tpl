{extends file="parent:widgets/emotion/components/component_banner.tpl"}

{block name="widget_emotion_component_banner"}
    <div class="emotion--banner"
         data-coverImage="true"
         {if $Data.bannerMapping}data-bannerMapping="true"{/if}>

        {$smarty.block.parent}

        {block name="widget_emotion_component_banner_inner"}
            <div class="banner--content {$Data.bannerPosition}">

                {* Banner mapping, based on the same technic as an image map *}
                {block name="widget_emotion_component_banner_mapping"}
                    {if $Data.bannerMapping}
                        <div class="banner--mapping {$Data.bannerPosition}">
                            {foreach $Data.bannerMapping as $mapping}
                                <a href="{$mapping.link}"
                                   class="banner--mapping-link"
                                        {if $mapping.as_tooltip && $mapping.title} title="{$mapping.title|escape}"{/if}
                                        {if $mapping.linkLocation eq "external"} target="_blank"{/if}>&nbsp;</a>
                            {/foreach}
                        </div>
                    {elseif $Data.link}
                        <h2 class="banner--title">{$Data.title|escape}</h2>
                        <a href="{$Data.link}" class="banner--link"
                                {if $Data.banner_link_target} target="{$Data.banner_link_target}"{/if}
                                {if $Data.title} title="{$Data.title|escape}"{/if}>
                        </a>
                    {/if}
                {/block}
            </div>
        {/block}
    </div>
{/block}