// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {DataTypes} from './DataTypes.sol';

interface IPoolV3 {
  function withdraw(
    address asset,
    uint256 amount,
    address to
  ) external returns (uint256);

  function supply(
    address asset,
    uint256 amount,
    address onBehalfOf,
    uint16 referralCode
  ) external;

  function getReservesList() external view returns (address[] memory);
	function getReserveData(address asset) external view returns (DataTypes.ReserveData memory);
}
