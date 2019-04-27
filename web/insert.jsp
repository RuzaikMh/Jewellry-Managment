<!DOCTYPE html>
<html lang="en">
<head>
	<title></title>
	
</head>
<body>



			<form  name="insert_form" action="journalcontroller" method="post">
				
					Journal Entries
				

				
					<input class="input100" type="text" name="jid" placeholder="Journal ID">
					
				

				<div class="wrap-input100 validate-input" data-validate = "Please enter your email: e@a.x">
					<input class="input100" type="date" name="date" placeholder="E-mail">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Please enter your phone">
					<input class="input100" type="text" name="name" placeholder="Journal Name">
					<span class="focus-input100"></span>
				</div>
                            <div class="wrap-input100 validate-input" data-validate = "Please enter your phone">
					<input class="input100" type="text" name="debit" placeholder="Phone">
					<span class="focus-input100"></span>
				</div>
                            <div class="wrap-input100 validate-input" data-validate = "Please enter your phone">
					<input class="input100" type="text" name="credit" placeholder="Phone">
					<span class="focus-input100"></span>
				</div>
                            

				<div class="wrap-input100 validate-input" data-validate = "Please enter your message">
					<textarea class="input100" name="remarks" placeholder="Your Message"></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" input type="submit" name="insert" value="Insert"/>
						<span>
							<i class="fa fa-paper-plane-o m-r-6" aria-hidden="true"></i>
							Send
						</span>
					</button>
				</div>
                            <tr style="text-align:center;">
                    <td colspan="3">
                        <font color="green">
                        <%
                            if (session.getAttribute("sm") != null) {
                                out.println(session.getAttribute("sm"));
                                session.setAttribute("sm", null);
                            }
                        %>
                        </font>
                        <font color="red">
                        <%
                            if (session.getAttribute("em") != null) {
                                out.println(session.getAttribute("em"));
                                session.setAttribute("em", null);
                            }
                        %>
                        </font>
                    </td>
                </tr>
                <tr style="text-align: center;">
                    <td colspan="3">
                        <a href="index.jsp">Home</a>
                    </td>
                </tr>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>




</script>

</body>
</html>
