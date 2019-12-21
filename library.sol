pragma solidity >= 0.5.0 <0.7.0;

library Math{  //library is basically a way to organize code that can be reused in multiple places inside project..library is DRY code Don't repeat yourself
    function divide(uint256 a, uint256 b) internal pure returns(uint256){
        require(b>0);
        uint256 c = a/b;
        return c;
    }
}

contract MyContract {
    uint256 public value;
    
    function calculation(uint _value1, uint _value2) public{
        value = Math.divide(_value1, _value2);
    }
}





//we always deploy as well compile My Contract code bwecause math is include within MyContract code