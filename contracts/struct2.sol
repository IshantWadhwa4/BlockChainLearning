// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// if i have to store multiplt values for a entity(person,thing,place,etc..) we use struct

contract SampleStruct{
    //enum tournamnet_type {one_vs_two,one_vs_two_quick,one_vs_four,three_vs_four}
    
    struct gameTournamnet{
        string id;
        uint efee;
        string tournament_type;
        uint rake;
    }
    mapping (string => gameTournamnet)  tournaments;
    
    function startTournamnet(string memory _id,uint _efee, string memory _tt, uint _rake) public {
        tournaments[_id].id = _id;
        tournaments[_id].efee = _efee;
        tournaments[_id].tournament_type = _tt;
        tournaments[_id].rake= _rake;
    }

    function getTournamnet(string memory _id) public view returns(string memory, uint,string memory,uint){
        return(tournaments[_id].id,tournaments[_id].efee,tournaments[_id].tournament_type,tournaments[_id].rake);
    } 

}
