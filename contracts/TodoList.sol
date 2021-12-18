pragma solidity ^0.5.0;

contract TodoList{
    // state variable to get the no of tasks created.
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool isCompleted;
    }

    constructor() public{
        createTask("Check out this todo App created using ether");
    }

    mapping(uint => Task) public tasks;

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    } 
}