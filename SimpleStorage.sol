// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private storedData;

    event DataStored(uint256 data);

    function set(uint256 _data) public {
        storedData = _data;
        emit DataStored(_data);
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}