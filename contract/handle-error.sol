// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

contract HandleError{

   uint public a = 10;
   address Admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

   function foo (uint Foo) public CheckA(2) CheckB(Foo) {
      require(msg.sender == Admin, "only admin can call this funtion!");
      a = 5;

      //error => Khi mà chạy b ị lỗi thì các variabel bị rollback lại, khi mà đã chạy qua dòng nào thì sẽ tốn gas từng nấy
      // dùng require để quăng lỗi ra.

     
   }

     function foo1 (uint Foo) public OnlyAdmin(Foo) {
      a = 5;

      //error => Khi mà chạy b ị lỗi thì các variabel bị rollback lại, khi mà đã chạy qua dòng nào thì sẽ tốn gas từng nấy
      // dùng require để quăng lỗi ra.

     
   }

    modifier OnlyAdmin(uint foo){
   require(msg.sender == Admin, "only admin can call this funtion!");

      _; //Gọi xong hàm modifier thì sẽ phải sài dấu này để tiếp tục chạy xuống các hàm dưới
   } 


    // Nhiều require quá thì sẽ sử dụng modifier

   modifier CheckA(uint test){
      require(a == 8, "a need to be 8");

      _; //Gọi xong hàm modifier thì sẽ phải sài dấu này để tiếp tục chạy xuống các hàm dưới
   }   

    modifier CheckB(uint foo){
      require(a == 8, "a need to be 8");

      _; //Gọi xong hàm modifier thì sẽ phải sài dấu này để tiếp tục chạy xuống các hàm dưới
   } 
}