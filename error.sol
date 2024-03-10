//There are only three statement to solve error require(), assert() and revert().
//require() is used to validate certain condition before execution of a function. 
//It takes two parameter as a input, the first is to check the condition and second is to send
// the messsage if conditiion  fails. It works only with a single condition check parameter.
//The assert() function is a convinience that checks for conditions, if a condition fails, then 
//the function execution is terminated with a error msg.
//revert() can be used to flag an error and revert the current call, it can also provide a 
// msg containing details about the error and the msg will be passed back to the caller.



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

