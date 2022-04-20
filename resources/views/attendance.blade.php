@extends("layouts.app")
@php
    $title = "Take Attendances"
@endphp
@section("title", $title."s")

@section("content")
{{-- header --}}
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-4">
    <div class="d-block mb-4 mb-md-0">
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block">
            <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
                <li class="breadcrumb-item">
                    <a href="{{ route('dashboard') }}">
                        <svg class="icon icon-xxs" fill="none" stroke="currentColor"
                            viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6">
                            </path>
                        </svg>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="{{ route('users.index') }}">{{ $title }}s</a>
                </li>
            </ol>
        </nav>
        <h2 class="h4">All {{ $title }}s</h2>
    </div>

</div>

<div class="card card-body border-0 shadow table-wrapper table-responsive">
    <table class="table table-hover">
        <thead>
            <tr>
                <th class="border-gray-200">#</th>
                <th class="border-gray-200">Full Name</th>
                <th class="border-gray-200">Job</th>
                <th class="border-gray-200">Department</th>
                <th class="border-gray-200">Action</th>
            </tr>
        </thead>
        <tbody>

            @forelse (\App\Models\User::all() as $user)
            <tr>
                <td class="fw-bold">{{ $loop->iteration }}</td>
                <td><span class="fw-normal"><a href="{{ route('users.show', $user->id) }}">{{ $user->first_name . " ". $user->last_name }} </a></span></td>
                <td><span class="fw-normal text-success">{{ $user->job->title??"Null" }}</span></td>
                <td><span class="fw-normal text-info">{{ $user->job->department->name??"Null" }}</span></td>
                <td class="inline-flex">
                    <button  style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-warning">At Work</button>
                    <button  style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-danger">Absent</button>
                    <button  style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-gray-200">Late</button>
                </td>
            </tr>
            @empty

            @endforelse



        </tbody>
    </table>
    <div class="card-footer px-3 border-0 mt-3">
        {{-- {{ $users->links() }} --}}
    </div>
</div>
@endsection