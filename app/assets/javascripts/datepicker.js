

  $(function() {
        $("#datepicker").datepicker();
        $("#format").change(function() { $('#datepicker').datepicker('option', {dateFormat: $(this).val()}); });
    });



