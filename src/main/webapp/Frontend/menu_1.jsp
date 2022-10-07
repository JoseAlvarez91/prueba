<!DOCTYPE html>
 
<html lang="en">
    <head>
        
        <%
            HttpSession sesionOk = request.getSession();
            String nombre_apellido = (String) sesionOk.getAttribute("nombre_apellido");
             
        %>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> ZAPATERIA</title>
        <!-- Google Font: Source Sans Pr
        <link href="plugins/css_net.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <script src="https://kit.fontawesome.com/585f6e374d.js" crossorigin="anonymous"></script>
        <!-- Ionicons -->
        <link href="../plugins/ionicons.min.css" rel="stylesheet" type="text/css"/>
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="../stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <!-- iCheck -->
        <link rel="../stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- JQVMap -->
        <link rel="../stylesheet" href="plugins/jqvmap/jqvmap.min.css">
        <!-- Theme style -->
        <link href="../dist/css/adminlte.css" rel="stylesheet" type="text/css"/>
         <!-- overlayScrollbars -->
        <link rel="../stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <!-- Daterange picker -->
        <link rel="../stylesheet" href="plugins/daterangepicker/daterangepicker.css">
        <link href="../plugins/selectPicker/bootstrap-select.css" rel="stylesheet" type="text/css"/>
        <link rel="../stylesheet" href="plugins/summernote/summernote-bs4.min.css">
        <link href="../plugins/lib/themes/default.css" rel="stylesheet" id="theme_base" />
        <link href="../plugins/lib/themes/default.date.css" rel="stylesheet" id="theme_date" />
        <link href="../plugins/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
         <link rel="../stylesheet" type="text/css" href="plugins/autoFill.bootstrap4.min.css"/>
        <link rel="s../tylesheet" type="text/css" href="plugins/buttons.bootstrap4.css"/>
        <link rel="s../tylesheet" type="text/css" href="plugins/colReorder.bootstrap4.css"/>
        <link href="../plugins/dataTables.dateTime.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/fixedColumns.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/fixedHeader.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/keyTable.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/responsive.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/rowGroup.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/rowReorder.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link rel="s../tylesheet" type="text/css" href="plugins/scroller.bootstrap4.css"/>
        <link rel="s../tylesheet" type="text/css" href="plugins/searchBuilder.bootstrap4.css"/>
        <link rel="s../tylesheet" type="text/css" href="plugins/searchPanes.bootstrap4.css"/>
        <link rel="s../tylesheet" type="text/css" href="plugins/select.bootstrap4.css"/>
        <link rel="s../tylesheet" type="text/css" href="plugins/stateRestore.bootstrap4.css"/>
        <link href="../css/estilos_pedidos.css" rel="stylesheet" type="text/css"/>
        <link href="../css/colores.css" rel="stylesheet" type="text/css"/><!-- css para colocar el color azul a la celda editable al momento de ingresar en el -->
        <link href="../plugins/jquery.loadingModal.css" rel="stylesheet" type="text/css"/>
        <link href="../css/ppr/aldo.css" rel="stylesheet" type="text/css"/>
        <link href="../css/ppr/claudio.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/toastr/toastr.min.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/bootstrap4-toggle.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/DateTimePicker.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/jquery.loadingModal.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="../plugins/jquery-ui.multidatespicker.css" rel="stylesheet" type="text/css"/>
        <link href="../css/parpadeo.css" rel="stylesheet" type="text/css"/>
        <link rel="../stylesheet" href="plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
 
    </head>
 
    <body class="text-sm layout-footer-fixed layout-navbar-fixed sidebar-mini layout-fixed" id="body"   >


        <div class="wrapper">

            <!-- Preloader 
            <div class="preloader flex-column justify-content-center align-items-center">
                <img class="animation__shake" src="img/yemita7.png" alt="AdminLTELogo" height="60" width="60">
            </div>-->

            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light ">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                   
                    
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>

                    <li class="nav-item d-none d-sm-inline-block">
                        <div class="pull-left main-header-temp-info" id="div_temp">

                        </div>
                    </li>


                </ul>
                <ul class="navbar-nav ml-auto">
                   
                    <nav class="mt-2">
<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

