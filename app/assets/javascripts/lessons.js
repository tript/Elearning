/**
 * Created by tri on 12/04/2016.
 */
var ready;
ready = function () {
    $('#textarea1').textext({
        plugins: 'tags filter autocomplete ajax',
        tags: 'fdl',
        ajax: {
            url: '/users',
            dataType: 'json',
            cacheResults: true
        }
    });
}
$(document).ready(ready);
$(document).on('page:load', ready);