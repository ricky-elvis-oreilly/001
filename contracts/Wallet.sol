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
    // call this somewhere on deploy
    initializeLayerCallbacks();

    Settings.SettingToMakeATransfer storage setting0 = createSettingToMakeATransfer();

    setAmounts(
      true,
      false,
      setting0.indexref,
      0,
      100
    );

    Layers.Layer memory layerSet0Lay0 = createLayer();
    // callbacks same ...

    addLayer(
      true,
      false,
      setting0.indexref,
      layerSet0Lay0
    );
  }
}
