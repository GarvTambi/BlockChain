pragma solidity>=0.5.0 < 0.7.0;
contract MyContract{
    
    mapping(address => uint256) public balances;   // way to track a token and basically all this is going to do track the person balance and it also called balance
          // mapping is a associative array
    address payable wallet;    // to send funds to the wallet
    
    constructor(address payable _wallet)public{
        wallet = _wallet;
    }
    
    function buyToken() public payable {       //payable is a modifier which allow to send the ether without it is not possible
        //buy a buyToken
        balances[msg.sender] += 1;    //to increase the token by 1
        // send ether to the wallet
        wallet.transfer(msg.value);
    }
}





