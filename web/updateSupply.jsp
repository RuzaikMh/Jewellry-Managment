<%-- 
    Document   : dash
    Created on : Mar 3, 2019, 10:54:10 PM
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
    <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
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
        ResultSet rs1 = null;
        PreparedStatement ps = null;
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
            <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Add Supplier </h1>
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
         <div class="col-md-3 " id="sidebar">
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
            
          <div class="col-md-9 content">
            <!-- Website Overview -->
           
                <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Add Supplier</h3>
              </div>
              <div class="panel-body">
                <form action = "UpdateSupplyDetails" method = "post"> 
                    <% 
                       
                              conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellry?useSSL=false", "root", "1551214374THEaa");
                              st = conn.createStatement();
                              String num = request.getParameter("update");
                              String sql;
                            String sql2;
                                sql2 = "SELECT * FROM jewellry.supply where ID = '"+num+"'";
                                sql ="SELECT DISTINCT Name FROM jewellry.supplier";
                              
                              rs1 = st.executeQuery(sql2);
			while(rs1.next()){
                              
                        
                      %>
                    <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Purchase Invoice No&nbsp;</lable>
                                </span>
                                <input name ="Invoice" type ="text" id ="text-only" value="<%=rs1.getString(1)%>" class="form-control" aria-label="...">
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Date&nbsp;</lable>
                                </span>
                                <input name ="Date" type ="date" value="<%=rs1.getString(2)%>" class="form-control" aria-label="...">
                          <%}%>
                            </div>
                        </div>
                    </div>
                               
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Supplier Name&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                              
                                <select class="form-control" name ="SupplierName">
                                    <option value="" disabled selected>Choose Supplier</option>
                                    <%
                                         ps = conn.prepareStatement(sql);
                                         rs = ps.executeQuery();
                                        while(rs.next()){       
                                        String fname = rs.getString("Name"); 
                                    %> 
                                   <option value="<%=fname %>"><%=fname %></option>
                                    <%
                                        }
                                    %>
                                </select>
                            
                            
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <% 
                                         rs1 = st.executeQuery(sql2);
                                        while(rs1.next()){
                                %>
                                <span class="input-group-addon">
                                    <lable>Fixed Discount %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="Discount" id ="value3" value="<%=rs1.getString(4)%>" type ="text" class="form-control" aria-label="...">
                                  
                            </div>
                        </div> 
                    </div>
                    <br>
                          <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Payment Type</lable>
                                </span>
                                <select class="form-control" name ="PaymentType">
                                     <option value="" disabled selected>Choose Type</option>
                                     <option value="Credit">Credit</option>
                                     <option value="Debit">Debit</option>
                                </select>
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <select class="form-control" name ="Category">
                                     <option value="" disabled selected>Choose Type</option>
                                     <option value="Ring">Ring</option>
                                     <option value="Debit">Chain</option>
                                     <option value="Debit">Earring</option>
                                     <option value="Debit">Bangle</option>
                                     <option value="Debit">Pendant</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <br>
                        <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="Qty" id="value1"  type ="text" value="<%=rs1.getString(7)%>" class="form-control" aria-label="...">
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Weight&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="Weight" type ="text" value="<%=rs1.getString(8)%>" class="form-control" aria-label="...">
                            </div>
                        </div>
                    </div>
                    <br> 
                    <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Unit Price&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="UnitPrice"  id ="value2" value="<%=rs1.getString(9)%>" type ="text"  class="form-control" aria-label="...">
                                  <input type = "hidden" name = "ID" value ='<%=rs1.getInt(12)%>' >
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Total Amount&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="Total" id="sum" type ="text"  value="<%=rs1.getString(10)%>" class="form-control" aria-label="...">
                          
                            </div>
                        </div>
                    </div>
                    <br>
                   <div class="row">
                       <div class="col-md-12">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Description&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                
                                <textarea class="form-control" rows="2" value="<%=rs1.getString(11)%>"  name="Description"></textarea>
                                
                                
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class = "col-md-6" id = "save&rest">
                            <button type="submit" class="btn btn-primary btn-lg btn-block"><span class="far fa-save" aria-hidden="true"></span> Save</button>  
                        </div>
                        <div class = "col-md-6" id = "save&rest">
                            <button type="reset" class="btn btn-primary btn-lg btn-block"><span class="fas fa-ban" aria-hidden="true"></span> Reset</button>  
                           
                        </div>
                      
                    </div>
                      <%}%>
                </form>
                                
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
   $(function(){
            $('#value1, #value2,#value3').keyup(function(){
               var value1 = parseFloat($('#value1').val()) || 0;
               var value2 = parseFloat($('#value2').val()) || 0;
               var value3 = parseFloat($('#value3').val()) || 0;
               var final = (value1 * value2) * value3 / 100;
               $('#sum').val((value1 * value2) - final);
            });
         });
</script>

  <script>
     CKEDITOR.replace( 'editor1' );
  </script>

  <script src="css/jquery.datetimepicker.min.js" type="text/javascript"></script>
  <script>
      $("#datetimepicker").datetimepicker();
  </script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script> bootstrapValidate('text-only','alpha:you can only input text');</script>
    
  </body>
</html>
