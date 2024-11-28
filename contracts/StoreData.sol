// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract StoreValue{
     uint private value;

    function set(uint v) public{
        value = v;
    }

    function get() public view returns(uint){
        return value;
    }
}