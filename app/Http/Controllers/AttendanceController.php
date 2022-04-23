<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AttendanceController extends Controller
{
    public function index()
    {
        // $users = User::query()->whereIsAdmin(0)->with("attendance")->paginate(15);
        $users = User::query()->whereIsAdmin(0)->with([
            "attendance" => function ($q) {
                $q->whereDate("created_at", Carbon::today())->get();
            }
        ])->paginate(15);
        // return $users;
        return view('attendances.index', compact("users"));
    }

    public function takeAttendance()
    {
        return view('attendances.take-attendance');
    }

    public function userAttendance(User $user)
    {
        $user = User::query()->where('id', $user->id)->with("attendances")->first();
        return view('attendances.user-attendance', compact("user"));
    }

    
}
