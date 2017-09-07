// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks

// bootstrap
//= require adminbsb-materialdesign/plugins/bootstrap/js/bootstrap.min.js

// slim scroll
//= require adminbsb-materialdesign/plugins/jquery-slimscroll/jquery.slimscroll.min.js

// node waves
//= require adminbsb-materialdesign/plugins/node-waves/waves.min.js

// count to
//= require adminbsb-materialdesign/plugins/jquery-countto/jquery.countTo.js

// raphael
//= require adminbsb-materialdesign/plugins/raphael/raphael.min.js

// morrisjs
//= require adminbsb-materialdesign/plugins/morrisjs/morris.min.js

// chartjs
//= require adminbsb-materialdesign/plugins/chartjs/Chart.bundle.min.js

// flot chart
//= require adminbsb-materialdesign/plugins/flot-charts/jquery.flot.js
//= require adminbsb-materialdesign/plugins/flot-charts/jquery.flot.resize.js
//= require adminbsb-materialdesign/plugins/flot-charts/jquery.flot.pie.js
//= require adminbsb-materialdesign/plugins/flot-charts/jquery.flot.categories.js
//= require adminbsb-materialdesign/plugins/flot-charts/jquery.flot.time.js

// sparkline chart
//= require adminbsb-materialdesign/plugins/jquery-sparkline/jquery.sparkline.js

// moment js
//= require adminbsb-materialdesign/plugins/momentjs/moment.js

// material datepicker
//= require adminbsb-materialdesign/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js

// admin js
//= require adminbsb-materialdesign/js/admin.js

//= require_tree .

// initialize material date picker
// set date format / don't show time
$('.datepicker').bootstrapMaterialDatePicker({
  format: 'YYYY-MM-DD',
  time: false
});
