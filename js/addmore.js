/*
 +--------------------------------------------------------------------+
 | CiviCRM Widget Creation Interface (WCI) Version 1.0                |
 +--------------------------------------------------------------------+
 | Copyright Zyxware Technologies (c) 2014                            |
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
*/

cj(function ( $ ) {
  $(document).ready(function(){
    var count = parseInt($('input[name=contrib_count]').val());
    for ( var i = 2; i <= count; i++ ) {
      $('#' + "contribution_page_" + i).parent().parent().before('<div class="crm-wci-pb"><hr></div>');
      $('#' + "contribution_page_" + i).after(
      '<a id=\"remove_link\" class=\"form-link\" href=\"remove\" name=\"remove_link-' + i + '\"> Remove</a>');
      $('#' + "contribution_page_" + i).parent().parent().attr("id", "crm-section-con-" + i);
      $('#' + "financial_type_" + i).parent().parent().attr("id", "crm-section-type-" + i);
      $('#' + "percentage_" + i).parent().parent().attr("id", 'crm-section-per-' + i);
      $('#' + "contribution_start_date_" + i).parent().parent().attr("id", 'crm-section-startdate-' + i);
      $('#' + "contribution_end_date_" + i).parent().parent().attr("id", 'crm-section-enddate-' + i);
    }
    $('#goal_amount').parent().after('<div class="crm-wci-pb"><hr></div><label><SMALL>Progressbar shows the sum of each percentage of contributions done on each selected contribution page</SMALL></label>');
  });
  $("#ProgressBar").validate({
    rules: {
      starting_amount: {
        required: true,
        number: true
      },
      progressbar_name: {
        required: true
      },
      goal_amount: {
        required: true,
        number: true
      },
      contribution_page_1: {
        required: true
      },
      percentage_1: {
        required: true,
        max: 100,
        number: true
      }
    }
  });

  $('#addmore_link').on('click', function( e ) {
    e.preventDefault();
    var count = parseInt($('input[name=contrib_count]').val());
    count++;

    var c_page_sel = $('select[name=contribution_page_1]').clone().attr('id', "contribution_page_" + count);
    c_page_sel.attr("name", "contribution_page_" + count);

    var id_section = "crm-section-con-" + count;
    var sect_tag = "<div class=\"crm-section crm-wci-pb\" id=" + id_section + "><hr><div class=\"label\"><label>Contribution Page</label>";
    $('#addmore_link').parent().parent().before(sect_tag);

    var id_content = "content_con-" + count;
    $('#' + id_section).append("<div class=\"content\" id="+ id_content + ">");
    $('#' + id_content).append(c_page_sel);
    $('#' + id_content).append('<a id=\"remove_link\" class=\"form-link\" href=\"remove\" name=\"remove_link-' + count + '\"> Remove</a>');
    $('#' + id_section).append("</div>");

    var f_type_sel = $('select[name=financial_type_1]').clone().attr('id', "financial_type_" + count);
    f_type_sel.attr("name", "financial_type_" + count);

    var id_section = "crm-section-type-" + count;
    var sect_tag = "<div class=\"crm-section crm-wci-pb\" id=" + id_section + "><div class=\"label\"><label>Financial Type</label>";
    $('#addmore_link').parent().parent().before(sect_tag);

    var id_content = "content_type-" + count;
    $('#' + id_section).append("<div class=\"content\" id="+ id_content + ">");
    $('#' + id_content).append(f_type_sel);
    $('#' + id_section).append("</div>");

    id_section = "crm-section-startdate-" + count;
    sect_tag = "<div class=\"crm-section\" id=" + id_section + "> <div class=\"label\"><label>Start Date</label>";
    $('#addmore_link').parent().parent().before(sect_tag);

    id_content = "content_startdate-" + count;
    $('#' + id_section).append("<div class=\"content\" id="+ id_content + ">");
    $('#' + id_content).append('<input type="text" size="20" id = "startdate_' + count + '" name="startdate_' + count +'" value="" />');
    $('#' + id_content).append('<span class=\"description\">(Format YYYY-MM-DD)</span><br><span class=\"description\">Date from which contributions to be added to this progress bar. Keep it empty to select contributions from the beginning.</span>');
    $('#' + id_section).append("</div");

    id_section = "crm-section-enddate-" + count;
    sect_tag = "<div class=\"crm-section\" id=" + id_section + "> <div class=\"label\"><label>End Date</label>";
    $('#addmore_link').parent().parent().before(sect_tag);

    id_content = "content_enddate-" + count;
    $('#' + id_section).append("<div class=\"content\" id="+ id_content + ">");
    $('#' + id_content).append('<input type="text" size="20" id = "enddate_' + count + '" name="enddate_' + count +'" value="" />');
    $('#' + id_content).append('<span class=\"description\">(Format YYYY-MM-DD)</span><br><span class=\"description\">Date to which contributions to be added to this progress bar. Keep it empty to select contributions up to today</span>');
    $('#' + id_section).append("</div");

    id_section = "crm-section-per-" + count;
    sect_tag = "<div class=\"crm-section\" id=" + id_section + "> <div class=\"label\"><label>Percentage</label>";
    $('#addmore_link').parent().parent().before(sect_tag);

    id_content = "content_per-" + count;
    $('#' + id_section).append("<div class=\"content\" id="+ id_content + ">");
    $('#' + id_content).append('<input type="text" size="20" id = percentage_'+ count + ' name="percentage_' + count +'" value="" />');
    $('#' + id_section).append("</div");

    $( "#contribution_page_" + count).rules( "add", {
      required: true
    });

    $( "#percentage_" + count).rules( "add", {
      required: true,
      max: 100,
      number: true
    });

    $('input[name=contrib_count]').val(count);

  });

  $(document).on('click', '#remove_link', function( e ) {
    e.preventDefault();

    var rem_name = e.target.name;
    //assuming that - is the delimiter. second string will be the count
    var rem_name_ar = rem_name.split('-');
    var contri_page = "\"#percentage_" + rem_name_ar[1] + "\"";
    $('#crm-section-con-'+ rem_name_ar[1] +'').remove();
    $('#crm-section-type-'+ rem_name_ar[1] +'').remove();
    $('#crm-section-per-'+ rem_name_ar[1] +'').remove();
    $('#crm-section-startdate-'+ rem_name_ar[1] +'').remove();
    $('#crm-section-enddate-'+ rem_name_ar[1] +'').remove();
    var count = parseInt($('input[name=contrib_count]').val());
    count--;
    $('input[name=contrib_count]').val(count);
  });
});
