// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Collector} from "./CollectorSum.sol";

contract Storage {

    Collector[] public listOfCollectorContracts;

    function createCollectorContract() public {
        Collector newCollectorContract = new Collector();
        listOfCollectorContracts.push(newCollectorContract);
    }

    function sAmount(uint256 _amountIndex, uint256 _newCollectorAmount)public {
        listOfCollectorContracts[_amountIndex].amount(_newCollectorAmount);
        //Collector myCollector = listOfCollectorContracts[_amountIndex];
        //myCollector.amount(_newCollectorAmount);
    }

    function sGet(uint256 _amountIndex) public view returns(uint256){
        return listOfCollectorContracts[_amountIndex].retrieve();
        //Collector myCollector = listOfCollectorContracts[_amountIndex];
        //return myCollector.retrieve();
    }

        // Sum the amounts stored in all the Collector contracts
    function sumCollectorAmounts() public view returns (uint256) {
        uint sum = 0;  // Initialize sum to zero

        // Loop through each Collector contract and sum the amounts
        for (uint i = 0; i < listOfCollectorContracts.length; i++) {
            sum += listOfCollectorContracts[i].retrieve();  // Retrieve the amount from each contract and add to sum
        }

        return sum;  // Return the total sum of all collector amounts
    }

}
