// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./SettingsClient.sol";

contract Wallet is SettingsClient {
  using Settings for Settings.SettingToMakeATransfer;
  using Settings for Settings.SettingToMakeAWithdrawal;


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


  event Test(string label, uint256 amountMin, uint256 amountMax);

  function test() public {
    Settings.SettingToMakeATransfer memory settingTransfer = createSettingToMakeATransfer();
    settingTransfer.setAmounts(0, 100);
    emit Test(settingTransfer.label, settingTransfer.amountMin, settingTransfer.amountMax);

    Settings.SettingToMakeAWithdrawal memory settingWithdrawal = createSettingToMakeAWithdrawal();
    settingWithdrawal.setAmounts(333, 444);
    emit Test(settingWithdrawal.label, settingWithdrawal.amountMin, settingWithdrawal.amountMax);
  }
}
