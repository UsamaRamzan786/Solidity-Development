// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.26;

contract AccountWallet {
    uint256 public accountBalance;

    function deposit() public payable {
        accountBalance += msg.value;
    }

    function getCurrentBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdrawal() public payable {
        address payable to = payable(msg.sender);

        to.transfer(getCurrentBalance());
    }

    function withdrawalToAddress(address payable _to) public {
        _to.transfer(getCurrentBalance());
    }
}
