pragma solidity ^0.4.2;

import "BankContract.sol";
import "BuyerContract.sol";
import "SellerContract.sol";
import "WatcherContract.sol";

contract GarantContract{
    address DealsList;
    
    function GarantContract(){
        DealsList = msg.sender;
    }
    
    function remove(){
        if(msg.sender == DealsList){
            suicide(DealsList);
        }
    }
    
    
    /*
    BankContract
    */
    function createBC() returns(address BCaddr){
        return address(new BankContract());
    }
    
    function deleteBC(address bc){
        BankContract(bc).remove;
    }
    
    
    
    /*
    BuyerContract
    */
    function createBuyC() returns(address buyerAddr){
        return address(new BuyerContract());
    }
    
    
    
    function deleteBuyC(address buyc){
        BuyerContract(buyc).remove;        
    }
    
    
    /*
    SellerContract
    */
    function createSC() returns(address SellerAddr){
        return address(new SellerContract());
    }
    
    function deleteSC(address sc){
        SellerContract(sc).remove;
    }
    
    /*
    WatcherContract
    */
    function createWC() returns(address WatcherAddr){
        return address(new WatcherContract());
    }
    
    function deleteWC(address wc){
        WatcherContract(wc).remove;
    }
    
}