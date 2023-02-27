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
    /**************************************************************************/
    initializeLayerCallbacks(
      address(this),
      this.handleLayerStarted.selector,
      this.handleLayerSuccess.selector,
      this.handleLayerFailure.selector
    );
    /**************************************************************************/

    Settings.SettingToMakeATransfer storage setting0 = createSettingToMakeATransfer();

    Layers.Layer memory layerSet0Lay0 = createLayer();
    Layers.Layer memory layerSet0Lay1 = createLayer();
    Layers.Layer memory layerSet0Lay2 = createLayer();

    setAmounts(true, false, setting0.indexref, 0, 100);

    addLayer(true, false, setting0.indexref, layerSet0Lay0);
    addLayer(true, false, setting0.indexref, layerSet0Lay1);
    addLayer(true, false, setting0.indexref, layerSet0Lay2);

    execLayers(true, false, setting0.indexref);
  }
}
