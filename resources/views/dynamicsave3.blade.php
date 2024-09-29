<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Table Example</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>

<h2>User Information</h2>
<table id="dynamicTable">
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Image</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <!-- Dynamic rows will be added here -->
    </tbody>
</table>
<button id="addRow">Add Row</button>
<button id="saveData">Save Data</button>

<div id="response"></div>

<script>
    $(document).ready(function() {
        // Function to add a new row
        $('#addRow').click(function() {
            $('#dynamicTable tbody').append(`
                <tr>
                    <td><input type="text" name="name[]" placeholder="Name" required></td>
                    <td><input type="email" name="email[]" placeholder="Email" required></td>
                    <td><input type="password" name="password[]" placeholder="Password" required></td>
                    <td><input type="file" name="image[]" required></td>
                    <td><button class="removeRow">Remove</button></td>
                </tr>
            `);
        });

        // Function to remove a row
        $('#dynamicTable').on('click', '.removeRow', function() {
            $(this).closest('tr').remove();
        });

        // Save all user data via AJAX
        $('#saveData').click(function() {
            let formData = new FormData();
            $('#dynamicTable tbody tr').each(function() {
                let name = $(this).find('input[name="name[]"]').val();
                let email = $(this).find('input[name="email[]"]').val();
                let password = $(this).find('input[name="password[]"]').val();
                let image = $(this).find('input[name="image[]"]')[0].files[0];

                formData.append('name[]', name);
                formData.append('email[]', email);
                formData.append('password[]', password);
                formData.append('image[]', image);
            });

            $.ajax({
                url: '{{ route("admin.dynamicsavestore3") }}', // Your Laravel route for saving users
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(response) {
                    $('#response').html('<p>' + response.message + '</p>'); // Display success message
                    $('#dynamicTable tbody').empty(); // Clear the table

                    // Hide the success message after 3 seconds
    setTimeout(function() {
        $('#response').hide(); // Or use .hide() to immediately hide
    }, 3000); // 3000 ms = 3 seconds

    $('#response').show(); // Ensure it's visible when new message comes
                },
                error: function(xhr) {
                    $('#response').html('<p>Error: ' + xhr.responseJSON.message + '</p>'); // Display error message
                }
            });
        });
    });
</script>

</body>
</html>
