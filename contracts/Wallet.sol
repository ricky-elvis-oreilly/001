// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./SettingsClient.sol";

contract Wallet is SettingsClient {
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


  event Test(
    string label,
    uint256 ref,
    uint256 amountMin,
    uint256 amountMax
  );

  function test() public {
    Settings.SettingToMakeATransfer storage setting0 = createSettingToMakeATransfer();

    setAmounts(true, false, setting0.indexref, 0, 100);

    emit Test(
      setting0.label,
      setting0.indexref,
      setting0.amountMin,
      setting0.amountMax
    );

    Settings.SettingToMakeAWithdrawal storage setting1 = createSettingToMakeAWithdrawal();

    setAmounts(false, true, setting1.indexref, 333, 444);

    emit Test(
      setting1.label,
      setting1.indexref,
      setting1.amountMin,
      setting1.amountMax
    );

    emit Test(
      setting0.label,
      setting0.indexref,
      setting0.amountMin,
      setting0.amountMax
    );
  }
}
