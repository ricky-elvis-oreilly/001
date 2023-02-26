// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Layers.sol";

library Settings {
  struct SettingToMakeATransfer {
    string label;
    uint256 indexref;

    uint256 amountMin;
    uint256 amountMax;

    uint256 numLayers;
    mapping (uint256 => Layers.Layer) Layers;
  }

  struct SettingToMakeAWithdrawal {
    string label;
    uint256 indexref;

    uint256 amountMin;
    uint256 amountMax;
  }
}
