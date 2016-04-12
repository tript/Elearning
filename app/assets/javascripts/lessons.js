/**
 * Created by tri on 12/04/2016.
 */
var ready;
ready = function () {
    $('#textarea1').textext({
        plugins: 'tags filter autocomplete ajax',
        ajax: {
            url: 'http://textextjs.com/manual/examples/data.json',
            dataType: 'json',
            cacheResults: false
        }
    });
}
$(document).ready(ready);
$(document).on('page:load', ready);