<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Form with Table</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        .error {
            color: red;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>
    <form id="dynamic-form" enctype="multipart/form-data">
        <table id="fields-table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>File Upload</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="fields-container">
                <tr class="field">
                    <td><input type="text" name="name[]" class="name-input" /></td>
                    <td><input type="email" name="email[]" class="email-input" /></td>
                    <td><input type="password" name="password[]" class="password-input" /></td>
                    <td><input type="file" name="file[]" class="file-input" /></td>
                    <td><button type="button" class="remove-field">Remove</button></td>
                </tr>
            </tbody>
        </table>
        <button type="button" id="add-field">Add Row</button>
        <button type="submit">Submit</button>
        <div id="duplicate-message"></div>
    </form>

    <!-- <script>
        $(document).ready(function() {
            $('#add-field').click(function() {
                $('#fields-container').append(`
                    <tr class="field">
                        <td><input type="text" name="name[]" class="name-input" /></td>
                        <td><input type="email" name="email[]" class="email-input" /></td>
                        <td><input type="password" name="password[]" class="password-input" /></td>
                        <td><input type="file" name="file[]" class="file-input" /></td>
                        <td><button type="button" class="remove-field">Remove</button></td>
                    </tr>
                `);
            });

            $('#fields-container').on('click', '.remove-field', function() {
                $(this).closest('tr').remove();
            });

            $('#dynamic-form').submit(function(event) {
                event.preventDefault(); // Prevent form submission

                const names = $('.name-input').map(function() {
                    return $(this).val().trim();
                }).get();
                const emails = $('.email-input').map(function() {
                    return $(this).val().trim();
                }).get();

                // Check for duplicates
                const uniqueNames = new Set(names);
                const uniqueEmails = new Set(emails);
                const isNamesUnique = names.length === uniqueNames.size;
                const isEmailsUnique = emails.length === uniqueEmails.size;

                if (isNamesUnique && isEmailsUnique) {
                    $('#duplicate-message').text('All values are unique. Submitting form...').css('color', 'green');
                    // Here you can submit the form data
                    // For example:
                    // $.post('/api/save-form', { names, emails, ... });



                } else {
                    $('#duplicate-message').text('Duplicate values found. Please fix them.').css('color', 'red');
                }
            });
        });
    </script> -->














    <script>
        $(document).ready(function() {

            // Add new row to the table
            $('#add-field').click(function() {
                $('#fields-container').append(`
                    <tr>
                        <td><input type="text" name="name[]" class="name-input" required></td>
                        <td><input type="email" name="email[]" class="email-input" required></td>
                        <td><input type="password" name="password[]" class="password-input" required></td>
                        <td><input type="file" name="file[]" class="file-input"></td>
                        <td><button type="button" class="remove-field">Remove</button></td>
                    </tr>
                `);
            });

            // Remove row from the table
            $(document).on('click', '.remove-field', function() {
                $(this).closest('tr').remove();
            });



















            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') // Add CSRF token to header
                }
            });



            // Handle form submission using AJAX
            $('#dynamic-form').submit(function(event) {
                event.preventDefault(); // Prevent traditional form submission




                const names = $('.name-input').map(function() {
                    return $(this).val().trim();
                }).get();
                const emails = $('.email-input').map(function() {
                    return $(this).val().trim();
                }).get();

                // Check for duplicates
                const uniqueNames = new Set(names);
                const uniqueEmails = new Set(emails);
                const isNamesUnique = names.length === uniqueNames.size;
                const isEmailsUnique = emails.length === uniqueEmails.size;

                if (isNamesUnique && isEmailsUnique) {
                   // $('#duplicate-message').text('All values are unique. Submitting form...').css('color', 'green');





                    var formData = new FormData(this); // Collect form data (including file inputs)
                    // for (var pair of formData.entries()) {
                    //     console.log(pair[0] + ': ' + pair[1]);
                    // }

                    $.ajax({
                        url: '{{ route("admin.dynamicsavestore2") }}', // Laravel API endpoint (adjust accordingly)
                        method: 'POST', // Use POST to submit data
                        data: formData, // Send form data
                        contentType: false, // Required for file upload
                        processData: false, // Required for file upload
                        success: function(response) {
                            // Handle success
                            $('#form-message').html('<span style="color: green;">' + response.message + '</span>');
                            $('#dynamic-form')[0].reset(); // Optionally reset the form
                        },
                        error: function(xhr) {
                            // Handle error
                            var errors = xhr.responseJSON.errors;
                            var errorMessages = '';
                            $.each(errors, function(key, value) {
                                errorMessages += '<p style="color: red;">' + value + '</p>';
                            });
                            $('#form-message').html(errorMessages);
                        }
                    });
                } else {
                    $('#duplicate-message').text('Duplicate values found. Please fix them.').css('color', 'red');
                }
            });

        });
    </script>
</body>

</html>