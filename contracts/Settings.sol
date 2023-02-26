// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library Settings {
  struct SettingToMakeATransfer {
    string label;
    uint256 indexref;

    uint256 amountMin;
    uint256 amountMax;
  }

  struct SettingToMakeAWithdrawal {
    string label;
    uint256 indexref;

    uint256 amountMin;
    uint256 amountMax;
  }
}
