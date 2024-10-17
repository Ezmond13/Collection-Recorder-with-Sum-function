// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Collector {

    uint256 myfundedAmount;

    struct Person {
        uint256 fundedAmount;
        string name;
    }

    // List to store all people and their funded amounts
    Person[] public listOfPeople;

    // Mapping to track how much each person has funded by their name
    mapping(string => uint256) public nameOfDonor;

    // Function to store a single funded amount
    function amount(uint256 _fundedAmount) public {
        myfundedAmount = _fundedAmount;
    }

    // Function to retrieve the stored funded amount
    function retrieve() public view returns (uint256) {
        return myfundedAmount;
    }

    // Function to add a donor with their name and funded amount
    function addDonor(string memory _name, uint256 _fundedAmount) public {
        listOfPeople.push(Person(_fundedAmount, _name));
        nameOfDonor[_name] = _fundedAmount;
    }

    // Function to sum up all the funded amounts from the list of people
    function collectedAmount() public view returns (uint256) {
        uint256 totalSum = 0;
        // Loop through the listOfPeople array to sum all funded amounts
        for (uint256 i = 0; i < listOfPeople.length; i++) {
            totalSum += listOfPeople[i].fundedAmount;
        }
        return totalSum;
    }
}
