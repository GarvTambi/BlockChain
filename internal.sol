pragma solidity >=0.5.0 <0.7.0;    // the code is written in solidity language

contract MyContract {     // contract is used to store code as well organize data
    uint256 public peopleCount = 0;  // it is used to count the entry and it is array type so always start with 0
    mapping(uint => Person)public people;  //maooing is basically like an associate array so instead oh having an array ...uint-> key , person-> value
    
    struct Person {    //struct is basically for you to define your own data structures inside solidity
        uint _id;
        string _firstName;     
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {    //addperson is used to add the entry
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);     // to add in mapping we do this to put in mapping    ???????
       // the above line is interrelate people count and detail of the person
    }
    function incrementCount() internal{     //it ia an internal function
        peopleCount += 1;         // people count = people count +1 ...we do it to put this in mapping
    }
}