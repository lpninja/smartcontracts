pragma solidity ^0.8.3;
// WARNING: not for production code
// WARNING: uint overflows without errors and not battle tested

contract Wallet {
    address public farmer1 = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
    address public farmer2 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
  
  event Deposit(address sender, uint amount);
 
  function pay() public payable {
        uint amount = msg.value / 2;
    
        farmer1.transfer(amount);
        farmer2.transfer(amount);
    
        Deposit(msg.sender, msg.value);
  }
}
