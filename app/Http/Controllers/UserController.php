<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\Job;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class UserController extends Controller
{

    public function __construct()
    {
        View::share([
            "title" => "Employee"
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::with('job', 'job.department')->whereIsAdmin(0)->orderByDesc("created_at")->paginate(15);
        return view("users.index", compact("users"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $jobs = Job::pluck('title', 'id');
        return view("users.create", compact("jobs"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validator =  Validator::make(
            $request->all(),
            [
                "first_name" => ['required', 'string'],
                "last_name" => ['required', 'string'],
                "email" => ['required', 'email'],
                "password" => ['required'],
                "job" => ['required'],
                "gender" => ['required', 'string'],
                "sallary" => ['required'],
                "address" => ['required', 'string'],
                "number" => ['required', 'string'],
            ],
        );


        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        User::create([
            "first_name" => $request->first_name,
            "last_name" => $request->last_name,
            "email" => $request->email,
            "password" => $request->password,
            "job_id" => $request->job,
            "gender" => $request->gender,
            "sallary" => $request->sallary,
            "address" => $request->address,
            "number" => $request->number,
        ]);

        return redirect()->route('users.index')->with([
            "message" => "Employee Created Successfully",
            "title" => "Created",
            "icon" => "success",
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $User
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $jobs = Department::pluck('name', 'id');
        return view("users.edit", compact("jobs", 'job'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $User
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $validator =  Validator::make(
            $request->all(),
            [
                "title" => ['required', 'string', "unique:users,title," . $user->id . ",id"],
                "department_id" => ['required', 'exists:departments,id']
            ],
            [
                "department_id.required" => "please select a department"
            ]
        );

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $user->update([
            "title" => $request->title,
            "department_id" => $request->department_id
        ]);

        return redirect()->route('users.index')->with([
            "message" => "User Updated Successfully",
            "title" => "Updated",
            "icon" => "success",
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        return redirect()->route('users.index')->with([
            "message" => "User Deleted Successfully",
            "title" => "Deleted",
            "icon" => "success",
        ]);
    }
}
