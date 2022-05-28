<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\User;
use App\Notifications\AdminAttendanceComplainNotification;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;

class AttendanceController extends Controller
{
    public function index()
    {
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
        $statuses = ["At Work", "Absent", "Late"];
        $user = User::query()->where('id', $user->id)->with("attendances")->first();
        return view('attendances.user-attendance', compact("user", "statuses"));
    }

    public function attendanceComplain(Request $request, Attendance $attendance)
    {

        //find all admins
        $admins = User::whereIsAdmin(1)->get();

        //send notifiaction to all admins 
        Notification::send($admins, new AdminAttendanceComplainNotification($attendance, $request));

        return redirect()->back()->with([
            "message" => "Complain Successfully Sent",
            "title" => "Sent",
            "icon" => "success",
        ]);
    }
}
