import "./Ownable.sol";
pragma solidity >=0.4.22 <0.7.0;

contract Destroyable is Ownable {

  function destroy() public onlyOwner {
    address payable receiver = msg.sender;
    selfdestruct(receiver);
  }
}