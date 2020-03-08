pragma solidity >=0.4.22 <0.7.0;

contract MemoryAndStorage {
    mapping(uint256 => User) users;

    struct User {
        uint256 id;
        uint256 balance;
    }

    function addUser(uint256 id, uint256 balance) public {
        users[id] = User(id, balance);
    }

    function updateBalance(uint256 id, uint256 balance) public {
        //User storage user = users[id]; //20000 Paid for an SSTORE operation when the storage value is set to non-zero from zero
        users[id].balance = balance; // -//-
    }

    function getBalance(uint256 id) public view returns (uint256) {
        return users[id].balance;
    }

}
