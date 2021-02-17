// SPDX-License-Identifier: Apache-2.0
/*

  Copyright 2020 ZeroEx Intl.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

pragma solidity ^0.6.5;
pragma experimental ABIEncoderV2;

import "./features/interfaces/IOwnableFeature.sol";
import "./features/interfaces/ISimpleFunctionRegistryFeature.sol";
import "./features/interfaces/ITokenSpenderFeature.sol";
import "./features/interfaces/ITransformERC20Feature.sol";
import "./features/interfaces/IMetaTransactionsFeature.sol";
import "./features/interfaces/IUniswapFeature.sol";
import "./features/interfaces/ILiquidityProviderFeature.sol";
import "./features/interfaces/INativeOrdersFeature.sol";
import "./features/interfaces/IBatchFillNativeOrdersFeature.sol";


/// @dev Interface for a fully featured Exchange Proxy.
interface IZeroEx is
    IOwnableFeature,
    ISimpleFunctionRegistryFeature,
    ITokenSpenderFeature,
    ITransformERC20Feature,
    IMetaTransactionsFeature,
    IUniswapFeature,
    ILiquidityProviderFeature,
    INativeOrdersFeature,
    IBatchFillNativeOrdersFeature
{
    // solhint-disable state-visibility

    /// @dev Fallback for just receiving ether.
    receive() external payable;
}
