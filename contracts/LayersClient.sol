// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Layers.sol";

abstract contract LayersClient {
  address private contractCallbackAddress;
  bytes4 private startedCallbackFunctionSignature;
  bytes4 private successCallbackFunctionSignature;
  bytes4 private failureCallbackFunctionSignature;


  function initializeLayerCallbacks(
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) internal {
    contractCallbackAddress = _contractCallbackAddress;
    startedCallbackFunctionSignature = _startedCallbackFunctionSignature;
    successCallbackFunctionSignature = _successCallbackFunctionSignature;
    failureCallbackFunctionSignature = _failureCallbackFunctionSignature;
  }


  function createLayer() internal pure returns (Layers.Layer memory) {
    // require ...

    Layers.Layer memory created;

    created.contractCallbackAddress = contractCallbackAddress;
    created.startedCallbackFunctionSignature = startedCallbackFunctionSignature;
    created.successCallbackFunctionSignature = successCallbackFunctionSignature;
    created.failureCallbackFunctionSignature = failureCallbackFunctionSignature;

    return created;
  }
}
