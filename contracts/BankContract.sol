pragma solidity ^0.4.4;

contract BankContract{
    address public owner;
    function setFinalState(bool val)returns (bool){
        //акцепт передачи денег
        return val;

    }

    function BankContract(){
        owner = msg.sender;
    }

}