# errorhandlings
 a smart contract that implements the require(), assert() and revert() statements This Solidity program is a  "Error Handling " program that demonstrates the concept of error handling and functionality of the Solidity 
 programming language. 
This program is a  contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a multiple function in which we can explore all the three statements of errors which is Require().
## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:
##sourcecode

       
       pragma solidity 0.8.22;
       contract Errorhandling {
      function testRequire(uint _i) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 25, "Input must be greater than 25");
        //if this condition will satisfy then rest of the function will work
        // otherwise it should back the message.
    }

    function testRevert(uint _i) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 25) {
            revert("Input must be greater than 25");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);
    }
    }



To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.22" (or another compatible version).

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.

This contract represents a simple voting system where users can vote yes or no on a 
proposal. Each user can only vote once. The contract keeps track of the number of yes and
no votes, and users can query the result of the vote through the getResult function.

## Note 
Due to lack of time i only require statement explain in the video rest of statements I was used in another contract which i was already atteched in the github reposatory.   

## Authors

Metacrafter student Abhinav1506

## License
This project is licensed under the MIT License - see the LICENSE.md file for details



    








    



