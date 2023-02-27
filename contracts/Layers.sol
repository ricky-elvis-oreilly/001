// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library Layers {
  struct Layer {
    bool isSeqSep;

    address contractCallbackAddress;

    bool isStarted;
    bytes4 startedCallbackFunctionSignature;

    bool isSuccess;
    bytes4 successCallbackFunctionSignature;

    bool isFailure;
    bytes4 failureCallbackFunctionSignature;
  }

  //?????????????????????????????????????????????????????????? 
  function exec(Layer memory self) public {
    execStarted(self);
  }

  function execStarted(Layer memory self) private {
    // !!! TODO check because could be vulnerable
    self.contractCallbackAddress.delegatecall(abi.encode(self.startedCallbackFunctionSignature));
  }

  function execSuccess(Layer memory self) private {
    //
  }

  function execFailure(Layer memory self) private {
    //
  }
}
