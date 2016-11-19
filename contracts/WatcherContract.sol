pragma solidity ^0.4.4;

contract WatcherContract{
    bool check = true;
    uint stop = 0;
    uint random_number;
    uint result;

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
        result = checkingStatus();
        if(result > 50){
            //Обратить к какому то методу банка хД
        }else{
            //послать всё и сидеть
        }
    }
}