<li class="nav-item menu-open">
<a href="#" class="nav-link active">
<i class="nav-icon fas fa-tachometer-alt"></i>
<p>
Dashboard
<i class="right fas fa-angle-left"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="./index.html" class="nav-link active">
<i class="far fa-circle nav-icon"></i>
<p>Dashboard v1</p>
</a>
</li>
<li class="nav-item">
<a href="./index2.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Dashboard v2</p>
</a>
</li>
<li class="nav-item">
<a href="./index3.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Dashboard v3</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="pages/widgets.html" class="nav-link">
<i class="nav-icon fas fa-th"></i>
<p>
Widgets
<span class="right badge badge-danger">New</span>
</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-copy"></i>
<p>
Layout Options
<i class="fas fa-angle-left right"></i>
<span class="badge badge-info right">6</span>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/layout/top-nav.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Top Navigation</p>
</a>
</li>
<li class="nav-item">
<a href="pages/layout/top-nav-sidebar.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Top Navigation + Sidebar</p>
</a>
</li>
<li class="nav-item">
<a href="pages/layout/boxed.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Boxed</p>
</a>
</li>
<li class="nav-item">
<a href="pages/layout/fixed-sidebar.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Fixed Sidebar</p>
</a>
</li>
<li class="nav-item">
<a href="pages/layout/fixed-sidebar-custom.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Fixed Sidebar <small>+ Custom Area</small></p>
</a>
</li>
<li class="nav-item">
<a href="pages/layout/fixed-topnav.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Fixed Navbar</p>
</a>
</li>
 <li class="nav-item">
<a href="pages/layout/fixed-footer.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Fixed Footer</p>
</a>
</li>
<li class="nav-item">
<a href="pages/layout/collapsed-sidebar.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Collapsed Sidebar</p>
</a>
</li>
</ul>
</li>
<li class="nav-item menu-is-opening menu-open">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-chart-pie"></i>
<p>
Charts
<i class="right fas fa-angle-left"></i>
</p>
</a>
<ul class="nav nav-treeview" style="display: block;">
<li class="nav-item">
<a href="pages/charts/chartjs.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>ChartJS</p>
</a>
</li>
<li class="nav-item">
<a href="pages/charts/flot.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Flot</p>
</a>
</li>
<li class="nav-item">
<a href="pages/charts/inline.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Inline</p>
</a>
</li>
<li class="nav-item">
<a href="pages/charts/uplot.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>uPlot</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-tree"></i>
<p>
UI Elements
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/UI/general.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>General</p>
</a>
</li>
<li class="nav-item">
<a href="pages/UI/icons.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Icons</p>
</a>
</li>
<li class="nav-item">
<a href="pages/UI/buttons.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Buttons</p>
</a>
</li>
<li class="nav-item">
<a href="pages/UI/sliders.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Sliders</p>
</a>
</li>
<li class="nav-item">
<a href="pages/UI/modals.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Modals &amp; Alerts</p>
</a>
</li>
<li class="nav-item">
<a href="pages/UI/navbar.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Navbar &amp; Tabs</p>
</a>
</li>
<li class="nav-item">
<a href="pages/UI/timeline.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Timeline</p>
</a>
</li>
<li class="nav-item">
<a href="pages/UI/ribbons.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Ribbons</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
 <i class="nav-icon fas fa-edit"></i>
<p>
Forms
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/forms/general.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>General Elements</p>
</a>
</li>
<li class="nav-item">
<a href="pages/forms/advanced.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Advanced Elements</p>
</a>
</li>
<li class="nav-item">
<a href="pages/forms/editors.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Editors</p>
</a>
</li>
<li class="nav-item">
<a href="pages/forms/validation.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Validation</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-table"></i>
<p>
Tables
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/tables/simple.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Simple Tables</p>
</a>
</li>
<li class="nav-item">
<a href="pages/tables/data.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>DataTables</p>
</a>
</li>
<li class="nav-item">
<a href="pages/tables/jsgrid.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>jsGrid</p>
</a>
</li>
</ul>
</li>
<li class="nav-header">EXAMPLES</li>
<li class="nav-item">
<a href="pages/calendar.html" class="nav-link">
<i class="nav-icon far fa-calendar-alt"></i>
<p>
Calendar
<span class="badge badge-info right">2</span>
</p>
</a>
</li>
<li class="nav-item">
<a href="pages/gallery.html" class="nav-link">
<i class="nav-icon far fa-image"></i>
<p>
Gallery
</p>
</a>
</li>
<li class="nav-item">
<a href="pages/kanban.html" class="nav-link">
<i class="nav-icon fas fa-columns"></i>
<p>
Kanban Board
</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon far fa-envelope"></i>
<p>
Mailbox
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/mailbox/mailbox.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Inbox</p>
</a>
</li>
<li class="nav-item">
<a href="pages/mailbox/compose.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Compose</p>
</a>
</li>
<li class="nav-item">
<a href="pages/mailbox/read-mail.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Read</p>
 </a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-book"></i>
