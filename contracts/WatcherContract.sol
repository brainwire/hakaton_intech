pragma solidity ^0.4.2;

contract WatcherContract{
    
     address GarantContract;
    //constructor
    function WatcherContract(){
        GarantContract = msg.sender;
    }
    
    function remove(){
        if(msg.sender == GarantContract){
            suicide(GarantContract);
        }
    }
    
}