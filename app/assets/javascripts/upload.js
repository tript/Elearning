var ready = function() {
    $('.upload-class').on('change', function (e) {
        var optionSelected = $("option:selected", this);
        var valueSelected = this.value;
    });
}
$(document).ready(ready);
$(document).on('page:load', ready);