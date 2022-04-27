<?php

namespace App\Http\Livewire;

use App\Models\Attendance;
use App\Models\User;
use App\Notifications\AdminAttendanceNotification;
use Carbon\Carbon;
use Illuminate\Support\Facades\Notification;
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
        $users = User::query()->with([
            "attendance" => function ($q) {
                $q->whereDate("created_at", Carbon::today())->get();
            }
        ])->whereIsAdmin(0)->paginate(15);
        return view('livewire.attendances', compact("users"));
    }

    public function attendance($userId, $action)
    {
        //NOTE
        // 0 => AtWork
        // 1 => Absent
        // 2 => Late

        $user = User::find($userId);

        //if admin click twice attendace for a user delete the old one;
        Attendance::whereUserId($userId)->whereDate('created_at', Carbon::today())->delete();

        Attendance::create([
            "user_id" => $userId,
            "status" => $action,
        ]);

        //if user get "Absent" or "Late" status send notfifaction to him
        if ($action === 1 || $action === 2) {
            
            //only delete todays notification when admin change its mind about the user attendance
            $user->notifications()->whereDate('created_at', Carbon::today())->delete();

            Notification::send($user, new AdminAttendanceNotification($user, $action));
        }

        //implemt
        // becouse the notification is for user add flag 0 in "for" column in notifaction table 
        // but if user request change on his attendace then make "for" flag to 1 mean that notification from user to admin 

    }
}
