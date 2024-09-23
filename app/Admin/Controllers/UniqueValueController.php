// app/Http/Controllers/UniqueValueController.php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use OpenAdmin\Admin\Admin;
use OpenAdmin\Admin\Controllers\Dashboard;
use OpenAdmin\Admin\Layout\Column;
use OpenAdmin\Admin\Layout\Content;
use OpenAdmin\Admin\Layout\Row;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UniqueValueController extends Controller
{
    public function checkUniqueEmail(Request $request)
    {
        $email = $request->email;

        // Check if the email exists in the users table
        $exists = DB::table('custom_user1')->where('email', $email)->exists();

        if ($exists) {
            return response()->json(['status' => 'error', 'message' => 'This email is already taken.']);
        }

        return response()->json(['status' => 'success', 'message' => 'This email is available.']);
    }
}
