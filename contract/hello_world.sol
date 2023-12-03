// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// tạo smart contract.
contract Helloworld {
    string public greet = "Hello world";
    uint[] arr; //store array phải cùng 1 kiểu dữ liệu

    bool isEnabled;
    uint a; //1,2,4
    address sender;
    bytes32 data;
    string name;
    bytes data123;
    mapping (address => bool) whiteList; //0x343....4343 ==> true


struct User{
    uint id;
    string name;
    bool IsFriend;
}

    function array() external {
        arr.push(2);
        arr.push(2);
        arr.push(2);
        arr.push(2);
        arr[1] = 2;

        for (uint256 i = 0; i < arr.length; i++) {
            arr[i] = 0;
        }
    }

    //phải dùng memory, ko được lưu trên blockchain, fix length, phải khai báo độ dài
    function memoryArray() external {
        uint[] memory array = new uint[](10);

        array[0] = 1;
        array[1] = 2;
    }

    //Hàm chỉ được gọi từ ngoài và dùng từ khoá calldata nếu như biến đó được ở ngoài truyền vào
    // calldata => external
    // memory => internal

    function arrayWithParemeter(uint[] calldata myArgs) external {}
}
