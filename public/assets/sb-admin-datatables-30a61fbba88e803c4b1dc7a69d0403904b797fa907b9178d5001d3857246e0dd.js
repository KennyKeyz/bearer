// Call the dataTables jQuery plugin


$(document).ready(function() {
  $('#activitiesTable').dataTable({
  	 /* No ordering applied by DataTables during initialisation */
  	 
        "order": [],
        buttons: [
            'print'
        ]
  });
});



