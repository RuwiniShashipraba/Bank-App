<%-- 
    Document   : index
    Created on : Nov 28, 2022, 12:18:19 PM
    Author     : Ruwini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style = "background: goldenrod">

        <h1>
        <font size="10"
          face="verdana"
          color="green">
        <center>
          ABCD E - Banking Service</center>
    </font>
        </h1>
        <center>
        <form action="index.jsp">
            <p>Your Name</p>
            <input type="text">
            <br>
            <p>Your Account Number</p>
            <input type="text">
            <br>
            <p>Your Password</p>
            <input type="text">
            <br>
            <p>Current Balance</p>
            <input type="text" name="a">
            <br>
            <h1>
        <font size="6"
          face="verdana"
          color="green">
        <center>
          Deposit Your Money Here!</center>
    </font>
        </h1>
            <p>Deposit Amount</p>
            <input type="text" name="b">
            <br>
            
            <input type="submit" value="Deposit">
               <h1>
        <font size="6"
          face="verdana"
          color="green">
        <center>
          Withdraw Your Money From Here!</center>
    </font>
        </h1>
            <p>Withdraw Amount</p>
            <input type="text" name="c">
            <br>
            
            <input type="submit" value="Withdraw">
                 <h1>
        <font size="6"
          face="verdana"
          color="green">
        <center>
          Transfer Your Money From Here!</center>
    </font>
        </h1>
            <p>Account Number</p>
            <input type="text">
            <br>
        
            <p>Transfer amount Amount</p>
            <input type="text" name="d">
            <br>
            <input type="submit" value="Transfer">
        </form>
            </center>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	add.Add_Service service = new add.Add_Service();
	add.Add port = service.getAddPort();
	 // TODO initialize WS operation arguments here
	String a = request.getParameter("a");
        String b = request.getParameter("b");
        
        int aa = Integer.parseInt(a);
        int bb = Integer.parseInt(b);
	// TODO process result here
	java.lang.Integer result = port.add(aa, bb);
	out.println("New Current Balance Rs."+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
       
    <%-- start web service invocation --%><hr/>
    <%
    try {
	withdraw.Withdraw_Service service = new withdraw.Withdraw_Service();
	withdraw.Withdraw port = service.getWithdrawPort();
	 // TODO initialize WS operation arguments here
	String a = request.getParameter("a");
        String c = request.getParameter("c");
        int aa = Integer.parseInt(a);
        int cc = Integer.parseInt(c);
	// TODO process result here
	java.lang.Integer result = port.withdraw(aa, cc);
        if(result!=aa){
        out.println("You have successfully Withdraw your money.");
	out.println("New Current Balance Rs = "+result);}
        else{
	out.println("Insufficient Balance to withdraw above amount.");
        out.println("Your Balance Rs = "+aa);}
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	transfer.Transfer_Service service = new transfer.Transfer_Service();
	transfer.Transfer port = service.getTransferPort();
	 // TODO initialize WS operation arguments here
	String a = request.getParameter("a");
        String d = request.getParameter("d");
        int aa = Integer.parseInt(a);
        int dd = Integer.parseInt(d);
	// TODO process result here
	java.lang.Integer result = port.transfer(aa, dd);
        if(result!=aa){
        out.println("You have successfully Transfer your money.");
	out.println("New Current Balance Rs = "+result);}
        else{
	out.println("Insufficient Balance to Transfer above amount.");
        out.println("Your Balance Rs = "+aa);}
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>



    </body>
</html>
