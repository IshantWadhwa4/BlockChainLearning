pragma solidity ^0.8.0;

contract events{
    // here we will define events used to log the data
    // if something happens how would you know
    // when some one register to a tournamnet
    address owner;
    constructor(){
        owner = msg.sender;
    } 
    
     modifier ownersFunctions{
         require(owner == msg.sender);
         _;
     }

    struct Tournamnet {
        string tournamnetName;
        uint8 id;
        uint16 efee;
    }
   
    mapping (uint8 => Tournamnet) tournamnets;
    mapping (address => uint8) register;

    event registertion(address,uint);

    function  createTournament(string memory _name, uint8 _id, uint16 _efee) public ownersFunctions{
        Tournamnet memory _tournamnet;
        _tournamnet.tournamnetName = _name;
        _tournamnet.id = _id;
        _tournamnet.efee = _efee;
        tournamnets[_id] = _tournamnet;
    }

    function registerTournament(uint8 _Tid) public {
        register[msg.sender] = _Tid;
        emit registertion(msg.sender, _Tid);
    }

    function getTournament(uint8 _id) public view returns(string memory,uint16){
        return (tournamnets[_id].tournamnetName,tournamnets[_id].efee);
    }

    function getRegesterTournamnets() public view returns(uint8){
        return(register[msg.sender]);
    }



}