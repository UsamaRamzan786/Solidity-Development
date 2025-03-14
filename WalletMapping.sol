// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.26;

contract WalletMapping {
    mapping (address => uint256) public accountBalance;

    function deposit() public payable {
        accountBalance[msg.sender] += msg.value;
    }

    function getCurrentBalance() public view returns (uint256) {
        return address(this).balance;
    }


    function withdrawalToAddress(address payable _to) public {
       uint balance = accountBalance[msg.sender];
       accountBalance[msg.sender] = 0;
        _to.transfer(balance);
    }
}