<p>
Pages
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/examples/invoice.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Invoice</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/profile.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Profile</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/e-commerce.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>E-commerce</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/projects.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Projects</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/project-add.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Project Add</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/project-edit.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Project Edit</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/project-detail.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Project Detail</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/contacts.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Contacts</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/faq.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>FAQ</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/contact-us.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Contact us</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon far fa-plus-square"></i>
<p>
Extras
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>
Login &amp; Register v1
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/examples/login.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Login v1</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/register.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Register v1</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/forgot-password.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Forgot Password v1</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/recover-password.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Recover Password v1</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>
Login &amp; Register v2
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/examples/login-v2.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Login v2</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/register-v2.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Register v2</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/forgot-password-v2.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Forgot Password v2</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/recover-password-v2.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Recover Password v2</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="pages/examples/lockscreen.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Lockscreen</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/legacy-user-menu.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Legacy User Menu</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/language-menu.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Language Menu</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/404.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Error 404</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/500.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Error 500</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/pace.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Pace</p>
</a>
</li>
<li class="nav-item">
<a href="pages/examples/blank.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Blank Page</p>
</a>
</li>
<li class="nav-item">
<a href="starter.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Starter Page</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-search"></i>
<p>
Search
<i class="fas fa-angle-left right"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="pages/search/simple.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Simple Search</p>
</a>
</li>
<li class="nav-item">
<a href="pages/search/enhanced.html" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Enhanced</p>
</a>
</li>
</ul>
</li>
<li class="nav-header">MISCELLANEOUS</li>
<li class="nav-item">
<a href="iframe.html" class="nav-link">
<i class="nav-icon fas fa-ellipsis-h"></i>
<p>Tabbed IFrame Plugin</p>
</a>
</li>
<li class="nav-item">
<a href="https://adminlte.io/docs/3.1/" class="nav-link">
<i class="nav-icon fas fa-file"></i>
<p>Documentation</p>
</a>
</li>
<li class="nav-header">MULTI LEVEL EXAMPLE</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="fas fa-circle nav-icon"></i>
<p>Level 1</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon fas fa-circle"></i>
<p>
Level 1
<i class="right fas fa-angle-left"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Level 2</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>
Level 2
<i class="right fas fa-angle-left"></i>
</p>
</a>
<ul class="nav nav-treeview">
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-dot-circle nav-icon"></i>
<p>Level 3</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-dot-circle nav-icon"></i>
<p>Level 3</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-dot-circle nav-icon"></i>
<p>Level 3</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="far fa-circle nav-icon"></i>
<p>Level 2</p>
</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="fas fa-circle nav-icon"></i>
<p>Level 1</p>
</a>
</li>
<li class="nav-header">LABELS</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon far fa-circle text-danger"></i>
<p class="text">Important</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon far fa-circle text-warning"></i>
<p>Warning</p>
</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link">
<i class="nav-icon far fa-circle text-info"></i>
<p>Informational</p>
</a>
</li>
</ul>
</nav>
                    
           


                    <li class="nav-item">
                        <a class="nav-link"  >
                          
                        </a>
                    </li>
                    <li class="nav-item dropdown ">
                        <!-- ESTO VA EN LA TABLA PADRE MODULO -->

                        <!--------------------------------------------------->   
                       

                    </li>

                    <li class="nav-item dropdown show">
                        <a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false">
                            <i class="far fa-comments"></i>
                            <span class="badge badge-danger navbar-badge" id="cantidad_mensaje">0</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="left: inherit; right: 0px;">
                            <a href="#" class="dropdown-item" id="mensaje_div">


                            </a>
                            <div class="dropdown-divider"></div>



                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#" role="button">
                            <i class="fas fa-th-large"></i>
                        </a>
                    </li> 

                </ul>
            </nav>
            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar elevation-4 sidebar-light-navy ">
                <!-- Brand Logo -->

                <a href="javascript:home();" class="brand-link">
                    <img src="../dist/img/img/yemita7.pimg/zapatilla-de-deporte" alt="IMA" class="brand-image img-circle elevation-2">
                    <span class="brand-text">Zapato</span>
                </a>
                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">


                        </div>

                        <div class="info">
           
                        </div>
                    </div>

                    <div class="form-inline " id="div_buscador">



                    </div>



                    <nav class="mt-2">
                        <ul id="ul_menu" class="nav nav-pills nav-sidebar flex-column nav-compact nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- AQUI VA EL MENU GENERADO -->

                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
            </aside> 

            <div class="content-wrapper" style="min-height: 845px;">
                <section class="content">
                    <div class="container-fluid">

                        <div    id="contenido_row" class="row">

                        </div>
                        <div id="contenedor_principal" class="global">

                        </div>

                                    
    
    
 

                        <div class="modal fade bd-example-modal-xl" id="modal_reporte_varios" tabindex="-1" role="dialog"   aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">

                            <iframe width="700" height="900" frameborder="0" scrolling="no"
                                    src="https://grupomaehara-my.sharepoint.com/personal/hvelazquez_yemita_com_py/_layouts/15/Doc.aspx?sourcedoc
                                    ={4ea7d63d-aa51-430a-ae79-139c8406e042}&action=embedview&wdAllowInteractivity=False&Item=Tabla2&wdHideGridlines=True&wdDownloadButton
                                    =True&wdInConfigurator=True"></iframe>

                        </div>


                        <div class="modal fade bd-example-modal-xx" id="modal_reporte_varios" tabindex="-1" role="dialog"   aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                            <button class="close" type="button"  class="position-relative p-3 bg-navy"  data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                            <div class="modal-dialog modal-xl" role="document">
                                <div class="col-lg-20 ">
                                    <div class="position-relative p-3 bg-navy"  >
                                        <div class="ribbon-wrapper ribbon-xl">
                                            <div class="ribbon bg-warning"  id="ribbon_version">

                                            </div>
                                        </div>
                                        <center><h1>DESCRIPCI&Oacute;N DEL SISTEMA ACTUALIZADO</h1></center>
                                    </div>
                                </div>
                                <div class="modal-content">



                                    <h5><div class="modal-body bg-navy" id="ribbon_titulo"></h5> 
                                    <div class="modal-body" id="ribbon_descripcion"></div> 





                                    <div class="modal-footer">

                                    </div>
                                </div>
                            </div>
                        </div>       






                    </div>

                </section>

                <footer class="main-footer" >
                    <strong>Copyright © 2022 - Grupo Maehara</strong>
                    Todos los derechos reservados.
                    <div class="float-right d-none d-sm-inline-block"  >
                         <a href="img/Documento Version Yemsys.xlsx">Documento Versión</a>
                     </div>
                </footer>

                <!-- Control Sidebar -->
                <aside class="control-sidebar control-sidebar-light" style="top: 46.5938px;">
                    <!-- Control sidebar content goes here -->
                    <div class="row">
                        <div class="pt-5 pl-2 pr-2 col-12">

                        </div>
                        <div class="pt-5 pl-2 pr-2 col-12">
                            <div class="form-group">
                                <button class="mx-auto btn bg-navy" style="width:100%;" onclick="modalnuevocambiopassword_ppr()"><i class="fa fa-fw fa-key"></i> Cambio de Contraseña</button>
                            </div>
                        </div>
                        <div class="pl-2 pr-2 col-12">
                            <div class="form-group">
                                <button class="mx-auto btn bg-dark" style="width:100%;" onclick="document.location = 'cruds/control_cerrar_sesion.jsp';"><i class="fa fa-fw fa-power-off"></i> Salir</button>
                            </div>
                        </div>


                    </div>
                </aside>
                <div class="modal fade " id="modal_nuevocambio_pass2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="form-control bg-black" >
                                <h5 class="modal-title" id="exampleModalLabel">CAMBIO USUARIO</h5>
                                <button class="close" type="button"  class="position-relative p-3 bg-navy"  data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>

                            <form  id="form_nuevo_password" action="POST"  class="form-control bg-navy" style=" height: 350px"
                                   oninput='passnueva2.setCustomValidity(passnueva2.value != passnueva.value ? "CONTRASEÑAS NO COINCIDEN" : "")'>
                                <div class="modal-body">  

                               
                                    <br>
                                   
                                    <br>
                                    <a>INGRESE CONTRASEÑA ACTUAL</a>
                                    <br>

                                    <input  style="width: 100%" type="password" class="form-control text-left" required  id="passactual" name="passactual"  >
                                    <br>
                                    <a>INGRESE NUEVA CONTRASEÑA</a>
                                    <br>
                                    <input minlength="4" style="width: 100%" type="password" class="form-control text-left" required  id="passnueva" name="passnueva"  >
                                    <a>INGRESAR NUEVA CONTRASEÑA</a>
                                    <br>
                                    <input minlength="4" style="width: 100%" type="password" class="form-control text-left"  required id="passnueva2" name="passnueva2"  >
                                </div>


                                <div class="modal-footer align-right"  >
                                    <input class="btn bg-white" type="button" onclick="nuevocambio_pass_usuario_ppr()"    value="REGISTRAR" >
                                    <input class="btn bg-white" type="button" data-dismiss="modal"    value="CANCELAR" >
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.control-sidebar -->
            </div>
            <!-- ./wrapper -->

            <!-- jQuery -->
            <script src="../plugins/jquery/jquery.min.js"></script>
            <!-- jQuery UI 1.11.4 -->
            <script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
            <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
            <!-- Bootstrap 4 -->
            <script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="../plugins/sparklines/sparkline.js"></script>
            <script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
            <script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
            <!-- Tempusdo../minus Bootstrap 4 -->
            <script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
            <!-- Summerno../te -->
            <script src="../plugins/summernote/summernote-bs4.min.js"></script>
            <!-- overlayS../crollbars -->
            <script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
            <!-- AdminLTE../ App -->
            <script src="../dist/js/adminlte.js"></script>
            <script src="../plugins/numeral.min.js" type="text/javascript"></script>
            <script src="../plugins/chart.min.js" type="text/javascript"></script>
            <script src="../plugins/selectPicker/bootstrap-select.min.js" type="text/javascript"></script>
            <script src="../plugins/jquery.loadingModal.js" type="text/javascript"></script>
            <script src="../plugins/sweetalert2/sweetalert2.all.min.js" type="text/javascript"></script>
            <script src="../plugins/lib/picker.js"></script>
            <script src="../plugins/lib/picker.date.js"></script>
            <script src="../plugins/lib/picker.time.js"></script>
            <script src="../plugins/lib/legacy.js"></script>
            <script src="../plugins/lib/main.js"></script>
            <script src="../plugins/lib/rainbow.js"></script>
            <script src="../plugins/toastr/toastr.min.js" type="text/javascript"></script>
            <script src="../plugins/bootstrap4-toggle.js" type="text/javascript"></script>
            <script src="../plugins/DateTimePicker.js" type="text/javascript"></script>
            <script src="../plugins/jquery-ui.multidatespicker.js" type="text/javascript"></script>
            <script src="../plugins/canvasjs.min.js" type="text/javascript"></script>
            <!-- LIBRERIA DATATABLE CSS--> 
            <script src="../plugins/jszip.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="plugins/pdfmake.min.js"></script>
            <script type="text/javascript" src="plugins/vfs_fonts.js"></script>
            <script src="plugins/jquery.dataTables.min.js" type="text/javascript"></script> 
            <script src="plugins/dataTables.bootstrap4.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="plugins/dataTables.autoFill.min.js"></script>
            <script type="text/javascript" src="plugins/autoFill.bootstrap4.min.js"></script>
            <script type="text/javascript" src="plugins/dataTables.buttons.min.js"></script>
            <script type="text/javascript" src="plugins/buttons.bootstrap4.min.js"></script>
            <script type="text/javascript" src="plugins/buttons.colVis.min.js"></script>
            <script type="text/javascript" src="plugins/buttons.html5.min.js"></script>
            <script type="text/javascript" src="plugins/buttons.print.min.js"></script>
            <script src="../plugins/dataTables.checkboxes.min.js" type="text/javascript"></script>
            <script src="../plugins/sum().js" type="text/javascript"></script>
            <script src="../plugins/jquery.inputmask.bundle.js" type="text/javascript"></script>
            <script src="../js/principal.js?v=2.8" type="text/javascript"></script>
            <script src="../js/embarque.js?v=2.8" type="text/javascript"></script>
            <script src="../js/embarque_funciones.js?v=2.8" type="text/javascript"></script>
            <script src="../js/logistica.js?v=2.8" type="text/javascript"></script>
            <script src="../js/logistica_funciones.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ppr/control_claudio.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ptc/ptc_claudio.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ppr/llamadas_aldo.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ppr/llamadas_claudio.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ptc/enviar_datos.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ptc/envio_retenido_liberado.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ptc/traer_clases.js?v=2.8" type="text/javascript"></script>
            <script src="../js/ptc/transferencia.js?v=2.8" type="text/javascript"></script>
            <script src="../js/mis/formulas_mis.js?v=2.8" type="text/javascript"></script>
            <script src="../js/mis/traer_clases_mis.js?v=2.8" type="text/javascript"></script>
            <script src="../js/mis/transferencia_mis.js?v=2.8" type="text/javascript"></script>
            <script src="../js/hp/hp_datos.js" type="text/javascript"></script>
            <script src="../js/balanceado/balanceado_datos.js" type="text/javascript"></script>
            <script src="../js/balanceado/balanceado_datos_editar.js" type="text/javascript"></script>
    </body>
</html>
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
