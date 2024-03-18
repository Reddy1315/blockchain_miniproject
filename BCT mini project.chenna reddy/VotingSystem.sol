
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//by chenna reddy
contract VotingSystem{
    //Array to store candidate names
    string[5] public candidates;
    //Mapping to store the number of votes for each candidate
    mapping(string=>uint256)private candidateVotes;
    //Event to notify when a vote is cast
    event VoteCast(string candidate,uint256 newVoteCount);
    //Constructor to initialize candidate names
    constructor(){
        candidates[0]="reddy";
        candidates[1]="bharath";
        candidates[2]="vamshi";
        candidates[3]="akash";
        candidates[4]="chenna";
        
    }
    //function to cast a vote for a candidate
    function vote(uint8 candidateIndex) public {
        require(candidateIndex<5,"Invaild candidate index");
        
        string memory selectedCandidate=candidates[candidateIndex];
        candidateVotes[selectedCandidate]++;
        emit VoteCast(selectedCandidate, candidateVotes[selectedCandidate]);
    }
    //Function to get all candidate names
    function getCandidateNames()public view  returns (string[5] memory){
        return candidates;
    }
}
