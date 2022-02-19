// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './Force.sol';

contract ForceAttack {
    Force public forceContract;

    constructor(_forceAddr) {
        force = Force(_forceAddr);
    }


}