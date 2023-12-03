// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

contract Control{
                bool public IsTrue = true;
                uint[] myArray; //storage array

           
                function DoSomeThing() external { //private chỉ gọi được hàm trong contract
                                if(IsTrue == true){
                                                //do some thing
                                }else{

                                }
                }

                function DoLoop() external {
                                for(uint i =0; i < 10; i++){
                                                
                                }
                }

                function DoWhile() external {
                                bool isOk = true;

                                while(isOk){
                                                if(isOk){
                                                                isOk = false;
                                                }
                                }
                }

                // Nên hạn chế sài vòng lặp, 1 block sẽ có 1 gas limit. Nếu vượt quá gas thì sẽ ko thực hiện 1 transaction được

                //storage array: public 
                function DoSome() external {
                                // storage array sẽ có phương thức push.
                                myArray.push(2);
                                myArray.push(5);
                                myArray[1];
                                myArray[0] = 9;

                                delete myArray[0]; //Không giảm độ dài của array => reset cái giá trị đó về giá trị mặc định của kiểu dữ liệu

                                for (uint i = 0; i < myArray.length; i++) {
                                                myArray[i] = 1;
                                }
                }

                function bar() external {
                                uint[] memory newArray = new uint[](10); // Khai bao memory array bắt buộc phải khai báo độ dài, không có phương thức push, không được lưu trên blockchain
                                // Phải khai báo ở trong function
                                //fixed length
                                // Kiểu khai báo hơi dài dòng

                                newArray[0] = 4;
                                newArray[1] = 5;
                                newArray[9] = 5;

                                delete newArray[0];
                }


                // Nếu sử dụng array như là 1 parameter của 1 hàm mà hàm đó là externer thì cần phải sài là calldata
                function fooCalldata(uint[] calldata myArgs) external {}

                //Nếu như lầ mấy kiểu khác: public, internal thì sẽ sử dụng từ khoá là memory
                function fooMemory(uint[] memory myArgs) external {}


                //OBJECT
                mapping(address => uint) balances; // Smart contract sẽ lưu số dư người dùng là uint, map address này có số dư là bao nhiêu
                mapping(address => mapping(address => bool)) apreoved; // Nested: map 1 address của thằng chủ, và địa chỉ trong là của thằng sài, và bool này là có được sài hay không
                                                                                // Nested 1 người sài tiền của mình có được hay không. mapping 2 tấng
                                                                                //để truy cập được thì cần phải truy cập 2 key

                function fooo() external {
                                balances[msg.sender] = 100;
                                balances[msg.sender] =200;

                                balances[msg.sender];


                                delete balances[msg.sender];

                                // Lưu ý: default value
                                // balances[KeyNotExitst] => false;

                                //nested mappings

                                //approved[msg.sender][spender] //true hay false
                }

                //struct
                struct Player {
                                uint ID;
                                address addr;
                                string name;

                              
                }

                Player[] players;
                mapping(address => Player) ListOfPlayer;

                function player() external {
                                            Player memory player1 = Player(1, msg.sender, "");
                                            Player memory player2 = Player(1, msg.sender, "");    

                                                player1.name = "hieu";

                                                delete player2;

                                                players.push(Player({ID: 1,addr: msg.sender, name: "hieu"}));

                                                ListOfPlayer[msg.sender] = player1;
                                }

             
               
}

