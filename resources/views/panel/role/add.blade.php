@extends('panel.layouts.app')

@section('content')
 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">New Role</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Role Add</li>
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
              <h3 class="card-title">Please Insert New Role</h3>
  
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <form class="" method="post" action="{{ url('panel/roles/add') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Role</label>
                                <input type="text" name="name"  required class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                      <div class="col-md-12">
                          <div class="form-group">
                              <label class="mb-3"><u>Permission</u></label>
                              @foreach ($getPermission as $value)
                                <hr>
                                <div class="row mb-3">
                                 
                                    <div class="col-md-4">
                                      {{ $value['name'] }}
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            @foreach ($value['group'] as $grp)
                                              <div class="col-md-8">
                                                <label><input type="checkbox" value="{{ $grp['id'] }}" name="permission_id[]"> {{ $grp['name'] }} </label>
                                              </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                                 
                              @endforeach
                          </div>
                      </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-sm-12 text-right">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
             
            </div>
            <!-- /.card-body -->
           
          </div>
          
    </div>
  </section>

@endsection