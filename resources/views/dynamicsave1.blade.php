<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<style>
    .error-message {
        color: red;
        font-size: 0.875em;
    }
</style>

@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif
<div class="container mt-5">
    @if(session()->has('su'))
    <div class="alert alert-success alert-dismissible alertDismissible">
        {{ session()->get('su') }}
    </div>
    @endif
    <h2>Dynamic User Form</h2>
    <form id="userForm" action="{{ route('admin.dynamicsavestore1') }}" method="POST" enctype="multipart/form-data">
        @csrf

        <table class="table table-bordered">
            <thead>
                <tr class="text-center">
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Image</th>
                    <th><button type="button" id="add-row" class="btn btn-primary">ADD</button></th>
                </tr>
            </thead>
            <tbody id="dynamic-table">
                <tr id="row-0">
                    <td><input type="text" name="users[0][name]" class="form-control" placeholder="Name" required></td>
                    <td><input type="email" name="users[0][email]" class="form-control" placeholder="Email" required></td>
                    <td><input type="password" name="users[0][password]" class="form-control" placeholder="Password" required></td>
                    <td><input type="file" name="users[0][image]" class="form-control image-input" data-row="0" required>
                        <span class="error-message" id="error-0"></span>
                    </td>
                    <td><button type="button" class="btn btn-danger btn-sm remove-row" data-row="0">Remove</button></td>
                </tr>
            </tbody>
        </table>


        <button type="submit" id="submit-btn" class="btn btn-success">Submit</button>
    </form>
</div>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
<script>
    let rowIndex = 1;

    // Add a new row dynamically
    document.getElementById('add-row').addEventListener('click', function() {
        const dynamicTable = document.getElementById('dynamic-table');
        const newRow = `
                <tr id="row-${rowIndex}" class="row-container">
                    <td><input type="text" name="users[${rowIndex}][name]" class="form-control" placeholder="Name" required></td>
                    <td><input type="email" name="users[${rowIndex}][email]" class="form-control" placeholder="Email" required></td>
                    <td><input type="password" name="users[${rowIndex}][password]" class="form-control" placeholder="Password" required></td>
                    <td><input type="file" name="users[${rowIndex}][image]" class="form-control image-input" data-row="${rowIndex}" required>
                        <span class="error-message" id="error-${rowIndex}"></span>
                    </td>
                    <td><button type="button" class="btn btn-danger btn-sm remove-row" data-row="${rowIndex}">Remove</button></td>
                </tr>
            `;
        dynamicTable.insertAdjacentHTML('beforeend', newRow);
        rowIndex++;
    });

    // Remove a row dynamically
    // document.addEventListener('click', function(event) {
    //     if (event.target.classList.contains('remove-row')) {
    //         const rowId = event.target.dataset.row;
    //         document.getElementById(`row-${rowId}`).remove();
    //     }
    // });

    document.addEventListener('click', function(e) {
        if (e.target && e.target.classList.contains('remove-row')) {
            if (document.querySelectorAll('.row-container').length > 0) {
                e.target.closest('.row-container').remove();
            } else {
                alert('At least one row is required.');
            }
        }
    });

    // Real-time validation for image files
    document.addEventListener('change', function(event) {
        if (event.target.classList.contains('image-input')) {
            const fileInput = event.target;
            const rowId = fileInput.dataset.row;
            const errorMessage = document.getElementById(`error-${rowId}`);

            // Get the file object
            const file = fileInput.files[0];
            if (file) {
                // Validate file size (2MB = 2048 * 1024 bytes)
                const maxSize = 2048 * 1024;
                if (file.size > maxSize) {
                    errorMessage.textContent = "File size must be less than 2MB.";
                    fileInput.value = ""; // Clear the file input
                } else {
                    errorMessage.textContent = "";
                }

                // Validate file type (allow only jpg, jpeg, png, gif)
                const allowedTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/jpg'];
                if (!allowedTypes.includes(file.type)) {
                    errorMessage.textContent = "Only JPG, JPEG, PNG, and GIF files are allowed.";
                    fileInput.value = ""; // Clear the file input
                } else {
                    errorMessage.textContent = "";
                }
            }
        }
    });

    // Disable form submission if there are errors
    document.getElementById('userForm').addEventListener('submit', function(event) {
        const errorMessages = document.querySelectorAll('.error-message');
        let hasError = false;

        // Check if any error messages exist
        errorMessages.forEach(function(errorMessage) {
            if (errorMessage.textContent !== "") {
                hasError = true;
            }
        });

        if (hasError) {
            event.preventDefault(); // Prevent form submission
            alert("Please fix the errors before submitting.");
        }
    });
</script>