pragma solidity >=0.5.0 <0.7.0;    // the code is written in solidity language

contract MyContract {     // contract is used to store code as well organize data
    Person[] public people;      //person[] is array of datatype struct.....people is state variable.....
    
    uint public peopleCount;  // it is used to count the entry and it is array type so always start with 0
    
    struct Person {    //struct is basically for you to define your own data structures inside solidity
        string _firstName;     
        string _lastName;
    }
    
    function addPerson(string memory  _firstName, string memory _lastName) public {    //addperson is used to add the entry
        people.push(Person(_firstName, _lastName));       //push is used to add
    }
}





//Q.  What is the point of that "memory" word after each string :/?
//Ans. Without the memory keyword, Solidity tries to declare variables in storage.(State variables are permanently stored 
//     in contract storage. This means they're written to the Ethereum blockchain. Think of them like writing to a DB.)Memory   
//     is used to hold temporary values. It is erased between (external) function calls and is cheaper to use. or to specify the location of attributes.