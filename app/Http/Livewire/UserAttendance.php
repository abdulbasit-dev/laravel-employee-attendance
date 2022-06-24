<?php

namespace App\Http\Livewire;


use App\Models\Attendance;
use App\Models\User;
use App\Notifications\EmployeeAttendanceNotification;
use Carbon\Carbon;
use Illuminate\Support\Facades\Notification;
use Livewire\Component;

class UserAttendance extends Component
{
    public User $user;
    public $statuses;

    public function mount($user, $statuses)
    {
        $this->user = $user;
        $this->statuses = $statuses;
    }

    public function render()
    {
        
        return view('livewire.user-attendance');
    }

    public function attendance($userId, $action, $attendanceId)
    {
        //NOTE
        // 0 => AtWork
        // 1 => Absent
        // 2 => Late

        // find user
        $user = User::find($userId);

        //if admin click twice attendace for a user delete the old one;
        Attendance::whereId($attendanceId)->update(["status" => $action]);


        //if user get "Absent" or "Late" status send notfifaction to him
        if ($action === 1 || $action === 2) {

            //only delete todays notification when admin change its mind about the user attendance
            $user->notifications()->whereDate('created_at', Carbon::today())->delete();

            $message = null;
            if ($action === 1) {
                $message = "You Are Assigned As Absent";
            } else {
                $message = "You Are Assigned As Late";
            }

            Notification::send($user, new EmployeeAttendanceNotification($user, $action, $message));
        }
    }
}
