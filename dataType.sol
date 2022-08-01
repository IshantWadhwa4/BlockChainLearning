pragma solidity ^ 0.8.0;

contract variables {
uint8 age;

string name;

bool IsEmployeed;

function AddMyDetails(uint8 _age, string memory _name, bool _employeed) public {
    age=_age;
    name=_name;
    IsEmployeed =_employeed;
}

function ReadMyDetails() public view returns(uint8, string memory, bool){
    return (age, name, IsEmployeed);
}

}

contract enumSample {

    enum carColor {red, white, black}

    carColor _VivekCar;

    function setCarColor() public {
        _VivekCar= carColor.red;
    }

    function getCarColor() public view returns(carColor){
        return _VivekCar;
    }
}

contract structSample {
    struct person {
        string name;
        uint8 age;
    }
    person _vivek;
    function SetDetails(string memory _name, uint8 _age ) public{
        _vivek.name=_name;
        _vivek.age=_age;
    }
    function GetDetails() public view returns(string memory, uint8){
        return (_vivek.name, _vivek.age);
    }
}

contract participants {
    struct Attendee {
        string name;
        uint8 age;
        string courseEnrolled;
        uint phoneNo;
    }
    // 1 --> Vivek, 39, Blockchain, 1234567890
    // 2 --> Akash, 35, Blockchain, 8687675656
    mapping (uint8 => Attendee) Participants;
    function addParticipant(uint8 _key, string memory _name, uint8 _age, string memory _course, uint _phone) public{
        Participants[_key].name=_name;
        Participants[_key].age=_age;
        Participants[_key].courseEnrolled=_course;
        Participants[_key].phoneNo=_phone;
    }
    function readParticipant(uint8 _key) public view returns(string memory, uint8, string memory ) {
        return (Participants[_key].name, Participants[_key].age, Participants[_key].courseEnrolled);
    }
}

contract money {
    // Vivek = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    // deal= 10eth
address Varun= 0xdD870fA1b7C4700F2BD7f44238821C26f7392148;
function getMoney() public payable{}
function checkContractBalance() public view returns(uint){
    return address(this).balance;
}
function transferMoney() public{
    payable(Varun).transfer(2 ether);
}
}


contract WinLottery {
    mapping (uint => address) inputs;

    function getMoney() public payable{}

    function checkContractBalance() public view returns(uint){
    return address(this).balance;
    }

    function buyLottery(uint _lotteryNumber,address _address) public {
        inputs[_lotteryNumber] = _address;
    }  

    function winner(uint _lotteryNumber) public{
        payable(inputs[_lotteryNumber]).transfer(address(this).balance);
    }
}
