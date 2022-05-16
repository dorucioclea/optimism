// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import { IDripCheck } from "../IDripCheck.sol";

interface IGelatoTreasury {
    function userTokenBalance(address _user, address _token) external view returns (uint256);
}

contract CheckGelatoLow is IDripCheck {
    event _EventToExposeStructInABI__Params(Params params);
    struct Params {
        address treasury;
        uint256 threshold;
        address recipient;
    }

    function check(bytes memory _params) external view returns (bool) {
        Params memory params = abi.decode(_params, (Params));
        return
            IGelatoTreasury(params.treasury).userTokenBalance(
                params.recipient,
                0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
            ) < params.threshold;
    }
}
