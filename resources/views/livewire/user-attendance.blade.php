<div class="card card-body table-wrapper table-responsive border-0 shadow">
  <h2 class="text-muted mb-3 text-center">{{ $user->full_name }}</h2>
  <table class="table-hover table">
    <thead>
      <tr>
        <th class="border-gray-200">#</th>
        <th class="border-gray-200">Day</th>
        <th class="border-gray-200">Date</th>
        <th class="border-gray-200">Status</th>
        <th class="border-gray-200">Action</th>
      </tr>
    </thead>
    <tbody>

      @forelse ($user->attendances as $attendance)
        <tr>
          <td class="fw-bold">{{ $attendance->id }}</td>
          <td><span class="fw-normal">{{ $attendance->created_at->format('l') }}</span></td>
          <td><span class="fw-normal">{{ $attendance->created_at->format('F d, Y') }}</span>
          </td>
          <td><span class="fw-normal"><span class='badge bg-info'> {{ $attendance->status }}</span></td>

          @if (!auth()->user()->is_admin)
            <td><button class="btn me-3 btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#attendance_{{ $attendance->id }}">Complain</button></td>
          @else
            <td class="inline-flex">
              <button style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-warning" wire:click='attendance({{ $user->id }},0,{{ $attendance->id  }})'>At Work</button>
              <button style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-danger" wire:click='attendance({{ $user->id }},1,{{ $attendance->id  }})'>Absent</button>
              <button style="font-size:0.8rem; padding:0.1 rem 0.2" class="btn me-3 btn-sm btn-gray-200" wire:click='attendance({{ $user->id }},2,{{ $attendance->id  }})'>Late</button>
            </td>
          @endif
        </tr>

        <!-- Modal Content -->
        <div class="modal fade" id="attendance_{{ $attendance->id }}" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header border-0">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body px-md-5">
                <h2 class="h4 text-center">Complain In {{ $attendance->created_at->format('F d, Y') }}</h2>
                <p class="mb-4 text-center">Your Attendace Satatus is <span class="text-danger fw-bold">{{ $attendance->status }}</span>
                </p>
                <form action="{{ route('attendances.attendanceComplain', $attendance->id) }}" method="POST">
                  @csrf

                  <input type="hidden" name="current_status" value="{{ $attendance->status }}">


                  <div class="form-group mb-4">
                    <label for="email">Select Status</label>
                    @foreach ($statuses as $status)
                      @if ($status === $attendance->status)
                        @continue
                      @endif
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="{{ $status }}" value="{{ $status }}" required>
                        <label class="form-check-label" for="{{ $status }}">
                          {{ $status }}
                        </label>
                      </div>
                    @endforeach



                  </div>

                  <div class="form-group mb-4">
                    <label for="email">Your Message</label>
                    <textarea class="form-control border-gray-300" name="message" autofocus required cols="30" rows="2"></textarea>
                  </div>

                  <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>

              </div>
            </div>
          </div>
        </div>
        <!-- End of Modal Content -->

      @empty
      @endforelse



    </tbody>
  </table>
</div>
