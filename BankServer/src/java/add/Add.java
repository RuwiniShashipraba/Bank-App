/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package add;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Ruwini
 */
@WebService(serviceName = "Add")
public class Add {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "add")
    public Integer add(@WebParam(name = "a") int a, @WebParam(name = "b") int b) {
        //TODO write your implementation code here:
        return a+b;
    }

    /**
     * This is a sample web service operation
     */
  
}
