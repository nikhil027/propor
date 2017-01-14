// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
// require turbolinks
//= require_tree .

$(document).ready(function(){
    $('#contractsTable').DataTable();
    $('#propertiesTable').DataTable();
    $('#usersTable').DataTable();
    $('#paymentsTable').DataTable();

    $('#payments_paymentDescription_id').chosen();
    $('#contract_property_id').chosen();
    $('#contract_tenant_id').chosen();
    $('#property_country_id').chosen();
    $('#property_state_id').chosen();
    $('#property_city_id').chosen();

});
