pragma solidity ^0.4.2;

contract BankContract{
    address GarantContract;
    
    
    //constructor
    function BankContract(){
        GarantContract = msg.sender;
    }
    
    function remove(){
        if(msg.sender == GarantContract){
            suicide(GarantContract);
        }
    }
    
   
    
}