/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package transfer;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Ruwini
 */
@WebService(serviceName = "Transfer")
public class Transfer {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "transfer")
    public Integer transfer(@WebParam(name = "a") int a, @WebParam(name = "d") int d) {
        //TODO write your implementation code here:
       if(a<d){
          return a;
  
        }
        
        else 
        return a-d;
    }

    /**
     * This is a sample web service operation
     */
    
}
