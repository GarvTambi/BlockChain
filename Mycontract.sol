pragma solidity >=0.4.0 <0.7.0;    // this programming is written in solidity 
//  pragma keyword is used to enable certain compiler features

contract SimpleStorage {     // contract are those who organize data and store code
    uint storedData;        // storedData is a state variable of typed unsigned integer
    
    constructor() public{    //constructor code is run when the contract is created       ????????? what is he use of constructor
        storedData = 67;
   }
    
    function set(uint x) public {     // set function is used to modify the value of variable  and visibilty = public so all can access the set function
        storedData = x;     // where storedData is state variable where as x is local variable
    }
    
    function get() public view returns (uint) {  // get function is used to retrive the value of variable and visibility = public
        return storedData;    // to return the value 
    }
}



// what is the difference between returns() and return ? 
// returns() is used to return the value where as return is used to stop execution.