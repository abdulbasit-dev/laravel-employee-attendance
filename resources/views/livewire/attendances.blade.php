<div class="card card-body table-wrapper table-responsive border-0 shadow">
  <table class="table-hover table">
    <thead>
      <tr>
        <th class="border-gray-200">#</th>
        <th class="border-gray-200">ID</th>
        <th class="border-gray-200">Full Name</th>
        <th class="border-gray-200">Job</th>
        <th class="border-gray-200">Department</th>
        <th class="border-gray-200">Status</th>
        <th class="border-gray-200">Action</th>
      </tr>
    </thead>
    <tbody>

      @forelse ($users as $user)
        <tr>
          <td class="fw-bold">{{ $loop->iteration }}</td>
          <td><span class="fw-normal text-success">{{ $user->id }}</span></td>
          <td><span class="fw-normal"><a href="{{ route('users.show', $user->id) }}">{{ $user->first_name . ' ' . $user->last_name }} </a></span></td>
          <td><span class="fw-normal text-success">{{ $user->job->title ?? 'Null' }}</span></td>
          <td><span class="fw-normal text-info">{{ $user->job->department->name ?? 'Null' }}</span></td>
          <td><span class="fw-normal">{!! $user->attendance ? "<span class='badge bg-primary'>" . $user->attendance->status . '</span>' : "<span class='text-danger'>Null</span>" !!}</span></td>
          <td class="inline-flex">
            <button style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-warning" wire:click='attendance({{ $user->id }},0)'>AtWork</button>
            <button style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-danger" wire:click='attendance({{ $user->id }},1)'>Absent</button>
            <button style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-gray-200" wire:click='attendance({{ $user->id }},2)'>Late</button>
          </td>
        </tr>
      @empty
      @endforelse



    </tbody>
  </table>
  <div class="card-footer mt-3 border-0 px-3">
    {{ $users->links() }}
  </div>
</div>
