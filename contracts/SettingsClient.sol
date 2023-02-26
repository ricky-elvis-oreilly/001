// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Settings.sol";

abstract contract SettingsClient {
  function createSettingToMakeATransfer() internal pure returns (Settings.SettingToMakeATransfer memory) {
    Settings.SettingToMakeATransfer memory settingToMakeATransfer;

    return settingToMakeATransfer;
  }

  function createSettingToMakeAWithdrawal() internal pure returns (Settings.SettingToMakeAWithdrawal memory) {
    Settings.SettingToMakeAWithdrawal memory settingToMakeAWithdrawal;

    return settingToMakeAWithdrawal;
  }
}
