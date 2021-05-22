pragma solidity ^0.8.3;

import "hardhat/console.sol";

contract Token {
    string public name = "The OZALP";
    string public symbol = "SDNR";
    uint public totalSupply = 100000;
    mapping(address => uint) balances;

    constructor(){
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Atacak Jeton Kalmadi");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }
}
