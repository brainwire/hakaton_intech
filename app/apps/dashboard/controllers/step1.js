/*global angular*/
var app = angular.module('EthereumGarant');

app.controller("DashboardStep1Ctrl", function($scope, $location) {

	var contracts 		= DealsList.deployed();
	var root_account 	= web3.eth.accounts[0];
	var base_trx_object = {"from": root_account};

	$scope.dealsItems = [];
	$scope.item = {};

	/**
	 * Adds an item to the blockchain
	 * @param item_name
	 */
	$scope.addItem = function(item)
	{
		if ( !(typeof item == 'undefined') && item != {})
		{
			var item_count = $scope.dealsItems.length;

			contracts.setItemForIndex(item_count, item.kadastr, false, base_trx_object).then(function(success){

				// Clear item
				$scope.item = {};



				$location.path( "/step2" );
				$scope.$apply();
			});

		}

	}
});