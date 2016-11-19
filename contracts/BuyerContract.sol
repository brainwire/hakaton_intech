pragma solidity ^0.4.2;



contract BuyerContract{
    address public owner;

    function getDealStatus(){

    }

    function BuyerContract(){
        owner = msg.sender;
    }   
}