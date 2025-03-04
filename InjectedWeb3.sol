// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.26;

contract InjectedWeb3{

    string public mystr= "Usama";

    function updateStr(string memory _newstr) public payable  {

        if(msg.value == 1 ether){
        mystr = _newstr;
        }
        

    }
}