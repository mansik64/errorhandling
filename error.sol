//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Errorhandling{
    // State variable to store a value
uint public value;
uint public constant max = 100;

// Event to log value updates
event Updatevalue(uint newValue);

// Function to update the value
function update(uint _new) public {
    // Use require to validate the input
    require(_new <= max, "Value must be less than or equal to 100");

    // Update the value
    value = _new;

    // Emit an event for the update
    emit Updatevalue(_new);
}

// Function to reset the value to zero
function reset() public {
    // Use assert to ensure internal invariants
    assert(value <= max);

    // Reset the value
    value = 0;

    // Emit an event for the reset
    emit Updatevalue(value);
}

// Function to demonstrate revert
function Divide(uint _num, uint _den) public pure returns (uint) {
    // Use revert to handle complex conditions
    if (_den == 0) {
        revert("Denominator cannot be zero");
    }

    // Perform the division
    return _num / _den;
}
}
