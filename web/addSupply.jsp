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
            <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> View Supplier Details </h1>
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
 <!--/collapsible side bar starts -->
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
                <span class="hidden-sm-down">Product</span>
                </a>
                <div class="collapse" id="menu1">
                    <a href="AddProducts.jsp" class="list-group-item" data-parent="#menu1">Add Product</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">View Product</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Remove Product</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Update Product</a>
                </div>
                
                 <a href="#" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Account</span>
                 </a>
                
                 <a href="#menu10" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Inventory</span>
                 </a>
                
                <div class="collapse" id="menu10">
                    <a href="AddStock.jsp" class="list-group-item" data-parent="#menu1">Add Stock</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">View Stock</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Remove Stock</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Update Stock</a>
                </div>
                
                 <a href="#menu11" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Customer</span>
                 </a>
                <div class="collapse" id="menu11">
                    <a href="AddCustomer.jsp" class="list-group-item" data-parent="#menu1">Add Customer Details</a>
                    <a href="#" class="list-group-item" data-parent="#menu11">View Customer Details</a>
                    <a href="#" class="list-group-item" data-parent="#menu11">Remove Customer Details</a>
                    <a href="#" class="list-group-item" data-parent="#menu11">Update Customer Details</a>
                </div>
                
                <!--/collapsible side bar starts-->
                <a href="#menu2" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Supplier</span> 
            </a>
            <div class="collapse" id="menu2">
                <a href="#menu2sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Supplier Details <i class="fa fa-caret-down"></i></a>
                <div class="collapse" id="menu2sub1">
                    <a href="#" class="list-group-item" data-parent="#menu2sub1">View Supplier</a>
                    <a href="AddSupplier.jsp" class="list-group-item" data-parent="#menu2sub1">Add Supplier</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub1">Remove Supplier</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub1">Update Supplier</a>
                </div>
                
                <a href="#menu2sub2" class="list-group-item" data-toggle="collapse" aria-expanded="false">Supply Details<i class="fa fa-caret-down"></i></a>
                <div class="collapse" id="menu2sub2">
                    <a href="#" class="list-group-item" data-parent="#menu2sub2">View Supply details</a>
                    <a href="AddSupply.jsp" class="list-group-item" data-parent="#menu2sub2">Add Supply details</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub2">Remove Supply details</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub2">Update Supply details</a>
                </div>
            </div>
            
           
            <a href="#" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Employee</span>
            </a>
            
               <a href="#" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Repair</span>  
               </a>
            </div>
          </div>
          <!--/collapsible side bar end -->
            
          <!-- Website Overview -->
          <div class="col-md-10 content">
              <div class="panel panel-default">
                  <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Supplier Details</h3>
              </div>
                  <div class="panel-body">
                      <div class="row">
                          <div class="col-md-4">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Purchase Invoice No</lable>
                                </span>
                                <input name ="Invoice" type ="text" id ="text-only" class="form-control" aria-label="..." required>
                            </div>
                        </div> 
                          <div class="col-md-4">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Supplier Name</lable>
                                </span>
                                <input name ="SupplierName" type ="text" id ="text-only" class="form-control" aria-label="..." required >
                            </div>
                        </div>
                          <div class="col-md-4">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="Date" type ="date" class="form-control" aria-label="...">
                            </div>
                        </div>
                      </div>
                      <br>
                      <div class="row">
                          <div class="col-md-4">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Payment Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <select class="form-control" name ="PaymentType">
                                     <option value="" disabled selected>Choose Type</option>
                                     <option value="Credit">Credit</option>
                                     <option value="Debit">Debit</option>
                                </select>
                            </div>
                        </div>
                           <div class="col-md-4">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Fixed Discount %</lable>
                                </span>
                                <input name ="FixedDiscount" type ="text"  class="form-control" aria-label="..." required >
                            </div>
                        </div>
                      </div>   
                  </div>
              </div>
          </div>
            <div class="col-md-10 content">
                <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Supplier Details</h3>
              </div>
              <div class="panel-body">
                  <form action="Test" method="post">
                  
                     
                          <table class="table table-striped table-hover" id = "myTable">
                              
                              <thead class="row"> 
                              <tr>
                                   <td>ID</td>
                                   <td>Category</td>
                                   <td>Qty</td>
                                   <td>Price</td>
                                   <td>Disc %</td>
                                   <td>Tax</td>
                                   <td>Amount</td>
                                   
                              </tr>
                              </thead>
                              
                              <tbody class="row">  
                              <tr>
                                
                                   <td>1</td>
                                   <td><input name ="Category1" type ="text"  class="form-control" aria-label="..."></td>
                                   <td><input name ="Qty1" type ="text"  class="form-control" aria-label="..."></td>
                                   <td><input name ="Pirce1" type ="text"  class="form-control" aria-label="..."></td>
                                   <td><input name ="Disc1" type ="text"  class="form-control" aria-label="..."></td>
                                   <td><input name ="Tax1" type ="text"  class="form-control" aria-label="..."></td>
                                   <td><input name ="Amount1" type ="text"  class="form-control" aria-label="..."></td>
                                  
                                   
                                </tr>
                              </tbody>
                          </table>
                         
                            
                 
                  
                 <hr>
                  <div > 
                          <button type="button" onclick="myFunction()" class="btn btn-primary">Add Item</button> 
                          &nbsp;
                          <button type="button" onclick="deleterow()" class="btn btn-danger">Remove Item</button>
                          <input id="rows" type="hidden" name ="count" value="1">
                  </div>
                     
                      <hr>
                      <div class="row">  
                          <div class = "col-md-4">
                          <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Sub Total</lable>
                                </span>
                                <input name ="subTotal" type ="text" class="form-control" readonly aria-label="..." required >
                            </div>
                          </div>
                           <div class = "col-md-4">
                          <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Total Discount</lable>
                                </span>
                                <input name ="totalDiscount" type ="text" class="form-control" readonly aria-label="..." required >
                            </div>
                          </div>
                           <div class = "col-md-4">
                          <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Total Amount</lable>
                                </span>
                                <input name ="total" type ="text" class="form-control" readonly aria-label="..." required >
                            </div>
                          </div>
                      </div>  
                      <hr>
                     
                    <div class="row">
                        <div class = "col-md-6" id = "save&rest">
                            <button type="submit" class="btn btn-primary btn-lg btn-block"><span class="far fa-save" aria-hidden="true"></span> Save</button>  
                        </div>
                        <div class = "col-md-6" id = "save&rest">
                            <button type="reset" class="btn btn-primary btn-lg btn-block"><span class="fas fa-ban" aria-hidden="true"></span> Reset</button>  

                        </div>
                    </div>   
                      
                  </form>   
                      
                     
                  
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
<script>
function myFunction() {
        var tableRef  = document.getElementById('myTable').getElementsByTagName('tbody')[0];
        var rowCount = tableRef.rows.length;
   
        var row   = tableRef.insertRow(tableRef.rows.length);
        var cell1   = row.insertCell(0);
        cell1.innerHTML = rowCount + 1;
        
        var cell2 = row.insertCell(1);
        var element1 = document.createElement("input");
        element1.type = "text";
        element1.name = "Category" +(rowCount + 1);
        element1.className ="form-control";
        cell2.appendChild(element1);
        
        var cell3 = row.insertCell(2);
        var element2 = document.createElement("input");
        element2.type = "text";
        element2.name = "Qty" +(rowCount + 1);
        element2.className ="form-control";
        cell3.appendChild(element2);
        
        var cell4 = row.insertCell(3);
        var element3 = document.createElement("input");
        element3.type = "text";
        element3.name = "Pirce" +(rowCount + 1);
        element3.className ="form-control";
        cell4.appendChild(element3);
        
        var cell5 = row.insertCell(4);
        var element4 = document.createElement("input");
        element4.type = "text";
        element4.name = "Disc" +(rowCount + 1);
        element4.className ="form-control";
        cell5.appendChild(element4);
        
        var cell6 = row.insertCell(5);
        var element5 = document.createElement("input");
        element5.type = "text";
        element5.name = "Tax" +(rowCount + 1);
        element5.className ="form-control";
        cell6.appendChild(element5);
        
        var cell7 = row.insertCell(6);
        var element6 = document.createElement("input");
        element6.type = "text";
        element6.name = "Amount" +(rowCount + 1);
        element6.className ="form-control";
        cell7.appendChild(element6);

        var servlet = document.getElementById("rows").value = rowCount + 1;
}

function deleterow() {
    var table = document.getElementById('myTable');
    var rowCount = table.rows.length;

    
            table.deleteRow(rowCount -1);
      
}
</script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script> bootstrapValidate('text-only','alpha:you can only input text');</script>
    
  </body>
</html>
