/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package withdraw;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Ruwini
 */
@WebService(serviceName = "Withdraw")
public class Withdraw {

    /**
     * This is a sample web service operation
     */
    
    /**
     * Web service operation
     */
    @WebMethod(operationName = "withdraw")
    public Integer withdraw(@WebParam(name = "a") int a, @WebParam(name = "c") int c) {
        
        //TODO write your implementation code here:
        if(a<c){
          return a;
  
        }
        
        else 
        return a-c;
    }
}
