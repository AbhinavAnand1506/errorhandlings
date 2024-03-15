# errorhandlings
 a smart contract that implements the require(), assert() and revert() statements This Solidity program is a  "Error Handling " program that demonstrates the concept of error handling and functionality of the Solidity 
 programming language. 
This program is a  contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a multiple function in which we can explore all the three statements of errors which is Require().
## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:
##sourcecode

       
     pragma solidity ^0.8.0;
    contract VotingSystem{
    mapping(address => bool) public hasVoted;
    uint public yesVotes;
    uint public noVotes;
    event Voted(address indexed voter, bool vote);
    function vote(bool inSupport) external {
        require(!hasVoted[msg.sender], "You have already voted");
     
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



    








    



