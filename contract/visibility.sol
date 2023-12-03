// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

contract Visibility{
                uint value;

                uint public valuePublic; // solidity sẽ tạo ra một hàm get value luôn.

                constructor (uint _a) public {
                                value = _a;
                }
                
                function getValue() private view returns(uint){ //private chỉ gọi được hàm trong contract
                                return value;
                }

                function setValue(uint _value) external { // chỉ được gọi ở bên ngoài. bên trong contract sẽ không được gọi (khi đã deploy)
                                value = _value;
                }

                function setValue1(uint _value) public { // chỉ được gọi ở bên ngoài. bên trong contract sẽ không được gọi
                                value = _value;
                }

                function setValue2(uint _value) internal { // chỉ gọi được trong hàm visibility hoặc là gọi từ contract khác được kế thừa lại
                                value = _value;
                }
}