pragma solidity ^0.4.4;

import "BankContract.sol";
import "BuyerContract.sol";
import "SellerContract.sol";
import "WatcherContract.sol";

contract GarantContract{
    address public owner;
    address public seller;
    address public bank;
    address public buyer;
    address public watcher;
    
    
    
    
    function createSeller() returns(address SellerAddr){
        return address(new SellerContract());
    }

    
    function createSBuyer() returns(address BuyerAddr){
        return address(new BuyerContract());
    }
    
    
    function createBank() returns(address BankAddr){
        return address(new BankContract());
    }
    
    
    
    function createWatcher() returns(address WatcherAddr){
        return address(new WatcherContract());
    }

    function GarantContract(){
        owner = msg.sender;
        seller = createSeller();
        bank = createBank();
        buyer = createSBuyer();
        watcher = createWatcher();
    }
   
}