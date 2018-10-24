pragma solidity ^0.4.19;
// WARNING: not for production code
// WARNING: uint overflows without errors and not battle tested yet.

contract dividend {
    
    uint totalshares = 100;
    mapping(address => unit) public shares;
    mapping(address => unit) public withdrawn;
    uint totalout = 0;
    
    function release(address account) public {
        unit totalReceived = address(this).balance + totalout
        unit payment = shares[account]/totalshares *totalReceived - withdrawn[account]
        account.transfer(payment)
    }
}
