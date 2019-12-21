pragma solidity >=0.5.0 < 0.7.0 ;   //code is return in solidity

 contract Emum {     //enum is a enumerated list that allows us to track of your known set list of things in our contracts
     enum State {Waiting,Ready,Active}          // list is started from 0,1,2.....
     State public state;      // visibility is public so all can access
     
     constructor() public {  
 //        state = State.Waiting;      //set state Waiting by default 
     }
     
     function activate() public {     // function to activate one of them in a enum list
         state = State.Active;       //in this by clicking activate ...Active is get active
     }
     function isActive() public view returns(bool){       //bool tells the true /false 
         return state == State.Active;    //it tells the state of the activate function in the list like if Waiting is active so it show state = 0
     }
 }