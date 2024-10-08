<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use OpenAdmin\Admin\Admin;
use OpenAdmin\Admin\Controllers\Dashboard;
use OpenAdmin\Admin\Layout\Column;
use OpenAdmin\Admin\Layout\Content;
use OpenAdmin\Admin\Layout\Row;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Dashboard')
            ->description('Description...')
            ->row(Dashboard::title())
            ->row(function (Row $row) {

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::environment());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::extensions());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::dependencies());
                });
            });
    }
    public function about(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('About')
            ->view('about');
    }
    public function customuser(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Custom User')
            ->view('customuser');
    }
    public function customuserstore(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:32',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|required|max:255',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        // Handle the file upload
        if ($request->hasFile('image')) {
            // Get the uploaded file
            $image = $request->file('image');

            // Create a unique file name
            $filename = time() . '_' . $image->getClientOriginalName();

            // Store the file in the 'public/uploads/images' directory
            $filePath = $image->storeAs('uploads/images', $filename, 'public');
            DB::table('custom_user')->insert([
                'name' => $validatedData['name'],
                'email' => $validatedData['email'],
                'password' => bcrypt($validatedData['password']),
                'image' => $filename,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
            //echo "successful";

            // Additional logic or redirection after successful data storage

            // return redirect()->route('admin.comment')->with('success', 'Comment stored successfully!');
            //return redirect()->route('admin.comment');
            return redirect()->back()->with('su', 'Custom User created successfully!');
        }
        //return redirect()->route('/'); 
        //return back()->with('success', 'successfully inserted');



    }
    public function customusershow(Content $content)
    {
        // Retrieve data using Query Builder
        $users = DB::table('custom_user')->get();

        // Pass the data to the view

        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Custom User')
            ->view('customusershow', ['users' => $users]);
    }
    public function customusergridshow(Content $content)
    {
        // Retrieve data using Query Builder
        $users = DB::table('custom_user')->get();

        // Pass the data to the view

        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Custom User')
            ->view('customusergridshow', ['users' => $users]);
    }
    public function dynamicsave(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Dynamic Save')
            ->view('dynamicsave');
    }
    public function dynamicsavestore(Request $request)
    {
        // Validate the request input
        $request->validate([
            'rows.*.name' => 'required|string|max:255',
            'rows.*.email' => 'required|email|max:255',
            'rows.*.password' => 'required|string|required|max:255',
            'rows.*.image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        // Loop through each row and insert the data using Query Builder
        foreach ($request->rows as $index => $row) {

            if ($request->hasFile("rows.$index.image")) {
                $image = $request->file("rows.$index.image");


                $filename = time() . '_' . $image->getClientOriginalName();

                // Store the file in the 'public/uploads/images' directory
                $filePath = $image->storeAs('uploads/images', $filename, 'public');


                //$imagePath = $image->store('images', 'public');  // Store the image in the 'images' directory
                DB::table('custom_user1')->insert([
                    'name' => $row['name'],
                    'email' => $row['email'],
                    'password' => bcrypt($row['password']),
                    'image' => $filename,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }

        return redirect()->back()->with('su', 'Rows successfully saved!');
    }
    public function dynamicsave1(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Dynamic Save')
            ->view('dynamicsave1');
    }
    public function dynamicsavestore1(Request $request)
    {
        // $validatedData = $request->validate([
        //     'files.*' => 'required|file|mimes:jpeg,png,jpg,gif,svg|max:2048', // File validation
        //     'name.*' => 'required|string|max:255',
        //     'email.*' => 'required|array',
        //     'password.*' => 'required|string',
        // ]);
    
        // foreach ($request->files as $index => $file) {
        //     // Save file
        //     $path = $file->store('uploads', 'public');
    
        //     // Create record in the database
        //     DB::table('custom_user1')->insert([
                
        //     'name' => $request->name[$index],
        //     'email' => $request->email[$index],
        //     'password' => $request->password[$index],
        //     'image' => $path,
        //     'created_at' => now(),
        //             'updated_at' => now(),
        //     ]);
        //     echo $request->name[$index];
        // }

        // return redirect()->back()->with('su', 'Rows successfully saved!');


        // Validate all dynamic input rows
        $validatedData = $request->validate([
            'users.*.name' => 'required|string|max:255',
            'users.*.email' => 'required|email|unique:users,email',
            'users.*.password' => 'required|string|min:6',
            'users.*.image' => 'required|image|mimes:jpg,png,jpeg,gif|max:2048', // Validate the image file
        ]);

        // Iterate through each user's data
        foreach ($request->input('users') as $index => $userData) {
            // Check if the file exists in the request for this user
            $imagePath = null;
            if ($request->hasFile("users.$index.image")) {
                // Store the image file and get the path
                $imagePath = $request->file("users.$index.image")->store('uploads', 'public');
            }

            // Save user data using query builder
            DB::table('custom_user1')->insert([
                'name' => $userData['name'],
                'email' => $userData['email'],
                'password' => bcrypt($userData['password']), // Hash the password
                'image' => $imagePath, // Save the image path
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Redirect back with success message
        return redirect()->back()->with('su', 'Users saved successfully with images.');
    }
    public function dynamicsave2(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Dynamic Save')
            ->view('dynamicsave2');
    }
    public function dynamicsavestore2(Request $request)
    {
        


        // // Validate all dynamic input rows
        // $validatedData = $request->validate([
        //     'users.*.name' => 'required|string|max:255',
        //     'users.*.email' => 'required|email|unique:users,email',
        //     'users.*.password' => 'required|string|min:6',
        //     'users.*.image' => 'required|image|mimes:jpg,png,jpeg,gif|max:2048', // Validate the image file
        // ]);

        // // Iterate through each user's data
        // foreach ($request->input('users') as $index => $userData) {
        //     // Check if the file exists in the request for this user
        //     $imagePath = null;
        //     if ($request->hasFile("users.$index.image")) {
        //         // Store the image file and get the path
        //         $imagePath = $request->file("users.$index.image")->store('uploads', 'public');
        //     }

        //     // Save user data using query builder
        //     DB::table('custom_user1')->insert([
        //         'name' => $userData['name'],
        //         'email' => $userData['email'],
        //         'password' => bcrypt($userData['password']), // Hash the password
        //         'image' => $imagePath, // Save the image path
        //         'created_at' => now(),
        //         'updated_at' => now(),
        //     ]);
        // }

        // // Redirect back with success message
        // return redirect()->back()->with('su', 'Users saved successfully with images.');





        // Validate the form data
        $request->validate([
            'name.*' => 'required|string|max:255',
            'email.*' => 'required|email|max:255',
            'password.*' => 'required|string|min:6',
            'file.*' => 'nullable|file|mimes:jpg,jpeg,png,pdf|max:2048',
        ]);

        // Process and save the data
        $userData = [];
        foreach ($request->name as $key => $name) {
            $userData[] = [
                'name' => $name,
                'email' => $request->email[$key],
                'password' => bcrypt($request->password[$key]), // Hash password
                'file' => $request->file('file')[$key] ? $request->file('file')[$key]->store('uploads') : null,
            ];
            // Save user data using query builder
            DB::table('custom_user1')->insert([
                'name' => $userData['name'],
                'email' => $userData['email'],
                'password' => bcrypt($userData['password']), // Hash the password
                'image' => $userData['name'], // Save the image path
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Example: Store the data in a database (optional)
        // YourModel::insert($data);

        // Return a JSON response for the AJAX success handler
        return response()->json(['message' => 'Form submitted successfully!'], 200);
    }
    public function dynamicsave3(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Dynamic Save')
            ->view('dynamicsave3');
    }
    public function dynamicsavestore3(Request $request)
    {
        


        // Validate the request
        $request->validate([
            'name.*' => 'required|string|max:255',
            'email.*' => 'required|email|unique:custom_user1,email',
            'password.*' => 'required|string|min:6',
            'image.*' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Loop through each user input
        foreach ($request->name as $index => $name) {
            // Store the uploaded image
            $imagePath = $request->file('image')[$index]->store('images');

            // Insert data into the database using query builder
            DB::table('custom_user1')->insert([
                'name' => $name,
                'email' => $request->email[$index],
                'password' => bcrypt($request->password[$index]),
                'image' => $imagePath,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        return response()->json(['message' => 'Users registered successfully!'], 200);
    }
    public function ajaxvalue(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Ajax Save')
            ->view('ajaxvaluepass');
    }

    public function ajaxvaluepass(Request $request)
    {
        // Validate the input
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:custom_user1',
            'password' => 'required|string|min:8',
            
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Store the image file
        

        // Insert user data into the database using Query Builder
        DB::table('custom_user1')->insert([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password), // Hash the password
            'image' => $request->name,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return response()->json(['message' => 'Registration successful!'], 200);
    }
    public function ajaxvalue1(Content $content)
    {
        return $content
            ->css_file(Admin::asset("open-admin/css/pages/dashboard.css"))
            ->title('Ajax Save')
            ->view('ajaxvaluepass1');
    }
    public function ajaxvaluepass1(Request $request)
    {
        // Validate the request data
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:custom_user1',
            'password' => 'required|string|min:6',
            'image' => 'required|file|mimes:jpg,jpeg,png|max:2048', // Validate the file (image)
        ]);

        // Handle file upload
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '_' . $file->getClientOriginalName();
            $filePath = $file->storeAs('uploads', $filename, 'public'); // Store the file in the 'public/uploads' directory
        }

        // Insert the data into the database using Query Builder
        DB::table('custom_user1')->insert([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => bcrypt($request->input('password')), // Hash the password
            'image' => $filePath ?? null, // Store file path if file is uploaded
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Return a JSON response
        return response()->json(['message' => 'User registered successfully!'], 200);
    }
}
