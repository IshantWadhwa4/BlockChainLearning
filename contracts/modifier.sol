// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract game_roles{
    // we have owner of SC which is only allow to use some functions
    address owner;
    struct Tournament{
        uint8 id;
        uint64 efee;
        uint8 numPlayers;
    }
    Tournament[] list_tournaments;

    //mapping(address => Tournament) tournaments;

    constructor(){
        owner = msg.sender;
    }

    modifier OwnerOwns(){
        require(owner == msg.sender);
        _;
    } 

    function createTournament(uint8 _id,uint64 _efee,uint8 _numplayers) public OwnerOwns{
        Tournament memory _tournament;
        _tournament.id = _id;
        _tournament.efee = _efee;
        _tournament.numPlayers = _numplayers;
        list_tournaments.push(_tournament);
    }

    function getTournaments(uint8 _id) public view returns(uint64, uint8){
        return(list_tournaments[_id].efee, list_tournaments[_id].numPlayers);
    }




}