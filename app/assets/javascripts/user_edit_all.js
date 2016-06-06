/**
 * Created by tri on 06/06/2016.
 */
var ready;
ready = function () {
    $('#school-select-edit').on('change', function (e) {
        var valueSelected = this.value;
        window.location.replace("/users/all/edit?school_id=" + valueSelected);
    });
}
$(document).ready(ready);
$(document).on('page:load', ready);