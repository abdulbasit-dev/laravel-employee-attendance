<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\User;
use Illuminate\Http\Request;

class AttendanceController extends Controller
{
    public function index()
    {
        $users = User::query()->whereIsAdmin(0)->with("attendance")->paginate(15);
        return view('attendances.index', compact("users"));
    }

    public function takeAttendance()
    {
        $users = User::query()->with([
            "attendances" => function ($q) {
                $q->orderByDesc("created_at")->first();
            },
            "attendance"
        ])->whereIsAdmin(0)->get();
        return view('attendances.take-attendance', compact("users"));
    }

    public function userAttendance()
    {
        $user = User::query()->where('id', auth()->id())->with("attendances")->first();
        return view('attendances.user-attendance', compact("user"));
    }

    
}
