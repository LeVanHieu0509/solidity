// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

import "./hello.sol";
import "./hello_world.sol";

// Thuộc tính này gọi là kế thừa trong smart contract
// Có thể kế thừa được từ nhiều contract khác

contract Hi is Hello {
                //truyền data từ thằng HI sang contructor Hello
                constructor(uint data) public Hello(data){

                }

               uint b = 6;
               function bar() public {
                                b=10;
               }
}