pragma solidity ^0.6.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";


contract  {
 // Include the SafeMath library inside this contract
 using SafeMath for uint;


 // uint is aliase for uint256 (unsigned integer ranging from 0 to 2 ** 256 - 1)
 uint public max = 2**256 - 1;
 // Variables initialize to their default value, 0 in this case.
 uint public min;


 /*
 without SafeMath >>
 */


 // Arithmetic overflow does not throw any error.
 // returns 0 which is min
 // (2 ** 256 - 1)+1
 function overflow() public view returns (uint) {
 return max + 1;
 }


 // 0 - 1 return 2 ** 256 - 1 which is max
 // (0-1)
 function underflow() public view returns (uint) {
 return min - 1;
 }

 /*
 with SafeMath >>
 */

 // SafeMath.add throws an error when an integer overflows.
 // (2 ** 256 - 1)+1
 function safeAdd(uint y) public view returns (uint) {
 return max.add(y);
 }


 // SafeMath.sub throws an error when an integer underflows.
 // (0-1)
 function safeSub(uint y) public view returns (uint) {
 return min.sub(y);
 }
}