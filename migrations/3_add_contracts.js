module.exports = function(deployer) {
  deployer.deploy(BankContract);
  deployer.deploy(BuyerContract);
  deployer.deploy(GarantContract);
  deployer.deploy(SellerContract);
  deployer.deploy(WatcherContract);
};
