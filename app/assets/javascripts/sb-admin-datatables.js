// Call the dataTables jQuery plugin


$(document).ready(function() {
  $('#activitiesTable').dataTable({
  	 /* No ordering applied by DataTables during initialisation */
  	   dom: 'Bfrtip',
  	      buttons: [
            'print'
        ],
        "order": []

  });
});



