pragma solidity >= 0.5.0 <0.7.0;

import "./math.sol";

contract MyContract {
    uint256 public value;
    
    function calculation(uint _value1, uint _value2) public{
        value = Math.divide(_value1, _value2);
    }
}
