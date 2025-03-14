// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.26;

contract ExceptionRequire{

mapping (address => uint) public _balance;

function deposit() public  payable {

    _balance[msg.sender] += msg.value;

}
function withdraw(address payable  _to, uint amount) public  {
    
     require(amount <=_balance[msg.sender], "insufficient balance");
      _balance[msg.sender ] -= amount;
      _to.transfer(amount);
 
}

}