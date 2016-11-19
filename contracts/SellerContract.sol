pragma solidity ^0.4.2;

contract SellerContract{
    
     address GarantContract;
    //constructor
    function SellerContract(){
        GarantContract = msg.sender;
    }
    
    function remove(){
        if(msg.sender == GarantContract){
            suicide(GarantContract);
        }
    }
    
}