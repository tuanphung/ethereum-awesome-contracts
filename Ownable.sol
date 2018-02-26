pragma solidity ^0.4.20;

contract Ownable {
    address private _owner;

    function Ownable() public {
        _owner = msg.sender;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        _owner = newOwner;
    }

    function owner() public constant returns (address) {
        return _owner;
    }

    modifier onlyOwner {
        require(msg.sender == _owner);
        _;
    }
}
