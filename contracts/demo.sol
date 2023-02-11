// SPDX-License-Identifier: Unlicense

pragma solidity >=0.8.17;

contract demo {
    uint256 number;

    function set(uint256 _num) public {
        number = _num;
    }

    function get() public view returns (uint256) {
        return number;
    }
}
