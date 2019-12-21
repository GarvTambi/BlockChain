pragma solidity >=0.5.0 <0.7.0;   // the code is writen in solidity
contract MyContract{   // contract is used to store code as well organize data
    uint256 public peopleCount = 0;        // it is used to count the entry
    mapping (uint => Person) public people;   //mapping is basically like an associate array so instead oh having an array ...uint-> key , person-> value  
    
    address owner;   //address is a datatype inside the solidity   and owner is a state variable
    
    modifier onlyOwner(){   //we can add custom modifier in this contract so that oly owner can add person
        require(msg.sender == owner);   //msg is a global keyword in solidity which basically stands for the functin metadata that passed in and tells us the 
                                                      //account you know address who called function and compare with the owner.....and anything in require is true
                                                       //it passes and anything is in false it throws error.......also logic that owner is able to add person
        _;           //to complete the modifier we put this sign
    }
    
    struct Person{   //struct is basically for you to define your own data structures inside solidity
        uint _id;
        string _firstName;
        string _lastName;
    }

    constructor() public{
        owner = msg.sender;    //msg.sender is actuallythe account that deploy the smart contract
    }
    
    function addPerson(string memory _firstName ,string memory _lastName)public onlyOwner{    //addperson is used to add the entry  and publi onlyOwner is modifier
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);      // to add in mapping we do this to put in mapping    ???????
    }
    function incrementCount() internal {      //it is an internal function    visibility = internal
        peopleCount += 1;
    }
}



// public is modifier internal is also moifier