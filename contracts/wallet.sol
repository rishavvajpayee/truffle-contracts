// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }
    receive() external payable {}
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "The Person calling this Function should be the Owner of Contract"
        );
        _;
    }

    function withdraw(uint256 _amount) external onlyOwner {
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function transfer(address _address, uint256 _amount) external {
        require(
            address(this).balance > _amount,
            "The Amount you entered is More than your Contract Wallet's Balance"
        );
        payable(_address).transfer(_amount);
    }

    function getBalanceOfAccount(address _address)
        external
        view
        returns (uint256)
    {
        return address(_address).balance;
    }
}
