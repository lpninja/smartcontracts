pragma solidity 0.4.19;

// WARNING: not for production code
// WARNING: uint overflows without errors
contract CoffeeCoin {
    mapping(address => uint) public wallet;

    function chargeWallet() payable external {
        wallet[msg.sender] += msg.value;
    }

    // WARNING: transfer to wrong address is irreversible
    function transfer(address to, uint amount) external {
        require(wallet[msg.sender] >= amount);
        wallet[to] += amount;
        wallet[msg.sender] -= amount;
    }

    function convertTokensToETH() external {
        uint balance = wallet[msg.sender];
        require(balance > 0);

        wallet[msg.sender] = 0;
        msg.sender.transfer(balance);
    }
}
