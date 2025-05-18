@extends('panel.layouts.app')

@section('content')
 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Edit User</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Role User</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <section class="content">
    <div class="container-fluid">
        <div class="card card-default">
            <div class="card-header">
              {{-- <h3 class="card-title">Please Edit New User</h3> --}}
  
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <form class="" method="post" action="{{ url('panel/user/edit') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>User</label>
                                <input type="hidden" name="id" value="{{ $getRecord->id }}" required class="form-control">

                                <input type="text" name="name" value="{{ $getRecord->name }}"  required class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                      <div class="col-md-12">
                          <div class="form-group">
                              <label>Email</label>
                              <input type="email" name="email" value="{{ $getRecord->email }}" required class="form-control">
                              {{-- <div class="text-danger">{{ $errors->first('email') }}</div> --}}
                          </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                          <div class="form-group">
                              <label>Password</label>
                              <input type="text" name="password"  class="form-control">
                              (Do you want to change please add. Otherwise leave)
                          </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                          <div class="form-group">
                              <label>Role</label>
                              <select class="form-control" name="role_id">
                                  <option value="">--Pilih-</option>
                                  @foreach ($getRole as $role)
                                       <option {{ ($getRecord->role_id == $role->id) ? "selected" : "" }} value="{{ $role->id }}">{{ $role->name }}</option>
                                  @endforeach
                              </select>
                          </div>
                      </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-sm-12 text-right">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </div>
                </form>
             
            </div>
            <!-- /.card-body -->
           
          </div>
          
    </div>
  </section>

@endsection