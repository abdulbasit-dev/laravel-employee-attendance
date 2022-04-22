@extends("layouts.app")
@php
$title = 'User Attendances';
@endphp
@section('title', $title . 's')

@section('content')
  {{-- header --}}
  <div class="d-flex justify-content-between flex-md-nowrap align-items-center flex-wrap py-4">
    <div class="d-block mb-md-0 mb-4">
      <nav aria-label="breadcrumb" class="d-none d-md-inline-block">
        <ol class="breadcrumb breadcrumb-dark breadcrumb-transparent">
          <li class="breadcrumb-item">
            <a href="{{ route('dashboard') }}">
              <svg class="icon icon-xxs" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
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
    {{-- <div class="btn-toolbar mb-md-0 mb-2">
      <a href="{{ route('attendances.take-attendance') }}" class="btn btn-sm btn-gray-800 d-inline-flex align-items-center animate-up-2">
        <svg class="icon icon-xs me-2" viewBox="0 0 20 20" fill="currentColor">
          <path fill-rule="evenodd"
            d="M6 6V5a3 3 0 013-3h2a3 3 0 013 3v1h2a2 2 0 012 2v3.57A22.952 22.952 0 0110 13a22.95 22.95 0 01-8-1.43V8a2 2 0 012-2h2zm2-1a1 1 0 011-1h2a1 1 0 011 1v1H8V5zm1 5a1 1 0 011-1h.01a1 1 0 110 2H10a1 1 0 01-1-1z"
            clip-rule="evenodd" />
          <path d="M2 13.692V16a2 2 0 002 2h12a2 2 0 002-2v-2.308A24.974 24.974 0 0110 15c-2.796 0-5.487-.46-8-1.308z" />
        </svg>
        Take Attendance
      </a>
    </div> --}}

  </div>

  <div class="card card-body table-wrapper table-responsive border-0 shadow">
    @if (!auth()->user()->is_admin)
      <h2 class="text-muted mb-3 text-center">{{ $user->first_name . ' ' . $user->last_name }}</h2>
    @endif
    <table class="table-hover table">
      <thead>
        <tr>
          <th class="border-gray-200">#</th>
          <th class="border-gray-200">Day</th>
          <th class="border-gray-200">Date</th>
          <th class="border-gray-200">Status</th>
          @if (!auth()->user()->is_admin)
            <th class="border-gray-200">Action</th>
          @endif
        </tr>
      </thead>
      <tbody>

        @forelse ($user->attendances as $attendance)
          <tr>
            <td class="fw-bold">{{ $loop->iteration }}</td>
            <td><span class="fw-normal">{{ $attendance->created_at->format('l') }}</span></td>
            <td><span class="fw-normal">{{ $attendance->created_at->format('F d, Y') }}</span></td>
            <td><span class="fw-normal"><span class='badge bg-info'> {{ $attendance->status }}</span></td>
            @if (!auth()->user()->is_admin)
              <td><button class="btn me-3 btn-sm btn-warning">Complain</button></td>
            @endif
          </tr>
        @empty
        @endforelse



      </tbody>
    </table>
  </div>
@endsection