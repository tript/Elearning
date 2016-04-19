/**
 * Created by tri on 12/04/2016.
 */
var ready;
ready = function () {
    $('#persons-in-charge-area').textext({
        plugins: 'tags filter autocomplete ajax',
        ajax: {
            url: '/users',
            dataType: 'json',
            cacheResults: true
        }
    });
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

    $("#assignment-checkbox").change(function() {
        if(this.checked) {
            $("#persons-in-charge-div").show();
        } else {
            $("#persons-in-charge-div").hide();
        }
    });
}
$(document).ready(ready);
$(document).on('page:load', ready);