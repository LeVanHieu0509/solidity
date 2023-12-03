// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

contract Hello{
                uint value;

                constructor (uint _a) public {
                                value = _a;
                }
                
                function getValue() external view returns(uint){
                                return value;
                }

                function setValue(uint _value) external {
                                value = _value;
                }
}