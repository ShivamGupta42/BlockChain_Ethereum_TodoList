pragma solidity ^0.5.0;

contract TodoList{

   //state variable 
   uint public taskCount = 0;

   struct Task {
       uint id;
       string content;
       bool completed;
   }

   mapping(uint => Task) public tasks;

   function createTask(string memory _content) public{
     taskCount++;
     tasks[taskCount]=Task(taskCount, _content,false);
   }

   constructor() public {
       createTask("Create a blockchain project");
       createTask("Implement blockchain in an actual enterprise project");
   }

}