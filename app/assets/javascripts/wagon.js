$(document).ready(function() {
    $('.place').hide();
   $('#wagon_type').change(function() {
      var wagon_type;
      wagon_type = $(this).val();
      console.log(wagon_type);
       $('.place').hide();
       if (wagon_type == 'CoupeWagon') {
         $('#wagon_low_place').show();
         $('#wagon_top_place').show();
       };
       if (wagon_type == 'SvWagon') {
         $('#wagon_low_place').show();
       };
       if (wagon_type == 'SitWagon') {
         $('#wagon_sit_place').show();
       };
       if (wagon_type == 'PlackartWagon') {
         $('#wagon_side_low_place').show();
         $('#wagon_low_place').show();
         $('#wagon_top_place').show();
         $('#wagon_side_top_place').show();
       };
      
    });
});
