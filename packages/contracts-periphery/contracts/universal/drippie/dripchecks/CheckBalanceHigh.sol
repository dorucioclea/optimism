// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import { IDripCheck } from "../IDripCheck.sol";

contract CheckBalanceHigh is IDripCheck {
    event _EventToExposeStructInABI__Params(Params params);
    struct Params {
        address target;
        uint256 threshold;
    }

    function check(bytes memory _params) external view returns (bool) {
        Params memory params = abi.decode(_params, (Params));
        return params.target.balance > params.threshold;
    }
}
