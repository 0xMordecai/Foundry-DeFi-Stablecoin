// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// // 1. The total supply of DSC should be less than the total value of collateral
// // 2. Getter view functions should never revert

// import {Test} from "forge-std/Test.sol";
// import {console} from "forge-std/console.sol";
// import {StdInvariant} from "forge-std/StdInvariant.sol";
// import {DeployDSC} from "../../script/DeployDSC.s.sol";
// import {DSCEngine} from "../../src/DSCEngine.sol";
// import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
// import {HelperConfig} from "../../script/HelperConfig.s.sol";
// import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

// contract InvariantsTest is StdInvariant, Test {
//     DeployDSC deployer;
//     DSCEngine dsce;
//     DecentralizedStableCoin dsc;
//     HelperConfig config;
//     address weth;
//     address wbtc;

//     function setUp() public {
//         deployer = new DeployDSC();
//         (dsc, dsce, config) = deployer.run();
//         (, , weth, wbtc, ) = config.activeNetworkConfig();
//         targetContract(address(dsce));
//     }

//     function invariant_protocolMustHaveMoreCollateralValueThenTotalSupply()
//         public
//         view
//     {
//         uint256 totalSupply = dsc.totalSupply();
//         console.log("totalSupply: ", totalSupply);

//         uint256 totalWethDeposited = IERC20(weth).balanceOf(address(dsce));
//         uint256 totalWbtcDeposited = IERC20(wbtc).balanceOf(address(dsce));

//         uint256 wethValue = dsce.getUsdValue(weth, totalWethDeposited);
//         uint256 wbtcValue = dsce.getUsdValue(wbtc, totalWbtcDeposited);

//         console.log("wethValue: ", wethValue);
//         console.log("wbtcValue: ", wbtcValue);

//         assert(totalSupply <= wethValue + wbtcValue);
//     }
// }
