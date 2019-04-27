<%-- 
    Document   : viewSupply
    Created on : Apr 8, 2019, 2:44:54 AM
    Author     : Ruzaik Mh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Area | Dashboard</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
  </head>
  <body>

      <%

	PreparedStatement pstatement = null;
      
        try {
             Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
      %>
      
    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">RJ Jewellers</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
            <li><a href="users.html"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
            <li><a href="pages.html"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
           
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Welcome</a></li>
            <li><a href="login.html">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <header id="header">
      <div class="container">
        <div class="row">
          <dbootiv class="col-md-10">
            <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Edit Supply Details </h1>
          </div>
        </div>
      </div>
    </header>

    <section id="breadcrumb">
      <div class="col-md-12">
        <ol class="breadcrumb">
          <li class="active">Manage your website</li>
        </ol>
      </div>
    </section>

    <section id="main">
      <div class="container-fluid">
        <div class="row">
         <div class="col-md-2" id="sidebar">
            <div class="list-group">
              <a href="dash.jsp" class="list-group-item active main-color-bg">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard
              </a>
                <a href="#menu1" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Product Management </span>
                </a>
                <div class="collapse" id="menu1">
                    <a href="AddProducts.jsp" class="list-group-item" data-parent="#menu1">Add Product</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">View Product</a>
                    <a href="editProduct.jsp" class="list-group-item" data-parent="#menu1">Edit Product</a>
                  
                </div>
                
                 <a href="#menu15" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Account Management</span>
                 </a>
                 <div class="collapse" id="menu15">
                    <a href="addJournal.jsp" class="list-group-item" data-parent="#menu15">Add Journal</a>
                    <a href="editJournal.jsp" class="list-group-item" data-parent="#menu15">Edit Journal</a>
                  
                </div>
                
                 <a href="#menu10" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Inventory Management </span>
                 </a>
                
                <div class="collapse" id="menu10">
                    <a href="AddStock.jsp" class="list-group-item" data-parent="#menu1">Add Stock</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">View Stock</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Remove Stock</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Update Stock</a>
                </div>
                
                 <a href="#menu11" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Customer Management </span>
                 </a>
                <div class="collapse" id="menu11">
                    <a href="AddCustomer.jsp" class="list-group-item" data-parent="#menu1">Add Customer Details</a>
                    <a href="ViewCustomer.jsp" class="list-group-item" data-parent="#menu11">View Customer Details</a>
                    
                </div>
                
                <!--/collapsible side bar starts-->
                <a href="#menu2" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Supplier Management </span> 
            </a>
            <div class="collapse" id="menu2">
                <a href="#menu2sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Supplier Details <i class="fa fa-caret-down"></i></a>
                <div class="collapse" id="menu2sub1">
                    <a href="viewSupplier.jsp" class="list-group-item" data-parent="#menu2sub1">View Supplier</a>
                    <a href="AddSupplier.jsp" class="list-group-item" data-parent="#menu2sub1">Add Supplier</a>
                    <a href="editSupplier.jsp" class="list-group-item" data-parent="#menu2sub1">Edit Supplier</a>
                    
                </div>
                
                <a href="#menu2sub2" class="list-group-item" data-toggle="collapse" aria-expanded="false">Supply Details <i class="fa fa-caret-down"></i></a>
                <div class="collapse" id="menu2sub2">
                    <a href="viewSupply.jsp" class="list-group-item" data-parent="#menu2sub2">View Supply details</a>
                    <a href="addSupply.jsp" class="list-group-item" data-parent="#menu2sub2">Add Supply details</a>
                    <a href="editSupply.jsp" class="list-group-item" data-parent="#menu2sub2">Edit Supply details</a>
                    
                </div>
            </div>
            
           
            <a href="#menu21" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Employee Management </span>
            </a>
             <div class="collapse" id="menu21">
                    <a href="Employee.jsp" class="list-group-item" data-parent="#menu21">Add Employee</a>
                    <a href="editemployee.jsp" class="list-group-item" data-parent="#menu21">Edit Employee</a>
                    <a href="viewEmployee.jsp" class="list-group-item" data-parent="#menu1">View Employee</a>
                    
                </div>
                
               <a href="#menu22" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Repair Exchange Management </span>  
               </a>
                <div class="collapse" id="menu22">
                    <a href="ARepair.jsp" class="list-group-item" data-parent="#menu22">Add Repair Customer</a>
                    <a href="Addexchange.jsp" class="list-group-item" data-parent="#menu22">Add Exchange Customer</a>
                    <a href="EditeExchange.jsp" class="list-group-item" data-parent="#menu22">Edit Exchange</a>
                    <a href="ViewExchange.jsp" class="list-group-item" data-parent="#menu22">View Exchange</a>
                    <a href="ViewRepair.jsp" class="list-group-item" data-parent="#menu22">View Repair</a>
                    
                </div>
            </div>
            <!--/collapsible side bar end -->
          </div>
          <div class="col-md-10 content">
            <!-- Website Overview -->
           
                <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Edit Supply Details</h3>
              </div>
              <div class="panel-body">
                  <div class="row">
                      <div class="col-md-4">
                          <h4>Supply Details</h4>
                      </div>
                      <div class="col-md-4">
                          <form action = "" method="get">
                              <input type="text" class ="form-control" name="search" placeholder="search">
                          </form>
                      </div>
                      <div class="col-md-4 text-right">
                          <a href="AddSupplier.jsp" class="btn btn-primary">Add Supply</a>
                      </div>
                  </div>
                  
                  <table class="table table-bordered table-hover">
                      <tr class="active">
                          <td>#</td>
                          <td>Invoice No</td>
                          <td>Date</td>
                          <td>Supplier Name</td>
                          <td>Discount</td>
                          <td>Payment Type</td>
                          <td>Category</td>
                          <td>Qty</td>
                          <td>Weight</td>
                          <td>Unit Price</td>
                          <td>Total</td>
                          <td>Description</td>
                          <td>Action</td>
                      </tr>
                      
                      <% 
                        try{
                              conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellry?useSSL=false", "root", "1551214374THEaa");
                              st = conn.createStatement();
                              String query = request.getParameter("search");
                              String sql;
                              if(query != null){
                               sql ="SELECT * FROM jewellry.supply where InvoiceNo like '%"+query+"%'";
                              }
                              else {
                                sql ="SELECT * FROM jewellry.supply";
                              }
                              rs = st.executeQuery(sql);
                              
                              while(rs.next()){
                        
                      %>
                      <tr>
                      <td><%=rs.getString(12) %></td>
                      <td><%=rs.getString(1) %></td>
                      <td><%=rs.getString(2) %></td>
                      <td><%=rs.getString(3) %></td>
                      <td><%=rs.getString(4) %></td>
                      <td><%=rs.getString(5) %></td>
                      <td><%=rs.getString(6) %></td>
                      <td><%=rs.getString(7) %></td>
                      <td><%=rs.getString(8) %></td>
                      <td><%=rs.getString(9) %></td>
                      <td><%=rs.getString(10) %></td>
                      <td><%=rs.getString(11)%></td>
                      <td>
                          <div>
                          <a href='updateSupply.jsp?update=<%=rs.getString(12)%>' class='btn btn-warning  btn-xs'>Update</a>
                          </div>
                          &nbsp;
                          <div>
                          <a href='DeleteSupply?delete=<%=rs.getString(12)%>' class='btn btn-danger btn-xs'>Delete&nbsp;</a>
                          </div>
                      </td>
                  </tr>
                  
                  <% 
                              }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                  %>
                           
                  </table>
      </div>
                    <div class="panel-footer" id = "myfooter">&nbsp;</div>
    </div>
          </div>
        </div>
      </div>
            </section>

    <footer id="footer">
      <p>Copyright RJ jewellers, &copy; 2019</p>
    </footer>


  <script>
     CKEDITOR.replace( 'editor1' );
  </script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script> bootstrapValidate('text-only','alpha:you can only input text');</script>
    
  </body>
</html>

