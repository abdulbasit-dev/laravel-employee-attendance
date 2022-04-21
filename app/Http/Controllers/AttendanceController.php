<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AttendanceController extends Controller
{
    public function index()
    {
        $users = User::query()->with([
            "attendances"=>function ($q){
                $q->orderByDesc("created_at")->first();
            },
            "attendance"
        ])->whereIsAdmin(0)->get();
        // return $users;   
        return view('attendances.take-attendance',compact("users"));
    }

    public function takeAttendance()
    {
        $users = User::query()->with([
            "attendances"=>function ($q){
                $q->orderByDesc("created_at")->first();
            },
            "attendance"
        ])->whereIsAdmin(0)->get();
        // return $users;   
        return view('attendances.take-attendance',compact("users"));
    }
}
