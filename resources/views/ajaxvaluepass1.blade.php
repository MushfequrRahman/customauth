
    <!-- <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}"> -->
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <form id="ajaxForm" enctype="multipart/form-data">
        <input type="text" name="name" placeholder="Name" required><br>
        <input type="email" name="email" placeholder="Email" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <input type="file" name="image" required><br>
        <button type="submit">Submit</button>
    </form>

    <div id="response"></div>

    <script>
        $(document).ready(function() {
            $('#ajaxForm').on('submit', function(e) {
                e.preventDefault();

                var formData = new FormData(this);
                
                $.ajax({
                    url: "{{ route('admin.ajaxvaluepass1') }}", // Laravel route to handle the request
                    type: "POST",
                    data: formData,
                    processData: false,  // Prevent jQuery from automatically transforming the data into a query string
                    contentType: false,  // Tell jQuery not to set contentType
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        $('#response').html('<p>' + response.message + '</p>');
                        // Clear the form fields
                        $('#ajaxForm')[0].reset();
                    },
                    error: function(response) {
                        $('#response').html('<p>Error: ' + response.responseJSON.message + '</p>');
                    }
                });
            });
        });
    </script>

