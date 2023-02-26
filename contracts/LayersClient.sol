// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Layers.sol";

abstract contract LayersClient {
  address private constant CONTRACT_CALLBACK_ADDRESS;
  bytes4 private constant STARTED_CALLBACK_FUNCTION_SIGNATURE;
  bytes4 private constant SUCCESS_CALLBACK_FUNCTION_SIGNATURE;
  bytes4 private constant FAILURE_CALLBACK_FUNCTION_SIGNATURE;


  function initializeLayerCallbacks(
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) internal pure {
    CONTRACT_CALLBACK_ADDRESS = _contractCallbackAddress;
    STARTED_CALLBACK_FUNCTION_SIGNATURE = _startedCallbackFunctionSignature;
    SUCCESS_CALLBACK_FUNCTION_SIGNATURE = _successCallbackFunctionSignature;
    FAILURE_CALLBACK_FUNCTION_SIGNATURE = _failureCallbackFunctionSignature;
  }


  function createLayer() internal pure returns (Layers.Layer memory) {
    Layers.Layer memory created;

    return created;
  }
}




/*
abstract contract LayersClient {
  using Layers for Layers.LayerAPI;


  function createLayerWithoutCallbacks() internal pure returns (Layers.Layer memory) {
    Layers.Layer memory layerAPI;

    return layer.init(
    );
  }

  function createLayer(
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) internal pure returns (Layers.LayerAPI memory) {
    Layers.Layer memory layer;

    return layer.init(
      _contractCallbackAddress,
      _startedCallbackFunctionSignature,
      _successCallbackFunctionSignature,
      _failureCallbackFunctionSignature
    );
  }
}
*/
