var ready = function() {
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
}
$(document).ready(ready);
$(document).on('page:load', ready);