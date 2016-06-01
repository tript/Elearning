/**
 * Created by tri on 12/04/2016.
 */
var ready;
ready = function () {
    $('select').on('change', function (e) {
        var optionSelected = $("option:selected", this);
        var valueSelected = this.value;

    });

    //$('#persons-in-charge-area').textext({
    //    plugins: 'tags filter autocomplete ajax',
    //    ajax: {
    //        url: '/users',
    //        dataType: 'json',
    //        cacheResults: true
    //    },
    //    ext: {
    //        itemManager: {
    //            itemToString: function(item)
    //            {
    //                return item.name;
    //            }
    //        }
    //    }
    //});


    $('.upload-class').on('change', function (e) {
        $('.upload-subject').html("");
        var optionSelected = $("option:selected", this);
        var valueSelected = this.value;
        $.getJSON("/classes/" + valueSelected + "/subjects", function(result){
            $.each(result, function(i, field){
                //$("div").append(field + " ");
                $('.upload-subject').append(
                    "<option value=\"" + field.id + "\">" + field.subject_name + "</option>"
                );
            });
        });
    });

    $('#person_in_charge_school').on('change', function (e) {
        $('#persons-in-charge-name').html("");
        var valueSelected = this.value;
        $.getJSON("/users?school_id=" + valueSelected, function(result){
            $.each(result, function(i, field){
                //$("div").append(field + " ");
                $('#persons-in-charge-name').append(
                    "<option value=\"" + field.username + "\">" + field.name + "</option>"
                );
            });
        });
    });

    $("#assignment-checkbox").change(function() {
        if(this.checked) {
            $("#persons-in-charge-div").show();
        } else {
            $("#persons-in-charge-div").hide();
        }
    });

    var bar = $('.bar');
    var percent = $('.percent');
    var status = $('#status');

    $('#lesson_new_form').ajaxForm({
        beforeSend: function() {
            // status.empty();
            var percentVal = '0%';
            bar.width(percentVal);
            percent.html(percentVal);
        },
        uploadProgress: function(event, position, total, percentComplete) {
            var percentVal = percentComplete + '%';
            bar.width(percentVal);
            percent.html(percentVal);
        },
        // success identifies the function to invoke when the server response
        // has been received; here we apply a fade-in effect to the new content
        success: function(xhr) {
            status.html(xhr);
        }
    });
}
$(document).ready(ready);
$(document).on('page:load', ready);