// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./SettingsClient.sol";

contract Wallet is SettingsClient {
  uint256 numSettingsToMakeATransfer;
  mapping (uint256 => Settings.SettingToMakeATransfer) SettingToMakeATransfer;


  event HandleLayerStarted();
  event HandleLayerSuccess();
  event HandleLayerFailure();


  function handleLayerStarted() public {
    emit HandleLayerStarted();
  }

  function handleLayerSuccess() public {
    emit HandleLayerSuccess();
  }

  function handleLayerFailure() public {
    emit HandleLayerFailure();
  }


  event Test(string label);
  function test() public {
    SettingToMakeATransfer memory settingTransfer = createSettingToMakeATransfer();
    SettingToMakeAWithdrawal memory settingWithdrawal = createSettingToMakeAWithdrawal();
    emit Test(settingTransfer.label);
    emit Test(settingWithdrawal.label);
  }
}
