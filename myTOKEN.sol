// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.18;

contract MyToken {
    //This is public variables
    string public tokenName = "hitesh";
    string public tokenAbbrv = "hi";
    uint public supply = 1;
    // mapping variable here
    mapping(address => uint) public balances;

    // This is the mint function
    function mint(address _addr, uint _value) public {
        supply += _value;
        balances[_addr] += _value;
    }

    //This is the burn function
    function burn(address _addr, uint _value) public {
        if (balances[_addr] >= _value) {
            supply -= _value;
            balances[_addr] -= _value;
        }
    }
}
