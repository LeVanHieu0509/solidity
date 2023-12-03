// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

contract EventPractice{
                   //event: smart contract sẽ đẩy ra bên ngoài để cho bên thứ 3 bắt được sự kiện đó để có thể làm gì đó giống như api
                // đổi 200 token để đổi 200 điểm trong game

                // Tạo 1 event gửi 200 token vào smart contract thì smart này đã lấy được 200 token rồi thì contract sẽ tạo ra 1 event
                // Và có bot trick được event và sẽ update database để cộng điểm cho người ta


                 event deposit (address indexed from, uint amount); //indexed: lọc theo địa chỉ của người gửi

                function depositTranfer (uint amount, uint Dtype) external {
                                //transfer token
                                emit deposit(msg.sender, amount);
                }



                //Gửi và nhận etherium

                function SendEther (address payable to, uint amount) external {
                                to.transfer(amount); //
                }

                //Khi gọi hàm buộc phải chuyển tiền thì mới gọi hàm
                // Có khả năng nhận được therium khi mà người ta gọi tới nó

                function BuySth() external payable{
                                msg.value; //check xem sender đã gửi bao nhiêu ether
                                address(this).balance; //check được số dư của smart contract này
                }

                // Khi mà nhận tiền vô smart contract và mình muốn thực hiện 1 hành động nào đó
                // Smart contract có khả năng nhận ether, khi mà khách gửi ether thì sẽ nhảy vào hàm này để xử lý
                receive() external payable{

                }
}