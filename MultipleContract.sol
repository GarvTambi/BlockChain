pragma solidity>=0.5.0 < 0.7.0;

contract ERC20Token {
    string public name;
    mapping(address => uint) public balances;   // way to track a token and basically all this is going to do track the person balance and it also called balance
    
    function mint() public {   // mint is those who create the coin
        balances[tx.origin] ++;   // it as always the person who originate transaction
    }
}

contract MyContract{
    
    
    address payable wallet;    // to send funds to the wallet
    address public token;  
    
    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }
    
    
    
    function() external payable{    //fallback function
        buyToken();
    }
    
    function buyToken() public payable {       //payablre is a modifier which is used to send the ether without it is not possible
        ERC20Token(address(token)).mint();
        wallet.transfer(msg.value);
    }
}


// ERC20Token is used to call mint function 


// public is called inside as wellas outside the contract but external is called outside the contract



// What if both contracts are not in the same file.sol 

// I didn't see a transfer function, but I believe you always need to specify a visibility modifier in Solidity for functions. Variables are private by
// default. If contracts are not in the same file, you use the import function 
// as explained here: https://solidity.readthedocs.io/en/v0.4.24/layout-of-source-files.html.