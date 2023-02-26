// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Settings.sol";

abstract contract SettingsClient {
  uint256 numSettingsToMakeATransfer;
  mapping (uint256 => Settings.SettingToMakeATransfer) SettingsToMakeATransfer;

  uint256 numSettingsToMakeAWithdrawal;
  mapping (uint256 => Settings.SettingToMakeAWithdrawal) SettingsToMakeAWithdrawal;


  function createSettingToMakeATransfer() internal returns (Settings.SettingToMakeATransfer storage) {
    Settings.SettingToMakeATransfer storage created = SettingsToMakeATransfer[numSettingsToMakeATransfer];

    created.indexref = numSettingsToMakeATransfer;

    numSettingsToMakeATransfer++;

    return created;
  }

  function createSettingToMakeAWithdrawal() internal returns (Settings.SettingToMakeAWithdrawal storage) {
    Settings.SettingToMakeAWithdrawal storage created = SettingsToMakeAWithdrawal[numSettingsToMakeAWithdrawal];

    created.indexref = numSettingsToMakeAWithdrawal;

    numSettingsToMakeAWithdrawal++;

    return created;
  }


  function setAmounts(
    bool _isSettingToMakeATransfer,
    bool _isSettingToMakeAWithdrawal,
    uint256 _indexref,
    uint256 _amountMin,
    uint256 _amountMax
  ) internal {
    if (_isSettingToMakeATransfer) {
      SettingsToMakeATransfer[_indexref].amountMin = _amountMin;
      SettingsToMakeATransfer[_indexref].amountMax = _amountMax;
    }

    if (_isSettingToMakeAWithdrawal) {
      SettingsToMakeAWithdrawal[_indexref].amountMin = _amountMin;
      SettingsToMakeAWithdrawal[_indexref].amountMax = _amountMax;
    }
  }

  function addLayer(
    bool _isSettingToMakeATransfer,
    bool _isSettingToMakeAWithdrawal,
    uint256 _indexref,
    Layers.Layer memory layer
  ) internal {
    if (_isSettingToMakeATransfer) {
      Settings.SettingToMakeATransfer storage setting = SettingsToMakeATransfer[_indexref];
      setting.layers[setting.numLayers] = layer;
      setting.numLayers++;
    }

    if (_isSettingToMakeAWithdrawal) {
      Settings.SettingToMakeAWithdrawal storage setting = SettingsToMakeAWithdrawal[_indexref];
      setting.layers[setting.numLayers] = layer;
      setting.numLayers++;
    }
  }
}
