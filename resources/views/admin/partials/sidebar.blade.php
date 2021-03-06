<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <ul class="sidebar-menu">
            <li class="">
                <a class="sidebar-toggle" data-toggle="offcanvas" role="button" status="right">
                    <i class="fa fa-chevron-right"></i>
                </a>
            </li>
        </ul>
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ Admin::user()->avatar }}" class="img-radius-10" alt="User Image">
            </div>
            <div class="pull-left info">
                <a href="#"><i class="fa fa-circle text-success"></i> {{ Admin::user()->name }}</a> <br> <br>
                <a href="#"><i class="fa fa-circle text-success"></i> {{ Admin::user()->username }}</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">

            @each('admin::partials.menu', Admin::menu(), 'item')

        </ul>

        <ul class="sidebar-menu" style="background: #2c3b41;">
            <li class="">
                <a href="{{route('admin.setting')}}">
                    <i class="fa fa-sun-o"></i>
                    <span>Cài đặt cá nhân</span>
               </a>
            </li>
            <li>
                <a href="{{ route('admin.logout') }}" id="btn-logout">
                    <i class="fa fa-sign-out"></i>
                    <span>Đăng xuất</span>
               </a>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>