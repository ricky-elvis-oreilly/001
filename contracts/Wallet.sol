// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./SettingsClient.sol";
import "./LayersClient.sol";

contract Wallet is SettingsClient, LayersClient {
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


  function test() public {
    Settings.SettingToMakeATransfer storage setting0 = createSettingToMakeATransfer();

    setAmounts(true, false, setting0.indexref, 0, 100);

    Layers.Layer memory layerSet0Lay0 = createLayer();

    addLayer();

    /*
    Settings.SettingToMakeAWithdrawal storage setting1 = createSettingToMakeAWithdrawal();
    setAmounts(false, true, setting1.indexref, 333, 444);
    */
  }
}
