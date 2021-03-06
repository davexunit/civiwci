{*
 +--------------------------------------------------------------------+
 | CiviCRM Widget Creation Interface (WCI) Version 1.0                |
 +--------------------------------------------------------------------+
 | Copyright Zyxware Technologies (c) 2014                            |
 | Copyright (C) 2014 David Thompson <davet@gnu.org>                  |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM WCI.                                |
 |                                                                    |
 | CiviCRM WCI is free software; you can copy, modify, and distribute |
 | it under the terms of the GNU Affero General Public License        |
 | Version 3, 19 November 2007.                                       |
 |                                                                    |
 | CiviCRM WCI is distributed in the hope that it will be useful,     |
 | but WITHOUT ANY WARRANTY; without even the implied warranty of     |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License along with this program; if not, contact Zyxware           |
 | Technologies at info[AT]zyxware[DOT]com.                           |
 +--------------------------------------------------------------------+
*}
{* HEADER *}
<div class="crm-block crm-form-block ">
  <div class="crm-submit-buttons">
  {include file="CRM/common/formButtons.tpl" location="top"}
  </div>

  {if $form.title.value != ""}
    <div class="crm-section">
      <div class="label">Widget Preview</div>
        <div class="content">

        <div class="col1">
          <div class="description">
            Click <strong>Save &amp; Preview</strong> to save any changes to your settings, and preview the widget again on this page.
          </div>
          <script type="text/javascript" src="{crmURL p='civicrm/wci/embed' q="id=`$emb_id`&preview=1"}"></script>
          <div id='widgetwci'></div>
          <div class="description">
            To embed widget on a page, <a href='embed-code/add'>create</a> an embed code and associate it with the widget.
          </div>

        </div>
    </div>
          <div class="clear"></div>
    </div>
  {/if}

<div class="crm-section">
  <div class="label">{$form.title.label}</div>
  <div class="content">{$form.title.html}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.logo_image.label}</div>
  <div class="content">{$form.logo_image.html} {help id="logo_image" file="CRM/Wci/Form/CreateWidget"}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.image.label}</div>
  <div class="content">{$form.image.html} {help id="image" file="CRM/Wci/Form/CreateWidget"}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.button_link_to.label}</div>
  <div class="content">{$form.button_link_to.html}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.button_title.label}</div>
  <div class="content">{$form.button_title.html}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.progress_bar.label}</div>
  <div class="content">{$form.progress_bar.html} {help id="add-new-pb" file="CRM/Wci/Form/CreateWidget"}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.show_pb_perc.label}</div>
  <div class="content">{$form.show_pb_perc.html}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.description.label}</div>
  <div class="content">{$form.description.html}</div>
  <div class="clear"></div>
</div>
<div class="crm-section">
  <div class="label">{$form.email_signup_group_id.label}</div>
  <div class="content">{$form.email_signup_group_id.html} {help id="email_signup_group_id" file="CRM/Wci/Form/CreateWidget"}</div>
  <div class="clear"></div>
</div>

<div class="crm-section">
  <div class="label">{$form.newsletter_text.label}</div>
  <div class="content">{$form.newsletter_text.html} </div>
  <div class="clear"></div>
</div>

<div class="crm-section">
  <div class="label">{$form.size_variant.label}</div>
  <div class="content">{$form.size_variant.html} {help id="size_variant" file="CRM/Wci/Form/CreateWidget"}</div>
  <div class="clear"></div>
</div>

<div class="crm-section">
<div class="label">Widget options</div>
<div class="content">
<table class="form-layout-compressed">
  <tr>
   <td>{$form.hide_title.html}</td>
   <td>{$form.hide_title.label}</td>
  </tr>
  <tr>
   <td>{$form.hide_border.html}</td>
   <td>{$form.hide_border.label} {help id="hide-border" file="CRM/Wci/Form/CreateWidget"}</td>
  </tr>
  <tr>
   <td>{$form.hide_pbcap.html}</td>
   <td>{$form.hide_pbcap.label}</td>
  </tr>
</table>
  </div>
</div>

<div class="crm-accordion-wrapper">
      <div class="crm-accordion-header">
        Edit Widget color
      </div><!-- /.crm-accordion-header -->
      <div class="crm-accordion-body">
        <div class="crm-block crm-form-block crm-form-title-here-form-block">
          <div class="crm-section">
            <table class="form-layout-compressed">
              <tr>
                <td>
                  {$form.color_title.label}
                </td>
                <td>
                  {$form.color_title.html}
                </td>
                <td>
                  {$form.color_btn_newsletter_bg.label}
                </td>
                <td>
                  {$form.color_btn_newsletter_bg.html}
                </td>
              </tr>
              <tr>
                <td>
                  {$form.color_title_bg.label}
                </td>
                <td>
                  {$form.color_title_bg.html}
                </td>
                <td>
                  {$form.color_btn_newsletter.label}
                </td>
                <td>
                  {$form.color_btn_newsletter.html}
                </td>
              </tr>
              <tr>
                <td>
                  {$form.color_widget_bg.label}
                </td>
                <td>
                  {$form.color_widget_bg.html}
                </td>
                <td>
                  {$form.color_newsletter_text.label}
                </td>
                <td>
                  {$form.color_newsletter_text.html}
                </td>
              </tr>
              <tr>
                <td>
                  {$form.color_border.label}
                </td>
                <td>
                  {$form.color_border.html}
                </td>
                <td>
                  {$form.color_description.label}
                </td>
                <td>
                  {$form.color_description.html}
                </td>
              </tr>
              <tr>
                <td>
                  {$form.color_button.label}
                </td>
                <td>
                  {$form.color_button.html}
                </td>
                <td>
                  {$form.color_bar.label}
                </td>
                <td>
                  {$form.color_bar.html}
                </td>
              </tr>
              <tr>
                <td>
                  {$form.color_button_bg.label}
                </td>
                <td>
                  {$form.color_button_bg.html}
                </td>
                <td>
                  {$form.color_bar_bg.label}
                </td>
                <td>
                  {$form.color_bar_bg.html}
                </td>
              </tr>
            </table>
          </div>
        </div><!-- / .crm-block -->
      </div><!-- /.crm-accordion-body -->
    </div><!-- /.crm-accordion-wrapper -->
    <div class="crm-accordion-wrapper collapsed">
      <div class="crm-accordion-header">
        Advanced - Override Widget style and template
      </div><!-- /.crm-accordion-header -->
      <div class="crm-accordion-body">
      <div class="crm-block crm-form-block crm-form-title-here-form-block">
        <div class="crm-section">
          <div class="label">
            {$form.style_rules.label}
          </div>
          <div class="content">
            {$form.style_rules.html}
          </div>
          <div class="clear"></div>
        </div>
        <div class="crm-section">
          <div class="label">
            {$form.override.label}
          </div>
          <div class="content">
            {$form.override.html}
          </div>
          <div class="clear"></div>
        </div>
        <div class="crm-section">
          <div class="label">
            {$form.custom_template.label}
          </div>
          <div class="content">
            {$form.custom_template.html}
          </div>
          <div class="clear"></div>
        </div>
        </div><!-- /.crm-block -->
      </div><!-- /.crm-accordion-body -->
    </div><!-- /.crm-accordion-wrapper -->


  {* FOOTER *}

  <div class="crm-submit-buttons">
  {include file="CRM/common/formButtons.tpl" location="bottom"}
  </div>
</div>

{literal}
<script type="text/javascript">
cj(function() {
   cj().crmAccordions();
});
</script>
{/literal}
