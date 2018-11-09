pragma solidity ^0.4.24;
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
contract SampleToken is ERC20Detailed, ERC20, Ownable {
constructor(string name, string symbol, uint8 decimals, uint256 totalSupply)
ERC20Detailed(name, symbol, decimals)
public {
_mint(owner(), totalSupply * 10**uint(decimals));
}
}