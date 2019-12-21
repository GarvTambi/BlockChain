pragma solidity>=0.5.0 < 0.7.0;
contract MyContract{
    
    mapping(address => uint) public balances;   // way to track a token and basically all this is going to do track the person balance and it also called balance
    address payable wallet;    // to send funds to the wallet
    
    constructor(address payable _wallet)public{
        wallet = _wallet;
    }
    
    function() external payable{    //fallback function
        buyToken();
    }
    
    function buyToken() public payable {       //payablre is a modifier which is used to send the ether without it is not possible
        //buy a buyToken
        balances[msg.sender] += 1;    //to increase the token by 1   //???
        // send ether to the wallet
        wallet.transfer(msg.value);
    }
}





// public is called inside as wellas outside the contract but external is called outside the contract
//

// Ques. What is the use of fallback function in solidity?
// Ans.  It is best practice to implement a simple Fallback function if you want your smart contract
//       to generally receive Ether from other contracts and wallets. The Fallback function enables a 
//       smart contract's inherent ability to act like a wallet.



// what is ICOs ?