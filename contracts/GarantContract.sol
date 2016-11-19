pragma solidity ^0.4.4;

import "BankContract.sol";
import "BuyerContract.sol";
import "SellerContract.sol";
import "WatcherContract.sol";
// import "DealsList.sol";

contract GarantContract{
    address public owner;
    address public seller;
    address public bank;
    address public buyer;
    address public watcher;
    bool public result = false;
    enum DealStatus { New, Approved, Rejected, Canceled ,Complete }
    DealStatus status;

    DealStatus constant defaultDealStatus = DealStatus.New;

 
    
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

    function setResult(bool res){
        checkResult(res);
    }

    function checkResult(bool val){
        closeDeal(BankContract(bank).setFinalState(val));
    }

    function closeDeal(bool finalstate){
        if(finalstate == true){
            status = DealStatus.Complete;
        }else{
            status = DealStatus.Canceled;
        }
    }

    function getDealStatus() returns (DealStatus)
    {
        return status;
    }

    function GarantContract(){
        owner = msg.sender;
        seller = createSeller();
        bank = createBank();
        buyer = createSBuyer();
        watcher = createWatcher();
        setResult(WatcherContract(watcher).GetAPI());

    }


   
}