pragma solidity >= 0.5.0 < 0.7.0;
 contract Timelock {
    //who can withdraw?
    // how much
    // when?
    address payable public beneficiary;  //beneficiary is the person that will receivwe the fund whenever they released  or withdrawer
    uint256 public releaseTime;
    
    constructor(address payable _beneficiary,uint256 _releaseTime) public{  //payable is important to receive the fund   // to store the ether
        require(_releaseTime > block.timestamp);   //block.timestamp is that when the block is formed it is used to compare wih the release time....
                                                              //we can also use now instead of block.timestamp
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }
    
    function release() public{    // to release the ether or withdraw function
        require(block.timestamp >= releaseTime);
        address(beneficiary).transfer(address(this).balance);  // this line means first check the balance and then transfer to the benificiary 
    }
 }