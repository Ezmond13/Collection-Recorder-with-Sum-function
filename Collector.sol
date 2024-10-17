// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Collector {

    uint256 myfundedAmount;

    struct Person{
        uint256 fundedAmount;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameOfDonor;

    function amount(uint256 _fundedAmount) public {
        myfundedAmount = _fundedAmount;
    } 

    function retrieve() public view returns(uint256){
        return myfundedAmount;
    }

    function addDonor(string memory _name, uint256 _fundedAmount) public {
        listOfPeople.push( Person(_fundedAmount, _name));
        nameOfDonor[_name] = _fundedAmount;
    }

    
}
