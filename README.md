# hakaton_intech


##Truffle
truffle migrate
truffle serve

##Server
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum

geth --dev console

> personal.newAccount("123") // Создаем новый аккаунт с паролем "123"
"0x07ae7ebb7b9c65b51519fc6561b8a78ad921ed13" // Его адрес
> eth.accounts // Смотрим список аккаунтов
["0x07ae7ebb7b9c65b51519fc6561b8a78ad921ed13"]
> miner.setEtherbase(eth.accounts[0]) // Устанавливаем его в качестве аккаунта для майнинга
true
> eth.coinbase // Проверяем
"0x07ae7ebb7b9c65b51519fc6561b8a78ad921ed13" // Все верно
> miner.start() // Я запускаю майнер не в первый раз, поэтому у меня номера блоков 31,32,...
true

geth --password <(echo 123) --unlock "0xba5170b8990a06e16024c36c145dafb4edf3e0d6" --dev --rpc --rpcaddr "0.0.0.0" --rpcapi "admin,debug,miner,shh,txpool,personal,eth,net,web3" console