pragma solidity ^0.6.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
//=import "../../GSN/Context.sol";
//=import "./IERC20.sol";
//=import "../../math/SafeMath.sol";\


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20Detailed.sol";
//=import "./IERC20.sol";


contract Token is ERC20, ERC20Detailed {


 constructor () public ERC20Detailed("NebeToken", "NEBE", 18) {
 _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
 }


//transfer()
//https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
//"ERC20: transfer amount exceeds allowance"
//_approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, "ERC20: transfer amount exceeds allowance"));

}