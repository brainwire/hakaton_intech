pragma solidity ^0.4.2;

contract BuyerContract{
     address GarantContract;
     
    //constructor
    function BuyerContract(){
        GarantContract = msg.sender;
    }
    
    function remove(){
        if(msg.sender == GarantContract){
            suicide(GarantContract);
        }
    }
    
}