<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>




<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Reporting Module</title>
        <link href="CSS/style.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/sdadatabase"
         user = "root"  password = ""/>
         <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from event;
         </sql:query>
                  <sql:query dataSource = "${snapshot}" var = "res">
            SELECT COUNT(eventName) AS Cabaran FROM logactivity
            WHERE eventName='Cabaran Mahasiswa Norma Baharu';
</sql:query>
                 
                  <sql:query dataSource = "${snapshot}" var = "resa">
            SELECT COUNT(eventName) AS Virtual FROM logactivity
            WHERE eventName='Virtual Streaming Workshop';
</sql:query>
                 
                  <sql:query dataSource = "${snapshot}" var = "resu">
            SELECT COUNT(eventName) AS COMPFAIR21 FROM logactivity
            WHERE eventName='COMPFAIR21';
</sql:query>
            
            
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Report</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle"><i class="fas fa-bars"></i></button>
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            </form>

            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="logActivity.jsp">View Activity Log</a>
                        <a class="dropdown-item" href="insertLogActivity.html">Edit Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                           
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                             <a class="nav-link" href="sponsor.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Sponsor
                            </a>
                            
                            <a class="nav-link" href="event.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Event
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        User
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                
                    <div class="container-fluid">
                    <div class="utm"><img src="pic/utm.png" width="600" height="200"> </div>
                    
                        <h1 class="mt-4">Sekolah Senibina Skudai</h1>
                        <ol class="breadcrumb mb-4">
                            <li>Event </li>
                        </ol>
                                       
                        <div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
                                                            
								<tr class="row100 head">
									<th class="cell100 column1">Name</th>
									<th class="cell100 column2">Date </th>
									<th class="cell100 column3">Time </th>
									<th class="cell100 column4">Venue</th>
									<th class="cell100 column5">Fee</th>
                                                                        <th class="cell100 column7">Link</th>
								</tr>
							</thead>
						</table>
                                            
                                            
					</div>

					<div class="table100-body js-pscroll">
                                                                                              
                                                                                    
                                                                                
						<table>
							<tbody>
								
                                                                                <c:forEach var = "row" items = "${result.rows}">
                                                                               <tr class="row100 body">
                                                                               <td class="cell100 column1"><c:out value="${row.eventName}" /></td>
                                                                                <td class="cell100 column2"><c:out value="${row.date}" /></td>
                                                                                <td class="cell100 column3"><c:out value="${row.time}" /></td>
                                                                                <td class="cell100 column4"><c:out value="${row.venue}" /></td>
                                                                                <td class="cell100 column5"><c:out value="${row.fee}" /></td>
                                                                                <td class="cell100 column5"><input type="button" onclick="location.href='https://google.com';" value="Here" /></td>
                                                                                </tr>
                                                                                </c:forEach>
									
								

							</tbody>
						</table>
					</div>
				</div>
                            <br>
                            <br>
                            <br>
                        			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
                                                            
								<tr class="row100 head">
									<th class="cell100 column1">Name</th>
									<th class="cell100 column2">Number of Participant </th>
								</tr>
							</thead>
						</table>
                                            
                                            
					</div>

					<div class="table100-body js-pscroll">
                                                                                              
                                                                                    
                                                                                
						<table>
							<tbody>
								
                                                                                
                                                                               <tr class="row100 body">
                                                                                   
                                                                               <td class="cell100 column1"><c:out value="Cabaran Mahasiswa Norma Baharu" /></td>
                                                                               <c:forEach var = "te" items = "${res.rows}">
                                                                                <td class="cell100 column2"><c:out value="${te.Cabaran}" /></td>
                                                                                 </c:forEach>
                                                                              
                                                                                </tr>
                                                                                <tr class="row100 body">
                                                                                   
                                                                               <td class="cell100 column1"><c:out value="Virtual Streaming Workshop" /></td>
                                                                               <c:forEach var = "ta" items = "${resu.rows}">
                                                                                <td class="cell100 column2"><c:out value="${ta.Virtual}" /></td>
                                                                                 </c:forEach>
                                                                              
                                                                                </tr>
                                                                                 <tr class="row100 body">
                                                                                   
                                                                               <td class="cell100 column1"><c:out value="COMPFAIR21" /></td>
                                                                               <c:forEach var = "tu" items = "${resa.rows}">
                                                                                <td class="cell100 column2"><c:out value="${tu.COMPFAIR21}" /></td>
                                                                                 </c:forEach>
                                                                              
                                                                                </tr>
                                                                                
									
								

							</tbody>
						</table>
					</div>
				</div>
                        
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; All right and reserve belong to Team 1</div>
                            <div>
                                <a href="https://www.utm.my/privacy-policy/">Privacy Policy</a>
                                &middot;
                                <a href="https://people.utm.my/terms-conditions/">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>