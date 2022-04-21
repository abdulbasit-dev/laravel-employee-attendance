<?php

namespace App\Http\Livewire;

use App\Models\Attendance;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;
use Livewire\Component;
use Livewire\WithPagination;

class Attendances extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $disableActions = false;

    public function mount()
    {

        // $this->users = $users;
    }

    public function render()
    {
        $users = User::query()->with("attendance")->whereIsAdmin(0)->paginate(15);
        return view('livewire.attendances', compact("users"));
    }

    public function attendance($userId, $action)
    {

        //NOTE
        // 0 => AtWork
        // 1 => Absent
        // 2 => Late

        //if admin click twice attendace for a user delete the old one;
        Attendance::whereUserId($userId)->whereDate('created_at', Carbon::today())->delete();

        //if user get "Absent" or "Late" status send notfifaction to him
        //implem
        // becouse the notification is for user add flag 0 in "for" column in notifaction table 
        // but if user request change on his attendace then make "for" flag to 1 mean that notification from user to admin 

        Attendance::create([
            "user_id" => $userId,
            "status" => $action,
        ]);
    }
}
