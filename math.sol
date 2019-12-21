pragma solidity >= 0.5.0 <0.7.0;

library Math{  //library is basically a way to organize code that can be reused in multiple places inside project..library is DRY code Don't repeat yourself
    function divide(uint256 a, uint256 b) internal pure returns(uint256){
        require(b>0);
        uint256 c = a/b;
        return c;
    }
}