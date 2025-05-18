<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{ asset('assets/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Permission</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('assets/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      @php        
        $permissionUser = App\Models\PermissionRoleModel::getPermission('user',Auth::user()->role_id);
        $permissionRole = App\Models\PermissionRoleModel::getPermission('role',Auth::user()->role_id);
        $permissionCategory = App\Models\PermissionRoleModel::getPermission('category',Auth::user()->role_id);
        $permissionSubCategory = App\Models\PermissionRoleModel::getPermission('Sub Category',Auth::user()->role_id);
        $permissionProduct = App\Models\PermissionRoleModel::getPermission('Product',Auth::user()->role_id);
        $permissionSetting = App\Models\PermissionRoleModel::getPermission('Setting',Auth::user()->role_id);
      @endphp

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
        
          <li class="nav-item">
            <a href="{{ url('panel/dashboard') }}" class="nav-link @if(Request::segment(2) == 'dashboard') active @endif '' ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
      

          @if(!empty($permissionUser))
          <li class="nav-item">
            <a href="{{ url('panel/user') }}" class="nav-link @if(Request::segment(2) == 'user') active @endif ''">
              <i class="nav-icon fas fa-th"></i>
              <p>
                User
             
              </p>
            </a>
          </li>
          @endif

          @if(!empty($permissionRole))
          <li class="nav-item">
            <a href="{{ url('panel/roles') }}" class="nav-link @if(Request::segment(2) == 'roles') active @endif ''">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Roles 
                <span class="right badge badge-danger"></span>
              </p>
            </a>
          </li>
          @endif

          @if(!empty($permissionCategory))
          <li class="nav-item">
            <a href="{{ url('panel/category') }}" class="nav-link @if(Request::segment(2) == 'category') active @endif ''">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Category
               
              </p>
            </a>
          </li>
          @endif

          @if(!empty($permissionSubCategory))
          <li class="nav-item">
            <a href="{{ url('panel/subcategory') }}" class="nav-link @if(Request::segment(2) == 'subcategory') active @endif ''">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Sub Category
               
              </p>
            </a>
          </li>
          @endif

          @if(!empty($permissionProduct))
          <li class="nav-item">
            <a href="{{ url('panel/product') }}" class="nav-link @if(Request::segment(2) == 'product') active @endif ''">
              <i class="nav-icon fas fa-th"></i>
              <p>
               Product               
              </p>
            </a>
          </li>
          @endif

          @if(!empty($permissionSetting))
          <li class="nav-item">
            <a href="{{ url('panel/setting') }}" class="nav-link @if(Request::segment(2) == 'setting') active @endif ''">
              <i class="nav-icon fas fa-th"></i>
              <p>
               Setting               
              </p>
            </a>
          </li>
          @endif
          
          
          <li class="nav-item">
            <a href="{{ url('logout') }}" class="nav-link">
              <i class="fas fa-circle nav-icon"></i>
              <p>Logout</p>
            </a>
          </li>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
