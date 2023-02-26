// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library Settings {
  struct SettingToMakeATransfer {
    string label;

    uint256 amountMin;
    uint256 amountMax;
  }

  function setAmounts(
    SettingToMakeATransfer memory self,
    uint256 _amountMin,
    uint256 _amountMax
  ) internal pure {
    self.amountMin = _amountMin;
    self.amountMax = _amountMax;
  }


  struct SettingToMakeAWithdrawal {
    string label;

    uint256 amountMin;
    uint256 amountMax;
  }

  function setAmounts(
    SettingToMakeAWithdrawal memory self,
    uint256 _amountMin,
    uint256 _amountMax
  ) internal pure {
    self.amountMin = _amountMin;
    self.amountMax = _amountMax;
  }
}
