pragma solidity ^0.4.4;

contract WatcherContract{
    address owner;
    bool check = true;
    uint stop = 0;
    uint random_number;
    uint result;
    bool res = false;

    function checkingStatus() returns(uint val){
        while(check == true){
            if(stop == 40){
                random_number = uint(block.blockhash(block.number-1))%100 + 1;
                return random_number;
            }
            stop++;
            
        }
        
        

    }
    
    function WatcherContract(){
        owner = msg.sender;
        result = checkingStatus();
        if(result > 50){
            res = true;
        }else{
            res = false;
        }


    }

    function getRes() returns(bool val){
        return res;
    }

    function GetAPI() returns (bool){
        for(int i = 0; i < 5000; i++){ }
        //GrantContract(owner).setResult(result);
        return true;
        // GrantContract(owner).setResult(false);
    }
}