pragma solidity ^0.4.19;
// WARNING: not for production code
// WARNING: uint overflows without errors

contract Dividends {
    address public addr1;
    address public addr2;

    event LogPayment(address addr, uint total, uint amount);

    function Dividends(address _addr1, address _addr2) public {
        addr1 = _addr1;
        addr2 = _addr2;
    }

    function () public payable {
        uint amount1 = (msg.value * 8) / 10;
        uint amount2 = msg.value - amount1;

        addr1.transfer(amount1);
        addr2.transfer(amount2);

        LogPayment(addr1, msg.value, amount1);
        LogPayment(addr2, msg.value, amount2);
    }

    function getBalance() public view returns (uint) {
        return this.balance;
    }
}
