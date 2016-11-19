pragma solidity ^0.4.2;

contract GarantContract{
    address DealsList;
    
    function GarantContract(ListItem){
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
    WatcherContract
    */
    function createSC() returns(address SellerAddr){
        return address(new SellerContract);
    }
    
    function deleteSC(address sc){
        SellerContract(sc).remove;
    }
    
    /*
    WatcherContract
    */
    function createWC() returns(address WatcherContract){
        return address(new WatcherContract());
    }
    
    function deleteWC(address wc){
        WatcherContract(wc).remove;
    }
    
}