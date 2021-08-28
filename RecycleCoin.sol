
pragma solidity ^0.8.4;

contract recycleCoin{
    address public minter; // state variable,, 
    // function minter() external view returns (address) { 
    // can't access from outside of contract

    mapping (address => uint) public balances;

    event Sent (address from, address to, uint amount);

    constructor() {
        minter = msg.sender;
    }

    function mint(address reciever, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    error InsufficientBalances(uint requested, uint available);

    function send(address reciever, uint amount) public {
        if(amount > balances[msg.sender])
        revert insufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });

        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
