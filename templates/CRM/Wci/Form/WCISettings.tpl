{* HEADER *}
<div class="crm-block crm-form-block">
<div class="crm-submit-buttons">
{include file="CRM/common/formButtons.tpl" location="top"}
</div>

{* FIELD EXAMPLE: OPTION 1 (AUTOMATIC LAYOUT) *}

{foreach from=$elementNames item=elementName}
  <div class="crm-section">
    <div class="label">{$form.$elementName.label}</div>
    <div class="content">{$form.$elementName.html} {if "widget_cache_timeout" == $form.$elementName.id} Minutes{/if}</div>
{if "default_profile" == $form.$elementName.id}
    <div class="content"><small>Enter public profile id where user can signup for newsletter. User's mail id will be added to the group configured for the widget when they click subscribe button.'</small></div>
{/if}
{if "widget_cache_timeout" == $form.$elementName.id}
    <div class="content"><small>Cache will be cleared after specified minutes. Widgets with static content (with out a progress bar) will be cached till it is modified. </small></div>
{/if}
    <div class="clear"></div>
  </div>
{/foreach}

{* FIELD EXAMPLE: OPTION 2 (MANUAL LAYOUT)

  <div>
    <span>{$form.favorite_color.label}</span>
    <span>{$form.favorite_color.html}</span>
  </div>

{* FOOTER *}
<div class="crm-submit-buttons">
{include file="CRM/common/formButtons.tpl" location="bottom"}
</div>
</div>
