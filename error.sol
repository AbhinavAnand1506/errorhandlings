//SPDX-License-Identifier: MIT
//Error handling in Solidity mainly involves the require, assert, and revert
//statements to check conditions and revert transactions.
//Lets discuss them:
// Require is used for:
//    -inputs
//    -conditions before execution
//    - return values from calls to other functions

// Assert is used to test for internal errors, and to check invariants.
// Here we assert that num is always equal to 0
// since it is impossible to update the value of num
// This function deliberately causes an error by reverting the transaction
// Revert is useful when the condition to check is complex.
// This code does the exact same thing as the example above

//This contract represents a simple voting system where users can vote yes or no on a proposal. Each user can only vote once.
// The contract keeps track of the number of yes and no votes, 
//and users can get the result of the vote through the getResult function.

pragma solidity ^0.8.0;

contract VotingSystem{
    mapping(address => bool) public hasVoted;
    uint public yesVotes;
    uint public noVotes;
    event Voted(address indexed voter, bool vote);
    
    //here we pass bool type which is either true or false.
    function vote(bool inSupport) external {
        
        require(!hasVoted[msg.sender], "You have already voted");
        //we used hasvote variable, if hasvote is not equals to message out sender then it works 
        //propoerly otherwise it sent back the error you have already voted in.

        //if we have voted on one address, then we are not able to vote again and again
        //on that address. 

       // if else statement is used to count no of yes or no votes.
        if(inSupport){
            yesVotes++;
        }else{
            noVotes++;
        }
        hasVoted[msg.sender]= true;
        emit Voted(msg.sender, inSupport);
    }
    function getResult() external view returns(string memory) {
        if(yesVotes > noVotes){
            return "Proposal accepted";
        }
        else if(noVotes > yesVotes){
            return "Proposal rejected";
        }else{
            return "Proposal tied";
        }
    }
}
