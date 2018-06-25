$(document).ready(function() {
    $('a.edit_route').click(function(e) {
       e.preventDefault();
       var route_id;
       var form;
       var name;

       route_id = $(this).data('routeId');
       form = $('#edit_route_' + route_id);
       title = $('#ruote_name_' + route_id);


       if (!$(this).hasClass('cancel')) {
           $(this).addClass('cancel');
           $(this).html('Отмена');
       } else {
           $(this).removeClass('cancel');
           $(this).html('Редактировать');
       }

       form.toggle();
       name.toggle();
    });
});
