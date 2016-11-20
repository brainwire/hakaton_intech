/*global angular*/
var app = angular.module('EthereumGarant');

app.controller("DashboardStep2Ctrl", function($scope) {

	var contracts 		= DealsList.deployed();
	var root_account 	= web3.eth.accounts[0];
	var base_trx_object = {"from": root_account};

	$scope.dealsItems = [];
	$scope.item = "";

	contracts.getItemForIndex.call(0).then(function(item){

		var item = {
			"name":item[0],
			"state": item[1]
		};

		// Push to array
		$scope.dealsItems.push(item);
		$scope.$apply();
	});

	/**
	 * Changes state for a single item at index
	 * @param item
	 * @param $index
	 */
	$scope.changedState = function(item, $index) {

		var state = item.state;

		contracts.setStateForItemAtIndex($index, state, base_trx_object).then(function(success){

		});
	}

	/**
	 * approve item at index
	 * @param $index Index of element
	 */
	$scope.approve = function($index) {
		contracts.approve($index).then(function(success){
			console.log($index + " ETO RABOTAET");
			$scope.$apply();
		});
	}

	/**
	 * reject item at index
	 * @param $index Index of element
	 */
	$scope.rejectItem = function($index) {

		contracts.removeItemAtIndex($index, base_trx_object).then(function(success){
			$scope.dealsItems.splice($index, 1);
			$scope.$apply();
		});
	}
});