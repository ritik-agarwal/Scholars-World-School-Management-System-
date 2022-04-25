<%-- 
    Document   : studentdashboard
    Created on : Jun 11, 2021, 11:44:13 AM
    Author     : ritik
--%>

<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/sb-admin-2.min.css">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        <title>Welcome ${name} - Assignment</title>
    </head>
    <body id="page-top">
         <%
           response.setHeader("cache-control","no-cache,no-store,must-revalidate");//1.1
           response.setHeader("Pragma","no-cache");//1.0
           response.setHeader("Expires","0");//Proxies
           session.getAttribute("clas");
           if(session.getAttribute("mail")==null){
               response.sendRedirect("../login.jsp");
           }
        %>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-text mx-3">Scholars World</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item ">
                <a class="nav-link" href="../student.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
 <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Assignment</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">View & Upload</h6>
                        <a class="collapse-item active" href="todoAssignment.jsp">Todo Assignment</a>
                        <a class="collapse-item " href="uploadAssignment.jsp">Upload</a>
                        <!--<a class="collapse-item" href="cards.html">View Assignment</a>-->
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Study Material</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Lectures & Notes :-</h6>
                       
                        <a class="collapse-item" href="notes.jsp">Notes</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
           

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="test.jsp">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Class Test</span></a>
            </li>

            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <div class="d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 ">
                        <div class="sidebar-brand-text mx-3">Welcome ${name}</div>
                    </div>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <div class="topbar-divider d-none d-sm-block"></div>
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><i class="fas fa-sign-out-alt"></i></span>
  <!--Image lgani h -->            
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                             
                                
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
  <div class="container-fluid">
       <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Todo Assignment</h1>   
                </div>
  </div>
                <!-- End of Topbar -->
                <div class="container">
                    
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                          <thead>
                              <tr>
                                <th scope="col">Subject</th>
                                <th scope="col">Total Marks</th>
                                <th scope="col">Last Date</th>
                                <th scope="col">File Name</th>
                                <th scope="col">Uploaded Date & Time</th>
                                <th scope="col">Click below to Download</th>
                                
                              </tr>
                            </thead>
                            <%
                              try{
                                  DBCon db = new DBCon();
                                  db.stmt=db.con.createStatement();
                                  db.rst=db.stmt.executeQuery("select subject,tm,date,added_date,filename from data where class='"+session.getAttribute("clas")+"' ");
                                  if(db.rst.next()){do{%>
                                    
                                      <tbody>
                                        <tr>
                                          <td scope="row"><%= db.rst.getString(1)%></td>
                                          <td><%= db.rst.getString(2)%></td>
                                          <td><%=db.rst.getDate(3)%></td>
                                          <td><%=db.rst.getString(5)%></td>
                                          <td><%=db.rst.getTimestamp(4)%></td>
                                          <td><a href="../downloadassignment?fileName=<%=db.rst.getString(5)%>">Download</a></td>
                                        
                                        </tr>
                                      </tbody>
                                  
                                <% }while(db.rst.next()); }
                              }
                              catch(Exception e){
                                  e.printStackTrace();
                              }
                            %>
                        </table>
                    </div>
                </div>
                

    <!-- Bootstrap core JavaScript-->
    <script src="../dashboard_js/jquery.min.js"></script>
    <script src="../dashboard_js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../dashboard_js/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../dashboard_js/sb-admin-2.min.js"></script>

    

</body>
</html>
