# Collection-Recorder-with-Sum-function
donor recorder with/without total sum function

it are similar with the storage function but with storing the amount from the array and having total sum function.

How It Works for the StorageSum.sol :
After creating multiple Collector contracts with createCollectorContract(), you can use sAmount() to set amounts for each contract.
You can then call sumCollectorAmounts() to get the sum of all the amounts stored across all the Collector contracts.
For example:

You create three Collector contracts and store amounts 100, 200, and 300 in them using sAmount().
When you call sumCollectorAmounts(), it will return 600 (the sum of 100 + 200 + 300).
This structure should work for your use case, where you want to sum the newCollectorAmount values across multiple Collector contracts.

Usage for Collector.sol :

After adding multiple donors using the addDonor function, you can call the sumFundedAmounts function to get the total sum of all donors' contributions.
Example Usage:
Add Donors:

addDonor("Alice", 100);
addDonor("Bob", 150);
Get Total Funded Amounts:

sumFundedAmounts(); // Returns 250 (100 + 150)



