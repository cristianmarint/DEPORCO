var materialInputs = $('input.input-material');

// activate labels for prefilled values
materialInputs.filter(function() { return $(this).val() !== ""; }).siblings('.label-material').addClass('active');

// move label on focus
materialInputs.on('focus', function () {
    $(this).siblings('.label-material').addClass('active');
});

// remove/keep label on blur
materialInputs.on('blur', function () {
    $(this).siblings('.label-material').removeClass('active');

    if ($(this).val() !== '') {
        $(this).siblings('.label-material').addClass('active');
    } else {
        $(this).siblings('.label-material').removeClass('active');
    }
});
