<?php

namespace App\Http\Controllers;

use App\Models\Department;
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
        $users = User::with('job', 'job.department')->orderByDesc("created_at")->paginate(10);
        return view("users.index", compact("users"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $depts = Department::pluck('name', 'id');
        return view("users.create", compact("depts"));
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
                "title" => ['required', 'string', 'unique:users,title'],
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


        User::create([
            "title" => $request->title,
            "department_id" => $request->department_id
        ]);

        return redirect()->route('users.index')->with([
            "message" => "User Created Successfully",
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
    public function edit(User $job)
    {
        $depts = Department::pluck('name', 'id');
        return view("users.edit", compact("depts", 'job'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $User
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $job)
    {
        $validator =  Validator::make(
            $request->all(),
            [
                "title" => ['required', 'string', "unique:users,title," . $job->id . ",id"],
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

        $job->update([
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
     * @param  \App\Models\User  $job
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $job)
    {
        $job->delete();
        return redirect()->route('users.index')->with([
            "message" => "User Deleted Successfully",
            "title" => "Deleted",
            "icon" => "success",
        ]);
    }
}
