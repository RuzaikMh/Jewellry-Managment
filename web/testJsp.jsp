<%-- 
    Document   : dash
    Created on : Mar 3, 2019, 10:54:10 PM
    Author     : Ruzaik Mh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
          <div class="col-md-3 sidebar " id="sidebar">
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
                    <a href="#" class="list-group-item" data-parent="#menu1">Remove Product</a>
                    <a href="#" class="list-group-item" data-parent="#menu1">Update Product</a>
                </div>
                
                 <a href="#" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Account Management</span>
                 </a>
                
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
                    <a href="#" class="list-group-item" data-parent="#menu11">View Customer Details</a>
                    <a href="#" class="list-group-item" data-parent="#menu11">Remove Customer Details</a>
                    <a href="#" class="list-group-item" data-parent="#menu11">Update Customer Details</a>
                </div>
                
                <!--/collapsible side bar starts-->
                <a href="#menu2" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Supplier Management </span> 
            </a>
            <div class="collapse" id="menu2">
                <a href="#menu2sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Supplier Details <i class="fa fa-caret-down"></i></a>
                <div class="collapse" id="menu2sub1">
                    <a href="#" class="list-group-item" data-parent="#menu2sub1">View Supplier</a>
                    <a href="AddSupplier.jsp" class="list-group-item" data-parent="#menu2sub1">Add Supplier</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub1">Remove Supplier</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub1">Update Supplier</a>
                </div>
                
                <a href="#menu2sub2" class="list-group-item" data-toggle="collapse" aria-expanded="false">Supply Details <i class="fa fa-caret-down"></i></a>
                <div class="collapse" id="menu2sub2">
                    <a href="#" class="list-group-item" data-parent="#menu2sub2">View Supply details</a>
                    <a href="AddSupply.jsp" class="list-group-item" data-parent="#menu2sub2">Add Supply details</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub2">Remove Supply details</a>
                    <a href="#" class="list-group-item" data-parent="#menu2sub2">Update Supply details</a>
                </div>
            </div>
            
           
            <a href="#" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Employee Management </span>
            </a>
            
               <a href="#" class="list-group-item" data-toggle="collapse" data-parent="#sidebar">
               <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
                <span class="hidden-sm-down">Repair Management </span>  
               </a>
            </div>
            <!--/collapsible side bar end -->
          </div>
          <div class="col-md-9  content">
            <!-- Website Overview -->
           
                <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Add Supplier</h3>
              </div>
              <div class="panel-body">
                <form action = "AddSupplier" method = "post"> 
                    <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Supplier Name&nbsp;</lable>
                                </span>
                                <input name ="Name" type ="text" id ="text-only" class="form-control" aria-label="...">
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Opening Balance&nbsp;</lable>
                                </span>
                                <input name ="OpeningBalance" type ="text" class="form-control" aria-label="...">
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Opening Type&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <select class="form-control" name ="OpeningType">
                                     <option value="" disabled selected>Choose Type</option>
                                     <option value="1">Credit</option>
                                     <option value="2">Debit</option>
                                </select>
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Primary Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="Pnumber" type ="text" class="form-control" aria-label="...">
                            </div>
                        </div> 
                    </div>
                    <br>
                          <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Alternate Phone</lable>
                                </span>
                                <input name ="Anumber" type ="text" class="form-control" aria-label="...">
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name = "Email" type ="email" class="form-control" aria-label="..." >
                            </div>
                        </div>
                    </div>
                    <br>
                        <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="Address" type ="text" class="form-control" aria-label="...">
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="City" type ="text" class="form-control" aria-label="...">
                            </div>
                        </div>
                    </div>
                    <br> 
                    <div class="row">
                        <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Account Name&nbsp;&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="AccName" type ="text" class="form-control" aria-label="...">
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class = "input-group">
                                <span class="input-group-addon">
                                    <lable>Account Number&nbsp;&nbsp;</lable>
                                </span>
                                <input name ="AccNumber" type ="number" class="form-control" aria-label="...">
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
