// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Collector} from "./Collector.sol";

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

}
