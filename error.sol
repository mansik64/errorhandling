//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Errorhandling{
uint public age;
bool public voter=false;
uint public constant max = 100;


event Updatevoter(bool newVoter);
event Updatevalue(uint newValue);

function check(uint _in) public {
    require(_in >= 18, "You Can't Vote");
    voter = true;
    emit Updatevoter(true);
}

function reset() public {
    assert(age >= max);
    age = 0;
    emit Updatevalue(age);
}

function set(uint _in) public {
    if (_in < 0) {
        revert("Age cannot be less than zero");
    }
    age = _in;
    emit Updatevalue(age);

}
}
