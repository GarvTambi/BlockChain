pragma solidity >= 0.5.0 < 0.7.0;
contract Escrow {  //escrow is basically something that solves the issue of trust in final just like a third party
                    //transaction by introducing a third party that facilates the transaction
    address agent;  //address is datatype and agent is variable  ...agent is person who officiate the transacyions and al the permission given
    mapping(address => uint256) public deposits;
    
    modifier onlyAgent(){  //function modifier is going to be something we can add to a function that basically get evaluated whenever the function call
        require(msg.sender ==agent);    //msg is global variable that has some value inside it
        _;
    }
    
    constructor () public {   // constructor is run when the contract is deployed
        agent = msg.sender;  //msg.sende is person who deployed the contract
    
    }
    
    function deposit(address payee) public onlyAgent payable{  //we wnt to use for any senerio so address as payee
        uint256 amount = msg.value;   // payee is the function 
        deposits[payee] = deposits[payee] + amount;
    }
    
    function withdraw(address payable payee)public onlyAgent {       //withdraw the money by the agent that is deposited by the payee
        uint256 payment = deposits[payee];   // that the amount that is deposit by the payee
        deposits[payee] = 0;                //after withdraw the payment the amount left is 0
        payee.transfer(payment);    //to send thee payement to the payee
    }
}


