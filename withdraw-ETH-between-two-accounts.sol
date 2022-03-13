// SPDX-License-Identifier: GPL-3.0 

pragma solidity ^0.8.12;

contract withdrawETH {
    function withdraw(address payable _addr, uint _amount) public payable{
        require(_amount > 0);
        require(_amount <= address(this).balance, "not enough ETH on your contract");
        _addr.transfer(_amount);
    }
}
