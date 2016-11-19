/*global angular*/
var app = angular.module('EthereumGarant');

app.controller("DashboardCtrl", function($scope) {

	var contracts 		= DealsList.deployed();
	var root_account 	= web3.eth.accounts[0];
	var base_trx_object = {"from": root_account};

	$scope.dealsItems = [];
	$scope.item = "";

	contracts.returnNumItems.call().then(function(numItems){
		var numItems = numItems.toNumber();

		for (var i = 0; i < numItems; i++)
		{
			contracts.getItemForIndex.call(i).then(function(item){

				var item = {
					"name":item[0],
					"state": item[1]
				};

				// Push to array
				$scope.dealsItems.push(item);
				$scope.$apply();
			});
		}

		return this;

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
	 * Adds an item to the blockchain
	 * @param item_name
	 */
	$scope.addItem = function(item_name)
	{
		if ( !(typeof item_name == 'undefined') && item_name != "")
		{
			var item_count = $scope.dealsItems.length;

			contracts.setItemForIndex(item_count, item_name, false, base_trx_object).then(function(success){

				var item = {
					"name": item_name,
					"state": false
				};

				$scope.dealsItems.push(item);

				// Clear item
				$scope.item = "";

				$scope.$apply();
			});

		}

	}

	/**
	 * approve item at index
	 * @param $index Index of element
	 */
	$scope.approve = function($index) {
		contracts.approve($index).then(function(success){
			colsole.log("aproved")
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