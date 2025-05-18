@extends('panel.layouts.app')


@section('content')
 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">User</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">User</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <section class="content">
    <div class="container-fluid">
        @include('panel.__message')
        <div class="row">
            <div class="col-12">
              <div class="card">
              
                <div class="card-header">
                  <div class="row">
                     <div class="col-md-6">
                        <h3 class="card-title">User List</h3>
                     </div>
                     <div class="col-md-6 text-right">
                        <a href="{{ url('panel/user/add') }}" class="btn btn-primary">Add</a>
                     </div>
                  </div>
                  
                 
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                    <tr>
                      <th># ID</th>
                      <th>Name User</th>
                      <th>Email</th>
                      <th>Role</th>
                      <th>Action</th>
                   
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($getRecord as $value)
                        <tr>
                            <td scope="role">{{ $value->id }}</td>
                            <td>{{ $value->name }}</td>
                            <td>{{ $value->email }}</td>
                            <td>{{ $value->role->name }}</td>
                            <td>
                                <a href="{{ url('panel/user/edit/'.$value->id) }}" class="btn btn-success btn-sm">Edit</a>
                                <a href="{{ url('panel/user/delete/'.$value->id) }}" class="btn btn-warning btn-sm">Delete</a>
                            </td>
                           
                        </tr>
                    @endforeach
                  
                    </tbody>
                   
                  </table>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
    
             
              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          
    </div>
  </section>

@endsection

@section('style')
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
@endsection
@section('script')
<!-- DataTables -->
<script src="{{ asset('assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true,
        "autoWidth": false,
      });
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });
    });
  </script>
@endsection