// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require cable
//= require turbolinks
//= require react
//= require react_ujs
//= require dataTables
//= require components
//= require_tree .

$(document).on('turbolinks:load', function(){
  $("table[role='datatable']").each(function(){
    $(this).DataTable({
        responsive: {
            details: {
                type: 'column',
                target: 'tr'
            }
        },
        columnDefs: [ {
            className: 'control',
            orderable: false,
            targets:   0
        } ],
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]]
    });
    // Add event listener for opening and closing details
    
  });  
})


